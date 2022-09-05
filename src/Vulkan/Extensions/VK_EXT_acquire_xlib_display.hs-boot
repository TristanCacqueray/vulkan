{-# language CPP #-}
-- | = Name
--
-- VK_EXT_acquire_xlib_display - instance extension
--
-- == VK_EXT_acquire_xlib_display
--
-- [__Name String__]
--     @VK_EXT_acquire_xlib_display@
--
-- [__Extension Type__]
--     Instance extension
--
-- [__Registered Extension Number__]
--     90
--
-- [__Revision__]
--     1
--
-- [__Extension and Version Dependencies__]
--
--     -   Requires support for Vulkan 1.0
--
--     -   Requires @VK_EXT_direct_mode_display@ to be enabled
--
-- [__Contact__]
--
--     -   James Jones
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_EXT_acquire_xlib_display] @cubanismo%0A<<Here describe the issue or question you have about the VK_EXT_acquire_xlib_display extension>> >
--
-- == Other Extension Metadata
--
-- [__Last Modified Date__]
--     2016-12-13
--
-- [__IP Status__]
--     No known IP claims.
--
-- [__Contributors__]
--
--     -   Dave Airlie, Red Hat
--
--     -   Pierre Boudier, NVIDIA
--
--     -   James Jones, NVIDIA
--
--     -   Damien Leone, NVIDIA
--
--     -   Pierre-Loup Griffais, Valve
--
--     -   Liam Middlebrook, NVIDIA
--
--     -   Daniel Vetter, Intel
--
-- == Description
--
-- This extension allows an application to take exclusive control on a
-- display currently associated with an X11 screen. When control is
-- acquired, the display will be deassociated from the X11 screen until
-- control is released or the specified display connection is closed.
-- Essentially, the X11 screen will behave as if the monitor has been
-- unplugged until control is released.
--
-- == New Commands
--
-- -   'acquireXlibDisplayEXT'
--
-- -   'getRandROutputDisplayEXT'
--
-- == New Enum Constants
--
-- -   'EXT_ACQUIRE_XLIB_DISPLAY_EXTENSION_NAME'
--
-- -   'EXT_ACQUIRE_XLIB_DISPLAY_SPEC_VERSION'
--
-- == Issues
--
-- 1) Should 'acquireXlibDisplayEXT' take an RandR display ID, or a Vulkan
-- display handle as input?
--
-- __RESOLVED__: A Vulkan display handle. Otherwise there would be no way
-- to specify handles to displays that had been prevented from being
-- included in the X11 display list by some native platform or
-- vendor-specific mechanism.
--
-- 2) How does an application figure out which RandR display corresponds to
-- a Vulkan display?
--
-- __RESOLVED__: A new function, 'getRandROutputDisplayEXT', is introduced
-- for this purpose.
--
-- 3) Should 'getRandROutputDisplayEXT' be part of this extension, or a
-- general Vulkan \/ RandR or Vulkan \/ Xlib extension?
--
-- __RESOLVED__: To avoid yet another extension, include it in this
-- extension.
--
-- == Version History
--
-- -   Revision 1, 2016-12-13 (James Jones)
--
--     -   Initial draft
--
-- == See Also
--
-- 'acquireXlibDisplayEXT', 'getRandROutputDisplayEXT'
--
-- == Document Notes
--
-- For more information, see the
-- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#VK_EXT_acquire_xlib_display Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_EXT_acquire_xlib_display  (RROutput) where

import Data.Word (Word64)

type RROutput = Word64

