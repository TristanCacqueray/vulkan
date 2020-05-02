{-# language CPP #-}
module Graphics.Vulkan.Extensions.VK_KHR_external_fence_fd  ( getFenceFdKHR
                                                            , importFenceFdKHR
                                                            , ImportFenceFdInfoKHR(..)
                                                            , FenceGetFdInfoKHR(..)
                                                            , KHR_EXTERNAL_FENCE_FD_SPEC_VERSION
                                                            , pattern KHR_EXTERNAL_FENCE_FD_SPEC_VERSION
                                                            , KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME
                                                            , pattern KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME
                                                            ) where

import Control.Exception.Base (bracket)
import Control.Monad.IO.Class (liftIO)
import Foreign.Marshal.Alloc (allocaBytesAligned)
import Foreign.Marshal.Alloc (callocBytes)
import Foreign.Marshal.Alloc (free)
import GHC.Base (when)
import GHC.IO (throwIO)
import Foreign.Ptr (nullPtr)
import Foreign.Ptr (plusPtr)
import Control.Monad.Trans.Class (lift)
import Control.Monad.Trans.Cont (evalContT)
import Foreign.C.Types (CInt(..))
import Control.Monad.IO.Class (MonadIO)
import Data.String (IsString)
import Data.Typeable (Typeable)
import Foreign.C.Types (CInt)
import Foreign.C.Types (CInt(CInt))
import Foreign.Storable (Storable)
import Foreign.Storable (Storable(peek))
import Foreign.Storable (Storable(poke))
import qualified Foreign.Storable (Storable(..))
import Data.Int (Int32)
import Foreign.Ptr (FunPtr)
import Foreign.Ptr (Ptr)
import Data.Kind (Type)
import Control.Monad.Trans.Cont (ContT(..))
import Graphics.Vulkan.NamedType ((:::))
import Graphics.Vulkan.Core10.Handles (Device)
import Graphics.Vulkan.Core10.Handles (Device(..))
import Graphics.Vulkan.Dynamic (DeviceCmds(pVkGetFenceFdKHR))
import Graphics.Vulkan.Dynamic (DeviceCmds(pVkImportFenceFdKHR))
import Graphics.Vulkan.Core10.Handles (Device_T)
import Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits (ExternalFenceHandleTypeFlagBits)
import Graphics.Vulkan.Core10.Handles (Fence)
import Graphics.Vulkan.Core11.Enums.FenceImportFlagBits (FenceImportFlags)
import Graphics.Vulkan.CStruct (FromCStruct)
import Graphics.Vulkan.CStruct (FromCStruct(..))
import Graphics.Vulkan.Core10.Enums.Result (Result)
import Graphics.Vulkan.Core10.Enums.Result (Result(..))
import Graphics.Vulkan.Core10.Enums.StructureType (StructureType)
import Graphics.Vulkan.CStruct (ToCStruct)
import Graphics.Vulkan.CStruct (ToCStruct(..))
import Graphics.Vulkan.Exception (VulkanException(..))
import Graphics.Vulkan.Zero (Zero(..))
import Graphics.Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR))
import Graphics.Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR))
import Graphics.Vulkan.Core10.Enums.Result (Result(SUCCESS))
foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkGetFenceFdKHR
  :: FunPtr (Ptr Device_T -> Ptr FenceGetFdInfoKHR -> Ptr CInt -> IO Result) -> Ptr Device_T -> Ptr FenceGetFdInfoKHR -> Ptr CInt -> IO Result

-- | vkGetFenceFdKHR - Get a POSIX file descriptor handle for a fence
--
-- = Parameters
--
-- -   @device@ is the logical device that created the fence being
--     exported.
--
-- -   @pGetFdInfo@ is a pointer to a 'FenceGetFdInfoKHR' structure
--     containing parameters of the export operation.
--
-- -   @pFd@ will return the file descriptor representing the fence
--     payload.
--
-- = Description
--
-- Each call to 'getFenceFdKHR' /must/ create a new file descriptor and
-- transfer ownership of it to the application. To avoid leaking resources,
-- the application /must/ release ownership of the file descriptor when it
-- is no longer needed.
--
-- Note
--
-- Ownership can be released in many ways. For example, the application can
-- call @close@() on the file descriptor, or transfer ownership back to
-- Vulkan by using the file descriptor to import a fence payload.
--
-- If @pGetFdInfo->handleType@ is
-- 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT'
-- and the fence is signaled at the time 'getFenceFdKHR' is called, @pFd@
-- /may/ return the value @-1@ instead of a valid file descriptor.
--
-- Where supported by the operating system, the implementation /must/ set
-- the file descriptor to be closed automatically when an @execve@ system
-- call is made.
--
-- Exporting a file descriptor from a fence /may/ have side effects
-- depending on the transference of the specified handle type, as described
-- in
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#synchronization-fences-importing Importing Fence State>.
--
-- == Return Codes
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-successcodes Success>]
--
--     -   'Graphics.Vulkan.Core10.Enums.Result.SUCCESS'
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-errorcodes Failure>]
--
--     -   'Graphics.Vulkan.Core10.Enums.Result.ERROR_TOO_MANY_OBJECTS'
--
--     -   'Graphics.Vulkan.Core10.Enums.Result.ERROR_OUT_OF_HOST_MEMORY'
--
-- = See Also
--
-- 'Graphics.Vulkan.Core10.Handles.Device', 'FenceGetFdInfoKHR'
getFenceFdKHR :: forall io . MonadIO io => Device -> FenceGetFdInfoKHR -> io (("fd" ::: Int32))
getFenceFdKHR device getFdInfo = liftIO . evalContT $ do
  let vkGetFenceFdKHR' = mkVkGetFenceFdKHR (pVkGetFenceFdKHR (deviceCmds (device :: Device)))
  pGetFdInfo <- ContT $ withCStruct (getFdInfo)
  pPFd <- ContT $ bracket (callocBytes @CInt 4) free
  r <- lift $ vkGetFenceFdKHR' (deviceHandle (device)) pGetFdInfo (pPFd)
  lift $ when (r < SUCCESS) (throwIO (VulkanException r))
  pFd <- lift $ peek @CInt pPFd
  pure $ (((\(CInt a) -> a) pFd))


foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkImportFenceFdKHR
  :: FunPtr (Ptr Device_T -> Ptr ImportFenceFdInfoKHR -> IO Result) -> Ptr Device_T -> Ptr ImportFenceFdInfoKHR -> IO Result

-- | vkImportFenceFdKHR - Import a fence from a POSIX file descriptor
--
-- = Parameters
--
-- -   @device@ is the logical device that created the fence.
--
-- -   @pImportFenceFdInfo@ is a pointer to a 'ImportFenceFdInfoKHR'
--     structure specifying the fence and import parameters.
--
-- = Description
--
-- Importing a fence payload from a file descriptor transfers ownership of
-- the file descriptor from the application to the Vulkan implementation.
-- The application /must/ not perform any operations on the file descriptor
-- after a successful import.
--
-- Applications /can/ import the same fence payload into multiple instances
-- of Vulkan, into the same instance from which it was exported, and
-- multiple times into a given Vulkan instance.
--
-- == Return Codes
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-successcodes Success>]
--
--     -   'Graphics.Vulkan.Core10.Enums.Result.SUCCESS'
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-errorcodes Failure>]
--
--     -   'Graphics.Vulkan.Core10.Enums.Result.ERROR_OUT_OF_HOST_MEMORY'
--
--     -   'Graphics.Vulkan.Core10.Enums.Result.ERROR_INVALID_EXTERNAL_HANDLE'
--
-- = See Also
--
-- 'Graphics.Vulkan.Core10.Handles.Device', 'ImportFenceFdInfoKHR'
importFenceFdKHR :: forall io . MonadIO io => Device -> ImportFenceFdInfoKHR -> io ()
importFenceFdKHR device importFenceFdInfo = liftIO . evalContT $ do
  let vkImportFenceFdKHR' = mkVkImportFenceFdKHR (pVkImportFenceFdKHR (deviceCmds (device :: Device)))
  pImportFenceFdInfo <- ContT $ withCStruct (importFenceFdInfo)
  r <- lift $ vkImportFenceFdKHR' (deviceHandle (device)) pImportFenceFdInfo
  lift $ when (r < SUCCESS) (throwIO (VulkanException r))


-- | VkImportFenceFdInfoKHR - (None)
--
-- = Description
--
-- The handle types supported by @handleType@ are:
--
-- +---------------------------------------------------------------------------------------------------------+----------------------+-----------------------+
-- | Handle Type                                                                                             | Transference         | Permanence Supported  |
-- +=========================================================================================================+======================+=======================+
-- | 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT' | Reference            | Temporary,Permanent   |
-- +---------------------------------------------------------------------------------------------------------+----------------------+-----------------------+
-- | 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT'   | Copy                 | Temporary             |
-- +---------------------------------------------------------------------------------------------------------+----------------------+-----------------------+
--
-- Handle Types Supported by 'ImportFenceFdInfoKHR'
--
-- == Valid Usage
--
-- -   @handleType@ /must/ be a value included in the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#synchronization-fence-handletypes-fd Handle Types Supported by >
--     table
--
-- -   @fd@ /must/ obey any requirements listed for @handleType@ in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#external-fence-handle-types-compatibility external fence handle types compatibility>
--
-- If @handleType@ is
-- 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT',
-- the special value @-1@ for @fd@ is treated like a valid sync file
-- descriptor referring to an object that has already signaled. The import
-- operation will succeed and the 'Graphics.Vulkan.Core10.Handles.Fence'
-- will have a temporarily imported payload as if a valid file descriptor
-- had been provided.
--
-- Note
--
-- This special behavior for importing an invalid sync file descriptor
-- allows easier interoperability with other system APIs which use the
-- convention that an invalid sync file descriptor represents work that has
-- already completed and does not need to be waited for. It is consistent
-- with the option for implementations to return a @-1@ file descriptor
-- when exporting a
-- 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT'
-- from a 'Graphics.Vulkan.Core10.Handles.Fence' which is signaled.
--
-- == Valid Usage (Implicit)
--
-- -   @sType@ /must/ be
--     'Graphics.Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR'
--
-- -   @pNext@ /must/ be @NULL@
--
-- -   @fence@ /must/ be a valid 'Graphics.Vulkan.Core10.Handles.Fence'
--     handle
--
-- -   @flags@ /must/ be a valid combination of
--     'Graphics.Vulkan.Core11.Enums.FenceImportFlagBits.FenceImportFlagBits'
--     values
--
-- -   @handleType@ /must/ be a valid
--     'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.ExternalFenceHandleTypeFlagBits'
--     value
--
-- == Host Synchronization
--
-- -   Host access to @fence@ /must/ be externally synchronized
--
-- = See Also
--
-- 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.ExternalFenceHandleTypeFlagBits',
-- 'Graphics.Vulkan.Core10.Handles.Fence',
-- 'Graphics.Vulkan.Core11.Enums.FenceImportFlagBits.FenceImportFlags',
-- 'Graphics.Vulkan.Core10.Enums.StructureType.StructureType',
-- 'importFenceFdKHR'
data ImportFenceFdInfoKHR = ImportFenceFdInfoKHR
  { -- | @fence@ is the fence into which the payload will be imported.
    fence :: Fence
  , -- | @flags@ is a bitmask of
    -- 'Graphics.Vulkan.Core11.Enums.FenceImportFlagBits.FenceImportFlagBits'
    -- specifying additional parameters for the fence payload import operation.
    flags :: FenceImportFlags
  , -- | @handleType@ specifies the type of @fd@.
    handleType :: ExternalFenceHandleTypeFlagBits
  , -- | @fd@ is the external handle to import.
    fd :: Int32
  }
  deriving (Typeable)
deriving instance Show ImportFenceFdInfoKHR

instance ToCStruct ImportFenceFdInfoKHR where
  withCStruct x f = allocaBytesAligned 40 8 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p ImportFenceFdInfoKHR{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Fence)) (fence)
    poke ((p `plusPtr` 24 :: Ptr FenceImportFlags)) (flags)
    poke ((p `plusPtr` 28 :: Ptr ExternalFenceHandleTypeFlagBits)) (handleType)
    poke ((p `plusPtr` 32 :: Ptr CInt)) (CInt (fd))
    f
  cStructSize = 40
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Fence)) (zero)
    poke ((p `plusPtr` 28 :: Ptr ExternalFenceHandleTypeFlagBits)) (zero)
    poke ((p `plusPtr` 32 :: Ptr CInt)) (CInt (zero))
    f

instance FromCStruct ImportFenceFdInfoKHR where
  peekCStruct p = do
    fence <- peek @Fence ((p `plusPtr` 16 :: Ptr Fence))
    flags <- peek @FenceImportFlags ((p `plusPtr` 24 :: Ptr FenceImportFlags))
    handleType <- peek @ExternalFenceHandleTypeFlagBits ((p `plusPtr` 28 :: Ptr ExternalFenceHandleTypeFlagBits))
    fd <- peek @CInt ((p `plusPtr` 32 :: Ptr CInt))
    pure $ ImportFenceFdInfoKHR
             fence flags handleType ((\(CInt a) -> a) fd)

instance Storable ImportFenceFdInfoKHR where
  sizeOf ~_ = 40
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero ImportFenceFdInfoKHR where
  zero = ImportFenceFdInfoKHR
           zero
           zero
           zero
           zero


-- | VkFenceGetFdInfoKHR - Structure describing a POSIX FD fence export
-- operation
--
-- = Description
--
-- The properties of the file descriptor returned depend on the value of
-- @handleType@. See
-- 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.ExternalFenceHandleTypeFlagBits'
-- for a description of the properties of the defined external fence handle
-- types.
--
-- == Valid Usage
--
-- -   @handleType@ /must/ have been included in
--     'Graphics.Vulkan.Core11.Promoted_From_VK_KHR_external_fence.ExportFenceCreateInfo'::@handleTypes@
--     when @fence@’s current payload was created
--
-- -   If @handleType@ refers to a handle type with copy payload
--     transference semantics, @fence@ /must/ be signaled, or have an
--     associated
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#synchronization-fences-signaling fence signal operation>
--     pending execution
--
-- -   @fence@ /must/ not currently have its payload replaced by an
--     imported payload as described below in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#synchronization-fences-importing Importing Fence Payloads>
--     unless that imported payload’s handle type was included in
--     'Graphics.Vulkan.Core11.Promoted_From_VK_KHR_external_fence_capabilities.ExternalFenceProperties'::@exportFromImportedHandleTypes@
--     for @handleType@
--
-- -   @handleType@ /must/ be defined as a POSIX file descriptor handle
--
-- == Valid Usage (Implicit)
--
-- -   @sType@ /must/ be
--     'Graphics.Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR'
--
-- -   @pNext@ /must/ be @NULL@
--
-- -   @fence@ /must/ be a valid 'Graphics.Vulkan.Core10.Handles.Fence'
--     handle
--
-- -   @handleType@ /must/ be a valid
--     'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.ExternalFenceHandleTypeFlagBits'
--     value
--
-- = See Also
--
-- 'Graphics.Vulkan.Core11.Enums.ExternalFenceHandleTypeFlagBits.ExternalFenceHandleTypeFlagBits',
-- 'Graphics.Vulkan.Core10.Handles.Fence',
-- 'Graphics.Vulkan.Core10.Enums.StructureType.StructureType',
-- 'getFenceFdKHR'
data FenceGetFdInfoKHR = FenceGetFdInfoKHR
  { -- | @fence@ is the fence from which state will be exported.
    fence :: Fence
  , -- | @handleType@ is the type of handle requested.
    handleType :: ExternalFenceHandleTypeFlagBits
  }
  deriving (Typeable)
deriving instance Show FenceGetFdInfoKHR

instance ToCStruct FenceGetFdInfoKHR where
  withCStruct x f = allocaBytesAligned 32 8 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p FenceGetFdInfoKHR{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Fence)) (fence)
    poke ((p `plusPtr` 24 :: Ptr ExternalFenceHandleTypeFlagBits)) (handleType)
    f
  cStructSize = 32
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Fence)) (zero)
    poke ((p `plusPtr` 24 :: Ptr ExternalFenceHandleTypeFlagBits)) (zero)
    f

instance FromCStruct FenceGetFdInfoKHR where
  peekCStruct p = do
    fence <- peek @Fence ((p `plusPtr` 16 :: Ptr Fence))
    handleType <- peek @ExternalFenceHandleTypeFlagBits ((p `plusPtr` 24 :: Ptr ExternalFenceHandleTypeFlagBits))
    pure $ FenceGetFdInfoKHR
             fence handleType

instance Storable FenceGetFdInfoKHR where
  sizeOf ~_ = 32
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero FenceGetFdInfoKHR where
  zero = FenceGetFdInfoKHR
           zero
           zero


type KHR_EXTERNAL_FENCE_FD_SPEC_VERSION = 1

-- No documentation found for TopLevel "VK_KHR_EXTERNAL_FENCE_FD_SPEC_VERSION"
pattern KHR_EXTERNAL_FENCE_FD_SPEC_VERSION :: forall a . Integral a => a
pattern KHR_EXTERNAL_FENCE_FD_SPEC_VERSION = 1


type KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME = "VK_KHR_external_fence_fd"

-- No documentation found for TopLevel "VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME"
pattern KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME :: forall a . (Eq a, IsString a) => a
pattern KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME = "VK_KHR_external_fence_fd"

