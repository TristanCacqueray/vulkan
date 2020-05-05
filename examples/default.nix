{ nixpkgsSrc ? builtins.fetchTarball
  "https://github.com/NixOS/nixpkgs/archive/dbacfa172f9a6399f180bcd0aef7998fdec0d55a.tar.gz"
, pkgs ? import nixpkgsSrc { }, compiler ? "ghc882", hoogle ? true }:

let
  src = ./.;

  compiler' = if compiler != null then
    compiler
  else
    "ghc" + pkgs.lib.concatStrings
    (pkgs.lib.splitVersion pkgs.haskellPackages.ghc.version);

  # Any overrides we require to the specified haskell package set
  haskellPackages = with pkgs.haskell.lib;
    pkgs.haskell.packages.${compiler'}.override {
      overrides = self: super:
        {
          autoapply = doHaddock (self.callCabal2nix "" (pkgs.fetchFromGitHub {
            owner = "expipiplus1";
            repo = "autoapply";
            rev = "ca6509a6c406417fe4aa614a81090755c899f02b";
            sha256 = "0w3ypr087s2s4fxwn2f6hb31hjrzamvrq76dp293syp8zsyvwna1";
          }) { });
          vulkan = let
            srcFilter = path: type:
              (baseNameOf path == "package.yaml")
              || pkgs.lib.hasInfix "/src" path;
          in doHaddock (disableLibraryProfiling (self.callCabal2nix "vulkan"
            (builtins.filterSource srcFilter ../.) {
              vulkan = pkgs.vulkan-loader;
            }));
          vulkan-utils = addExtraLibrary (doHaddock
            (disableLibraryProfiling (self.callCabal2nix "" ../utils { })))
            pkgs.vulkan-headers;
          VulkanMemoryAllocator = addExtraLibrary (doHaddock
            (disableLibraryProfiling
              (self.callCabal2nix "" ../VulkanMemoryAllocator { })))
            pkgs.vulkan-headers;

          #
          # Other packages
          #
          bytes = self.bytes_0_17;
          sdl2 = overrideSrc super.sdl2 {
            src = pkgs.fetchFromGitHub {
              owner = "haskell-game";
              repo = "sdl2";
              rev = "d10b2ae86ce3db58c5c011cbec6eccf69c2fd2f1";
              sha256 = "1qfjfrzc9yjg8ibgr0a7fly6fnd1f2yv731n7h1wjgz9vaa3q6wg";
            };
          };
          inline-c = self.inline-c_0_9_0_0;
        } // pkgs.lib.optionalAttrs hoogle {
          ghc = super.ghc // { withPackages = super.ghc.withHoogle; };
          ghcWithPackages = self.ghc.withPackages;
        };
    };

  # Any packages to appear in the environment provisioned by nix-shell
  extraEnvPackages = with pkgs; [ vulkan-validation-layers ];

  # Generate a haskell derivation using the cabal2nix tool on `package.yaml`
  drv = let
    fixes = drv:
      with pkgs.haskell.lib;
      addExtraLibrary (addBuildTool drv pkgs.glslang) pkgs.renderdoc;
    old = fixes (haskellPackages.callCabal2nix "" src { });
  in old // {
    # Insert the extra environment packages into the environment generated by
    # cabal2nix
    env = pkgs.lib.overrideDerivation old.env (attrs:
      {
        buildInputs = attrs.buildInputs ++ extraEnvPackages;
      } // pkgs.lib.optionalAttrs hoogle {
        shellHook = attrs.shellHook + ''
          export HIE_HOOGLE_DATABASE="$(cat $(${pkgs.which}/bin/which hoogle) | sed -n -e 's|.*--database \(.*\.hoo\).*|\1|p')"
        '';
      });
  };

in if pkgs.lib.inNixShell then drv.env else drv