{-# language CPP #-}
-- | = Name
--
-- VK_EXT_display_control - device extension
--
-- == VK_EXT_display_control
--
-- [__Name String__]
--     @VK_EXT_display_control@
--
-- [__Extension Type__]
--     Device extension
--
-- [__Registered Extension Number__]
--     92
--
-- [__Revision__]
--     1
--
-- [__Extension and Version Dependencies__]
--
--     -   Requires Vulkan 1.0
--
--     -   Requires @VK_EXT_display_surface_counter@
--
--     -   Requires @VK_KHR_swapchain@
--
-- [__Contact__]
--
--     -   James Jones
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_EXT_display_control] @cubanismo%0A<<Here describe the issue or question you have about the VK_EXT_display_control extension>> >
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
--     -   Pierre Boudier, NVIDIA
--
--     -   James Jones, NVIDIA
--
--     -   Damien Leone, NVIDIA
--
--     -   Pierre-Loup Griffais, Valve
--
--     -   Daniel Vetter, Intel
--
-- == Description
--
-- This extension defines a set of utility functions for use with the
-- @VK_KHR_display@ and @VK_KHR_display_swapchain@ extensions.
--
-- == New Commands
--
-- -   'displayPowerControlEXT'
--
-- -   'getSwapchainCounterEXT'
--
-- -   'registerDeviceEventEXT'
--
-- -   'registerDisplayEventEXT'
--
-- == New Structures
--
-- -   'DeviceEventInfoEXT'
--
-- -   'DisplayEventInfoEXT'
--
-- -   'DisplayPowerInfoEXT'
--
-- -   Extending
--     'Vulkan.Extensions.VK_KHR_swapchain.SwapchainCreateInfoKHR':
--
--     -   'SwapchainCounterCreateInfoEXT'
--
-- == New Enums
--
-- -   'DeviceEventTypeEXT'
--
-- -   'DisplayEventTypeEXT'
--
-- -   'DisplayPowerStateEXT'
--
-- == New Enum Constants
--
-- -   'EXT_DISPLAY_CONTROL_EXTENSION_NAME'
--
-- -   'EXT_DISPLAY_CONTROL_SPEC_VERSION'
--
-- -   Extending 'Vulkan.Core10.Enums.StructureType.StructureType':
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT'
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT'
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT'
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT'
--
-- == Issues
--
-- 1) Should this extension add an explicit “WaitForVsync” API or a fence
-- signaled at vsync that the application can wait on?
--
-- __RESOLVED__: A fence. A separate API could later be provided that
-- allows exporting the fence to a native object that could be inserted
-- into standard run loops on POSIX and Windows systems.
--
-- 2) Should callbacks be added for a vsync event, or in general to monitor
-- events in Vulkan?
--
-- __RESOLVED__: No, fences should be used. Some events are generated by
-- interrupts which are managed in the kernel. In order to use a callback
-- provided by the application, drivers would need to have the userspace
-- driver spawn threads that would wait on the kernel event, and hence the
-- callbacks could be difficult for the application to synchronize with its
-- other work given they would arrive on a foreign thread.
--
-- 3) Should vblank or scanline events be exposed?
--
-- __RESOLVED__: Vblank events. Scanline events could be added by a
-- separate extension, but the latency of processing an interrupt and
-- waking up a userspace event is high enough that the accuracy of a
-- scanline event would be rather low. Further, per-scanline interrupts are
-- not supported by all hardware.
--
-- == Version History
--
-- -   Revision 1, 2016-12-13 (James Jones)
--
--     -   Initial draft
--
-- == See Also
--
-- 'DeviceEventInfoEXT', 'DeviceEventTypeEXT', 'DisplayEventInfoEXT',
-- 'DisplayEventTypeEXT', 'DisplayPowerInfoEXT', 'DisplayPowerStateEXT',
-- 'SwapchainCounterCreateInfoEXT', 'displayPowerControlEXT',
-- 'getSwapchainCounterEXT', 'registerDeviceEventEXT',
-- 'registerDisplayEventEXT'
--
-- == Document Notes
--
-- For more information, see the
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_EXT_display_control  ( displayPowerControlEXT
                                                 , registerDeviceEventEXT
                                                 , registerDisplayEventEXT
                                                 , getSwapchainCounterEXT
                                                 , DisplayPowerInfoEXT(..)
                                                 , DeviceEventInfoEXT(..)
                                                 , DisplayEventInfoEXT(..)
                                                 , SwapchainCounterCreateInfoEXT(..)
                                                 , DisplayPowerStateEXT( DISPLAY_POWER_STATE_OFF_EXT
                                                                       , DISPLAY_POWER_STATE_SUSPEND_EXT
                                                                       , DISPLAY_POWER_STATE_ON_EXT
                                                                       , ..
                                                                       )
                                                 , DeviceEventTypeEXT( DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT
                                                                     , ..
                                                                     )
                                                 , DisplayEventTypeEXT( DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT
                                                                      , ..
                                                                      )
                                                 , EXT_DISPLAY_CONTROL_SPEC_VERSION
                                                 , pattern EXT_DISPLAY_CONTROL_SPEC_VERSION
                                                 , EXT_DISPLAY_CONTROL_EXTENSION_NAME
                                                 , pattern EXT_DISPLAY_CONTROL_EXTENSION_NAME
                                                 , DisplayKHR(..)
                                                 , SwapchainKHR(..)
                                                 , SurfaceCounterFlagBitsEXT(..)
                                                 , SurfaceCounterFlagsEXT
                                                 ) where

import Vulkan.Internal.Utils (enumReadPrec)
import Vulkan.Internal.Utils (enumShowsPrec)
import Vulkan.Internal.Utils (traceAroundEvent)
import Control.Exception.Base (bracket)
import Control.Monad (unless)
import Control.Monad.IO.Class (liftIO)
import Foreign.Marshal.Alloc (allocaBytes)
import Foreign.Marshal.Alloc (callocBytes)
import Foreign.Marshal.Alloc (free)
import GHC.Base (when)
import GHC.IO (throwIO)
import GHC.Ptr (nullFunPtr)
import Foreign.Ptr (nullPtr)
import Foreign.Ptr (plusPtr)
import GHC.Show (showsPrec)
import Control.Monad.Trans.Class (lift)
import Control.Monad.Trans.Cont (evalContT)
import Vulkan.CStruct (FromCStruct)
import Vulkan.CStruct (FromCStruct(..))
import Vulkan.CStruct (ToCStruct)
import Vulkan.CStruct (ToCStruct(..))
import Vulkan.Zero (Zero)
import Vulkan.Zero (Zero(..))
import Control.Monad.IO.Class (MonadIO)
import Data.String (IsString)
import Data.Typeable (Typeable)
import Foreign.Storable (Storable)
import Foreign.Storable (Storable(peek))
import Foreign.Storable (Storable(poke))
import qualified Foreign.Storable (Storable(..))
import GHC.Generics (Generic)
import GHC.IO.Exception (IOErrorType(..))
import GHC.IO.Exception (IOException(..))
import Data.Int (Int32)
import Foreign.Ptr (FunPtr)
import Foreign.Ptr (Ptr)
import GHC.Read (Read(readPrec))
import GHC.Show (Show(showsPrec))
import Data.Word (Word64)
import Data.Kind (Type)
import Control.Monad.Trans.Cont (ContT(..))
import Vulkan.NamedType ((:::))
import Vulkan.Core10.AllocationCallbacks (AllocationCallbacks)
import Vulkan.Core10.Handles (Device)
import Vulkan.Core10.Handles (Device(..))
import Vulkan.Dynamic (DeviceCmds(pVkDisplayPowerControlEXT))
import Vulkan.Dynamic (DeviceCmds(pVkGetSwapchainCounterEXT))
import Vulkan.Dynamic (DeviceCmds(pVkRegisterDeviceEventEXT))
import Vulkan.Dynamic (DeviceCmds(pVkRegisterDisplayEventEXT))
import Vulkan.Core10.Handles (Device_T)
import Vulkan.Extensions.Handles (DisplayKHR)
import Vulkan.Extensions.Handles (DisplayKHR(..))
import Vulkan.Core10.Handles (Fence)
import Vulkan.Core10.Handles (Fence(..))
import Vulkan.Core10.Enums.Result (Result)
import Vulkan.Core10.Enums.Result (Result(..))
import Vulkan.Core10.Enums.StructureType (StructureType)
import Vulkan.Extensions.VK_EXT_display_surface_counter (SurfaceCounterFlagBitsEXT)
import Vulkan.Extensions.VK_EXT_display_surface_counter (SurfaceCounterFlagBitsEXT(..))
import Vulkan.Extensions.VK_EXT_display_surface_counter (SurfaceCounterFlagsEXT)
import Vulkan.Extensions.Handles (SwapchainKHR)
import Vulkan.Extensions.Handles (SwapchainKHR(..))
import Vulkan.Exception (VulkanException(..))
import Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT))
import Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT))
import Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT))
import Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT))
import Vulkan.Core10.Enums.Result (Result(SUCCESS))
import Vulkan.Extensions.Handles (DisplayKHR(..))
import Vulkan.Extensions.VK_EXT_display_surface_counter (SurfaceCounterFlagBitsEXT(..))
import Vulkan.Extensions.VK_EXT_display_surface_counter (SurfaceCounterFlagsEXT)
import Vulkan.Extensions.Handles (SwapchainKHR(..))
foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkDisplayPowerControlEXT
  :: FunPtr (Ptr Device_T -> DisplayKHR -> Ptr DisplayPowerInfoEXT -> IO Result) -> Ptr Device_T -> DisplayKHR -> Ptr DisplayPowerInfoEXT -> IO Result

-- | vkDisplayPowerControlEXT - Set the power state of a display
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkDisplayPowerControlEXT-device-parameter# @device@ /must/ be
--     a valid 'Vulkan.Core10.Handles.Device' handle
--
-- -   #VUID-vkDisplayPowerControlEXT-display-parameter# @display@ /must/
--     be a valid 'Vulkan.Extensions.Handles.DisplayKHR' handle
--
-- -   #VUID-vkDisplayPowerControlEXT-pDisplayPowerInfo-parameter#
--     @pDisplayPowerInfo@ /must/ be a valid pointer to a valid
--     'DisplayPowerInfoEXT' structure
--
-- -   #VUID-vkDisplayPowerControlEXT-commonparent# Both of @device@, and
--     @display@ /must/ have been created, allocated, or retrieved from the
--     same 'Vulkan.Core10.Handles.PhysicalDevice'
--
-- == Return Codes
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-successcodes Success>]
--
--     -   'Vulkan.Core10.Enums.Result.SUCCESS'
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-errorcodes Failure>]
--
--     -   'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_HOST_MEMORY'
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'Vulkan.Core10.Handles.Device', 'Vulkan.Extensions.Handles.DisplayKHR',
-- 'DisplayPowerInfoEXT'
displayPowerControlEXT :: forall io
                        . (MonadIO io)
                       => -- | @device@ is a logical device associated with @display@.
                          Device
                       -> -- | @display@ is the display whose power state is modified.
                          DisplayKHR
                       -> -- | @pDisplayPowerInfo@ is a pointer to a 'DisplayPowerInfoEXT' structure
                          -- specifying the new power state of @display@.
                          DisplayPowerInfoEXT
                       -> io ()
displayPowerControlEXT device display displayPowerInfo = liftIO . evalContT $ do
  let vkDisplayPowerControlEXTPtr = pVkDisplayPowerControlEXT (deviceCmds (device :: Device))
  lift $ unless (vkDisplayPowerControlEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkDisplayPowerControlEXT is null" Nothing Nothing
  let vkDisplayPowerControlEXT' = mkVkDisplayPowerControlEXT vkDisplayPowerControlEXTPtr
  pDisplayPowerInfo <- ContT $ withCStruct (displayPowerInfo)
  r <- lift $ traceAroundEvent "vkDisplayPowerControlEXT" (vkDisplayPowerControlEXT' (deviceHandle (device)) (display) pDisplayPowerInfo)
  lift $ when (r < SUCCESS) (throwIO (VulkanException r))


foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkRegisterDeviceEventEXT
  :: FunPtr (Ptr Device_T -> Ptr DeviceEventInfoEXT -> Ptr AllocationCallbacks -> Ptr Fence -> IO Result) -> Ptr Device_T -> Ptr DeviceEventInfoEXT -> Ptr AllocationCallbacks -> Ptr Fence -> IO Result

-- | vkRegisterDeviceEventEXT - Signal a fence when a device event occurs
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkRegisterDeviceEventEXT-device-parameter# @device@ /must/ be
--     a valid 'Vulkan.Core10.Handles.Device' handle
--
-- -   #VUID-vkRegisterDeviceEventEXT-pDeviceEventInfo-parameter#
--     @pDeviceEventInfo@ /must/ be a valid pointer to a valid
--     'DeviceEventInfoEXT' structure
--
-- -   #VUID-vkRegisterDeviceEventEXT-pAllocator-parameter# If @pAllocator@
--     is not @NULL@, @pAllocator@ /must/ be a valid pointer to a valid
--     'Vulkan.Core10.AllocationCallbacks.AllocationCallbacks' structure
--
-- -   #VUID-vkRegisterDeviceEventEXT-pFence-parameter# @pFence@ /must/ be
--     a valid pointer to a 'Vulkan.Core10.Handles.Fence' handle
--
-- == Return Codes
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-successcodes Success>]
--
--     -   'Vulkan.Core10.Enums.Result.SUCCESS'
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-errorcodes Failure>]
--
--     -   'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_HOST_MEMORY'
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'Vulkan.Core10.AllocationCallbacks.AllocationCallbacks',
-- 'Vulkan.Core10.Handles.Device', 'DeviceEventInfoEXT',
-- 'Vulkan.Core10.Handles.Fence'
registerDeviceEventEXT :: forall io
                        . (MonadIO io)
                       => -- | @device@ is a logical device on which the event /may/ occur.
                          Device
                       -> -- | @pDeviceEventInfo@ is a pointer to a 'DeviceEventInfoEXT' structure
                          -- describing the event of interest to the application.
                          DeviceEventInfoEXT
                       -> -- | @pAllocator@ controls host memory allocation as described in the
                          -- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#memory-allocation Memory Allocation>
                          -- chapter.
                          ("allocator" ::: Maybe AllocationCallbacks)
                       -> io (Fence)
registerDeviceEventEXT device deviceEventInfo allocator = liftIO . evalContT $ do
  let vkRegisterDeviceEventEXTPtr = pVkRegisterDeviceEventEXT (deviceCmds (device :: Device))
  lift $ unless (vkRegisterDeviceEventEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkRegisterDeviceEventEXT is null" Nothing Nothing
  let vkRegisterDeviceEventEXT' = mkVkRegisterDeviceEventEXT vkRegisterDeviceEventEXTPtr
  pDeviceEventInfo <- ContT $ withCStruct (deviceEventInfo)
  pAllocator <- case (allocator) of
    Nothing -> pure nullPtr
    Just j -> ContT $ withCStruct (j)
  pPFence <- ContT $ bracket (callocBytes @Fence 8) free
  r <- lift $ traceAroundEvent "vkRegisterDeviceEventEXT" (vkRegisterDeviceEventEXT' (deviceHandle (device)) pDeviceEventInfo pAllocator (pPFence))
  lift $ when (r < SUCCESS) (throwIO (VulkanException r))
  pFence <- lift $ peek @Fence pPFence
  pure $ (pFence)


foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkRegisterDisplayEventEXT
  :: FunPtr (Ptr Device_T -> DisplayKHR -> Ptr DisplayEventInfoEXT -> Ptr AllocationCallbacks -> Ptr Fence -> IO Result) -> Ptr Device_T -> DisplayKHR -> Ptr DisplayEventInfoEXT -> Ptr AllocationCallbacks -> Ptr Fence -> IO Result

-- | vkRegisterDisplayEventEXT - Signal a fence when a display event occurs
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkRegisterDisplayEventEXT-device-parameter# @device@ /must/ be
--     a valid 'Vulkan.Core10.Handles.Device' handle
--
-- -   #VUID-vkRegisterDisplayEventEXT-display-parameter# @display@ /must/
--     be a valid 'Vulkan.Extensions.Handles.DisplayKHR' handle
--
-- -   #VUID-vkRegisterDisplayEventEXT-pDisplayEventInfo-parameter#
--     @pDisplayEventInfo@ /must/ be a valid pointer to a valid
--     'DisplayEventInfoEXT' structure
--
-- -   #VUID-vkRegisterDisplayEventEXT-pAllocator-parameter# If
--     @pAllocator@ is not @NULL@, @pAllocator@ /must/ be a valid pointer
--     to a valid 'Vulkan.Core10.AllocationCallbacks.AllocationCallbacks'
--     structure
--
-- -   #VUID-vkRegisterDisplayEventEXT-pFence-parameter# @pFence@ /must/ be
--     a valid pointer to a 'Vulkan.Core10.Handles.Fence' handle
--
-- -   #VUID-vkRegisterDisplayEventEXT-commonparent# Both of @device@, and
--     @display@ /must/ have been created, allocated, or retrieved from the
--     same 'Vulkan.Core10.Handles.PhysicalDevice'
--
-- == Return Codes
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-successcodes Success>]
--
--     -   'Vulkan.Core10.Enums.Result.SUCCESS'
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-errorcodes Failure>]
--
--     -   'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_HOST_MEMORY'
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'Vulkan.Core10.AllocationCallbacks.AllocationCallbacks',
-- 'Vulkan.Core10.Handles.Device', 'DisplayEventInfoEXT',
-- 'Vulkan.Extensions.Handles.DisplayKHR', 'Vulkan.Core10.Handles.Fence'
registerDisplayEventEXT :: forall io
                         . (MonadIO io)
                        => -- | @device@ is a logical device associated with @display@
                           Device
                        -> -- | @display@ is the display on which the event /may/ occur.
                           DisplayKHR
                        -> -- | @pDisplayEventInfo@ is a pointer to a 'DisplayEventInfoEXT' structure
                           -- describing the event of interest to the application.
                           DisplayEventInfoEXT
                        -> -- | @pAllocator@ controls host memory allocation as described in the
                           -- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#memory-allocation Memory Allocation>
                           -- chapter.
                           ("allocator" ::: Maybe AllocationCallbacks)
                        -> io (Fence)
registerDisplayEventEXT device display displayEventInfo allocator = liftIO . evalContT $ do
  let vkRegisterDisplayEventEXTPtr = pVkRegisterDisplayEventEXT (deviceCmds (device :: Device))
  lift $ unless (vkRegisterDisplayEventEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkRegisterDisplayEventEXT is null" Nothing Nothing
  let vkRegisterDisplayEventEXT' = mkVkRegisterDisplayEventEXT vkRegisterDisplayEventEXTPtr
  pDisplayEventInfo <- ContT $ withCStruct (displayEventInfo)
  pAllocator <- case (allocator) of
    Nothing -> pure nullPtr
    Just j -> ContT $ withCStruct (j)
  pPFence <- ContT $ bracket (callocBytes @Fence 8) free
  r <- lift $ traceAroundEvent "vkRegisterDisplayEventEXT" (vkRegisterDisplayEventEXT' (deviceHandle (device)) (display) pDisplayEventInfo pAllocator (pPFence))
  lift $ when (r < SUCCESS) (throwIO (VulkanException r))
  pFence <- lift $ peek @Fence pPFence
  pure $ (pFence)


foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkGetSwapchainCounterEXT
  :: FunPtr (Ptr Device_T -> SwapchainKHR -> SurfaceCounterFlagBitsEXT -> Ptr Word64 -> IO Result) -> Ptr Device_T -> SwapchainKHR -> SurfaceCounterFlagBitsEXT -> Ptr Word64 -> IO Result

-- | vkGetSwapchainCounterEXT - Query the current value of a surface counter
--
-- = Description
--
-- If a counter is not available because the swapchain is out of date, the
-- implementation /may/ return
-- 'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_DATE_KHR'.
--
-- == Valid Usage
--
-- -   #VUID-vkGetSwapchainCounterEXT-swapchain-01245# One or more present
--     commands on @swapchain@ /must/ have been processed by the
--     presentation engine
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkGetSwapchainCounterEXT-device-parameter# @device@ /must/ be
--     a valid 'Vulkan.Core10.Handles.Device' handle
--
-- -   #VUID-vkGetSwapchainCounterEXT-swapchain-parameter# @swapchain@
--     /must/ be a valid 'Vulkan.Extensions.Handles.SwapchainKHR' handle
--
-- -   #VUID-vkGetSwapchainCounterEXT-counter-parameter# @counter@ /must/
--     be a valid
--     'Vulkan.Extensions.VK_EXT_display_surface_counter.SurfaceCounterFlagBitsEXT'
--     value
--
-- -   #VUID-vkGetSwapchainCounterEXT-pCounterValue-parameter#
--     @pCounterValue@ /must/ be a valid pointer to a @uint64_t@ value
--
-- -   #VUID-vkGetSwapchainCounterEXT-commonparent# Both of @device@, and
--     @swapchain@ /must/ have been created, allocated, or retrieved from
--     the same 'Vulkan.Core10.Handles.Instance'
--
-- == Return Codes
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-successcodes Success>]
--
--     -   'Vulkan.Core10.Enums.Result.SUCCESS'
--
-- [<https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-errorcodes Failure>]
--
--     -   'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_HOST_MEMORY'
--
--     -   'Vulkan.Core10.Enums.Result.ERROR_DEVICE_LOST'
--
--     -   'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_DATE_KHR'
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'Vulkan.Core10.Handles.Device',
-- 'Vulkan.Extensions.VK_EXT_display_surface_counter.SurfaceCounterFlagBitsEXT',
-- 'Vulkan.Extensions.Handles.SwapchainKHR'
getSwapchainCounterEXT :: forall io
                        . (MonadIO io)
                       => -- | @device@ is the 'Vulkan.Core10.Handles.Device' associated with
                          -- @swapchain@.
                          Device
                       -> -- | @swapchain@ is the swapchain from which to query the counter value.
                          SwapchainKHR
                       -> -- | @counter@ is a
                          -- 'Vulkan.Extensions.VK_EXT_display_surface_counter.SurfaceCounterFlagBitsEXT'
                          -- value specifying the counter to query.
                          SurfaceCounterFlagBitsEXT
                       -> io (("counterValue" ::: Word64))
getSwapchainCounterEXT device swapchain counter = liftIO . evalContT $ do
  let vkGetSwapchainCounterEXTPtr = pVkGetSwapchainCounterEXT (deviceCmds (device :: Device))
  lift $ unless (vkGetSwapchainCounterEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkGetSwapchainCounterEXT is null" Nothing Nothing
  let vkGetSwapchainCounterEXT' = mkVkGetSwapchainCounterEXT vkGetSwapchainCounterEXTPtr
  pPCounterValue <- ContT $ bracket (callocBytes @Word64 8) free
  r <- lift $ traceAroundEvent "vkGetSwapchainCounterEXT" (vkGetSwapchainCounterEXT' (deviceHandle (device)) (swapchain) (counter) (pPCounterValue))
  lift $ when (r < SUCCESS) (throwIO (VulkanException r))
  pCounterValue <- lift $ peek @Word64 pPCounterValue
  pure $ (pCounterValue)


-- | VkDisplayPowerInfoEXT - Describe the power state of a display
--
-- == Valid Usage (Implicit)
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'DisplayPowerStateEXT',
-- 'Vulkan.Core10.Enums.StructureType.StructureType',
-- 'displayPowerControlEXT'
data DisplayPowerInfoEXT = DisplayPowerInfoEXT
  { -- | @powerState@ is a 'DisplayPowerStateEXT' value specifying the new power
    -- state of the display.
    --
    -- #VUID-VkDisplayPowerInfoEXT-powerState-parameter# @powerState@ /must/ be
    -- a valid 'DisplayPowerStateEXT' value
    powerState :: DisplayPowerStateEXT }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (DisplayPowerInfoEXT)
#endif
deriving instance Show DisplayPowerInfoEXT

instance ToCStruct DisplayPowerInfoEXT where
  withCStruct x f = allocaBytes 24 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p DisplayPowerInfoEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr DisplayPowerStateEXT)) (powerState)
    f
  cStructSize = 24
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_DISPLAY_POWER_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr DisplayPowerStateEXT)) (zero)
    f

instance FromCStruct DisplayPowerInfoEXT where
  peekCStruct p = do
    powerState <- peek @DisplayPowerStateEXT ((p `plusPtr` 16 :: Ptr DisplayPowerStateEXT))
    pure $ DisplayPowerInfoEXT
             powerState

instance Storable DisplayPowerInfoEXT where
  sizeOf ~_ = 24
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero DisplayPowerInfoEXT where
  zero = DisplayPowerInfoEXT
           zero


-- | VkDeviceEventInfoEXT - Describe a device event to create
--
-- == Valid Usage (Implicit)
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'DeviceEventTypeEXT', 'Vulkan.Core10.Enums.StructureType.StructureType',
-- 'registerDeviceEventEXT'
data DeviceEventInfoEXT = DeviceEventInfoEXT
  { -- | #VUID-VkDeviceEventInfoEXT-deviceEvent-parameter# @deviceEvent@ /must/
    -- be a valid 'DeviceEventTypeEXT' value
    deviceEvent :: DeviceEventTypeEXT }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (DeviceEventInfoEXT)
#endif
deriving instance Show DeviceEventInfoEXT

instance ToCStruct DeviceEventInfoEXT where
  withCStruct x f = allocaBytes 24 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p DeviceEventInfoEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr DeviceEventTypeEXT)) (deviceEvent)
    f
  cStructSize = 24
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_DEVICE_EVENT_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr DeviceEventTypeEXT)) (zero)
    f

instance FromCStruct DeviceEventInfoEXT where
  peekCStruct p = do
    deviceEvent <- peek @DeviceEventTypeEXT ((p `plusPtr` 16 :: Ptr DeviceEventTypeEXT))
    pure $ DeviceEventInfoEXT
             deviceEvent

instance Storable DeviceEventInfoEXT where
  sizeOf ~_ = 24
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero DeviceEventInfoEXT where
  zero = DeviceEventInfoEXT
           zero


-- | VkDisplayEventInfoEXT - Describe a display event to create
--
-- == Valid Usage (Implicit)
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'DisplayEventTypeEXT',
-- 'Vulkan.Core10.Enums.StructureType.StructureType',
-- 'registerDisplayEventEXT'
data DisplayEventInfoEXT = DisplayEventInfoEXT
  { -- | @displayEvent@ is a 'DisplayEventTypeEXT' specifying when the fence will
    -- be signaled.
    --
    -- #VUID-VkDisplayEventInfoEXT-displayEvent-parameter# @displayEvent@
    -- /must/ be a valid 'DisplayEventTypeEXT' value
    displayEvent :: DisplayEventTypeEXT }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (DisplayEventInfoEXT)
#endif
deriving instance Show DisplayEventInfoEXT

instance ToCStruct DisplayEventInfoEXT where
  withCStruct x f = allocaBytes 24 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p DisplayEventInfoEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr DisplayEventTypeEXT)) (displayEvent)
    f
  cStructSize = 24
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_DISPLAY_EVENT_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr DisplayEventTypeEXT)) (zero)
    f

instance FromCStruct DisplayEventInfoEXT where
  peekCStruct p = do
    displayEvent <- peek @DisplayEventTypeEXT ((p `plusPtr` 16 :: Ptr DisplayEventTypeEXT))
    pure $ DisplayEventInfoEXT
             displayEvent

instance Storable DisplayEventInfoEXT where
  sizeOf ~_ = 24
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero DisplayEventInfoEXT where
  zero = DisplayEventInfoEXT
           zero


-- | VkSwapchainCounterCreateInfoEXT - Specify the surface counters desired
--
-- == Valid Usage
--
-- -   #VUID-VkSwapchainCounterCreateInfoEXT-surfaceCounters-01244# The
--     bits in @surfaceCounters@ /must/ be supported by
--     'Vulkan.Extensions.VK_KHR_swapchain.SwapchainCreateInfoKHR'::@surface@,
--     as reported by
--     'Vulkan.Extensions.VK_EXT_display_surface_counter.getPhysicalDeviceSurfaceCapabilities2EXT'
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-VkSwapchainCounterCreateInfoEXT-sType-sType# @sType@ /must/ be
--     'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT'
--
-- -   #VUID-VkSwapchainCounterCreateInfoEXT-surfaceCounters-parameter#
--     @surfaceCounters@ /must/ be a valid combination of
--     'Vulkan.Extensions.VK_EXT_display_surface_counter.SurfaceCounterFlagBitsEXT'
--     values
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'Vulkan.Core10.Enums.StructureType.StructureType',
-- 'Vulkan.Extensions.VK_EXT_display_surface_counter.SurfaceCounterFlagsEXT'
data SwapchainCounterCreateInfoEXT = SwapchainCounterCreateInfoEXT
  { -- | @surfaceCounters@ is a bitmask of
    -- 'Vulkan.Extensions.VK_EXT_display_surface_counter.SurfaceCounterFlagBitsEXT'
    -- specifying surface counters to enable for the swapchain.
    surfaceCounters :: SurfaceCounterFlagsEXT }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (SwapchainCounterCreateInfoEXT)
#endif
deriving instance Show SwapchainCounterCreateInfoEXT

instance ToCStruct SwapchainCounterCreateInfoEXT where
  withCStruct x f = allocaBytes 24 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p SwapchainCounterCreateInfoEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr SurfaceCounterFlagsEXT)) (surfaceCounters)
    f
  cStructSize = 24
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_SWAPCHAIN_COUNTER_CREATE_INFO_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    f

instance FromCStruct SwapchainCounterCreateInfoEXT where
  peekCStruct p = do
    surfaceCounters <- peek @SurfaceCounterFlagsEXT ((p `plusPtr` 16 :: Ptr SurfaceCounterFlagsEXT))
    pure $ SwapchainCounterCreateInfoEXT
             surfaceCounters

instance Storable SwapchainCounterCreateInfoEXT where
  sizeOf ~_ = 24
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero SwapchainCounterCreateInfoEXT where
  zero = SwapchainCounterCreateInfoEXT
           zero


-- | VkDisplayPowerStateEXT - Possible power states for a display
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'DisplayPowerInfoEXT'
newtype DisplayPowerStateEXT = DisplayPowerStateEXT Int32
  deriving newtype (Eq, Ord, Storable, Zero)

-- | 'DISPLAY_POWER_STATE_OFF_EXT' specifies that the display is powered
-- down.
pattern DISPLAY_POWER_STATE_OFF_EXT     = DisplayPowerStateEXT 0
-- | 'DISPLAY_POWER_STATE_SUSPEND_EXT' specifies that the display is put into
-- a low power mode, from which it /may/ be able to transition back to
-- 'DISPLAY_POWER_STATE_ON_EXT' more quickly than if it were in
-- 'DISPLAY_POWER_STATE_OFF_EXT'. This state /may/ be the same as
-- 'DISPLAY_POWER_STATE_OFF_EXT'.
pattern DISPLAY_POWER_STATE_SUSPEND_EXT = DisplayPowerStateEXT 1
-- | 'DISPLAY_POWER_STATE_ON_EXT' specifies that the display is powered on.
pattern DISPLAY_POWER_STATE_ON_EXT      = DisplayPowerStateEXT 2
{-# complete DISPLAY_POWER_STATE_OFF_EXT,
             DISPLAY_POWER_STATE_SUSPEND_EXT,
             DISPLAY_POWER_STATE_ON_EXT :: DisplayPowerStateEXT #-}

conNameDisplayPowerStateEXT :: String
conNameDisplayPowerStateEXT = "DisplayPowerStateEXT"

enumPrefixDisplayPowerStateEXT :: String
enumPrefixDisplayPowerStateEXT = "DISPLAY_POWER_STATE_"

showTableDisplayPowerStateEXT :: [(DisplayPowerStateEXT, String)]
showTableDisplayPowerStateEXT =
  [ (DISPLAY_POWER_STATE_OFF_EXT    , "OFF_EXT")
  , (DISPLAY_POWER_STATE_SUSPEND_EXT, "SUSPEND_EXT")
  , (DISPLAY_POWER_STATE_ON_EXT     , "ON_EXT")
  ]

instance Show DisplayPowerStateEXT where
  showsPrec = enumShowsPrec enumPrefixDisplayPowerStateEXT
                            showTableDisplayPowerStateEXT
                            conNameDisplayPowerStateEXT
                            (\(DisplayPowerStateEXT x) -> x)
                            (showsPrec 11)

instance Read DisplayPowerStateEXT where
  readPrec = enumReadPrec enumPrefixDisplayPowerStateEXT
                          showTableDisplayPowerStateEXT
                          conNameDisplayPowerStateEXT
                          DisplayPowerStateEXT


-- | VkDeviceEventTypeEXT - Events that can occur on a device object
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'DeviceEventInfoEXT'
newtype DeviceEventTypeEXT = DeviceEventTypeEXT Int32
  deriving newtype (Eq, Ord, Storable, Zero)

-- | 'DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT' specifies that the fence is
-- signaled when a display is plugged into or unplugged from the specified
-- device. Applications /can/ use this notification to determine when they
-- need to re-enumerate the available displays on a device.
pattern DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT = DeviceEventTypeEXT 0
{-# complete DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT :: DeviceEventTypeEXT #-}

conNameDeviceEventTypeEXT :: String
conNameDeviceEventTypeEXT = "DeviceEventTypeEXT"

enumPrefixDeviceEventTypeEXT :: String
enumPrefixDeviceEventTypeEXT = "DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT"

showTableDeviceEventTypeEXT :: [(DeviceEventTypeEXT, String)]
showTableDeviceEventTypeEXT = [(DEVICE_EVENT_TYPE_DISPLAY_HOTPLUG_EXT, "")]

instance Show DeviceEventTypeEXT where
  showsPrec = enumShowsPrec enumPrefixDeviceEventTypeEXT
                            showTableDeviceEventTypeEXT
                            conNameDeviceEventTypeEXT
                            (\(DeviceEventTypeEXT x) -> x)
                            (showsPrec 11)

instance Read DeviceEventTypeEXT where
  readPrec =
    enumReadPrec enumPrefixDeviceEventTypeEXT showTableDeviceEventTypeEXT conNameDeviceEventTypeEXT DeviceEventTypeEXT


-- | VkDisplayEventTypeEXT - Events that can occur on a display object
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_display_control VK_EXT_display_control>,
-- 'DisplayEventInfoEXT'
newtype DisplayEventTypeEXT = DisplayEventTypeEXT Int32
  deriving newtype (Eq, Ord, Storable, Zero)

-- | 'DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT' specifies that the fence is
-- signaled when the first pixel of the next display refresh cycle leaves
-- the display engine for the display.
pattern DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT = DisplayEventTypeEXT 0
{-# complete DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT :: DisplayEventTypeEXT #-}

conNameDisplayEventTypeEXT :: String
conNameDisplayEventTypeEXT = "DisplayEventTypeEXT"

enumPrefixDisplayEventTypeEXT :: String
enumPrefixDisplayEventTypeEXT = "DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT"

showTableDisplayEventTypeEXT :: [(DisplayEventTypeEXT, String)]
showTableDisplayEventTypeEXT = [(DISPLAY_EVENT_TYPE_FIRST_PIXEL_OUT_EXT, "")]

instance Show DisplayEventTypeEXT where
  showsPrec = enumShowsPrec enumPrefixDisplayEventTypeEXT
                            showTableDisplayEventTypeEXT
                            conNameDisplayEventTypeEXT
                            (\(DisplayEventTypeEXT x) -> x)
                            (showsPrec 11)

instance Read DisplayEventTypeEXT where
  readPrec = enumReadPrec enumPrefixDisplayEventTypeEXT
                          showTableDisplayEventTypeEXT
                          conNameDisplayEventTypeEXT
                          DisplayEventTypeEXT


type EXT_DISPLAY_CONTROL_SPEC_VERSION = 1

-- No documentation found for TopLevel "VK_EXT_DISPLAY_CONTROL_SPEC_VERSION"
pattern EXT_DISPLAY_CONTROL_SPEC_VERSION :: forall a . Integral a => a
pattern EXT_DISPLAY_CONTROL_SPEC_VERSION = 1


type EXT_DISPLAY_CONTROL_EXTENSION_NAME = "VK_EXT_display_control"

-- No documentation found for TopLevel "VK_EXT_DISPLAY_CONTROL_EXTENSION_NAME"
pattern EXT_DISPLAY_CONTROL_EXTENSION_NAME :: forall a . (Eq a, IsString a) => a
pattern EXT_DISPLAY_CONTROL_EXTENSION_NAME = "VK_EXT_display_control"

