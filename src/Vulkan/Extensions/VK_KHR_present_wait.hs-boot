{-# language CPP #-}
-- | = Name
--
-- VK_KHR_present_wait - device extension
--
-- == VK_KHR_present_wait
--
-- [__Name String__]
--     @VK_KHR_present_wait@
--
-- [__Extension Type__]
--     Device extension
--
-- [__Registered Extension Number__]
--     249
--
-- [__Revision__]
--     1
--
-- [__Extension and Version Dependencies__]
--
--     -   Requires support for Vulkan 1.0
--
--     -   Requires @VK_KHR_swapchain@ to be enabled for any device-level
--         functionality
--
--     -   Requires @VK_KHR_present_id@ to be enabled for any device-level
--         functionality
--
-- [__Contact__]
--
--     -   Keith Packard
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_KHR_present_wait] @keithp%0A*Here describe the issue or question you have about the VK_KHR_present_wait extension* >
--
-- == Other Extension Metadata
--
-- [__Last Modified Date__]
--     2019-05-15
--
-- [__IP Status__]
--     No known IP claims.
--
-- [__Contributors__]
--
--     -   Keith Packard, Valve
--
--     -   Ian Elliott, Google
--
--     -   Tobias Hector, AMD
--
--     -   Daniel Stone, Collabora
--
-- == Description
--
-- This device extension allows an application that uses the
-- @VK_KHR_swapchain@ extension to wait for present operations to complete.
-- An application can use this to monitor and control the pacing of the
-- application by managing the number of outstanding images yet to be
-- presented.
--
-- == New Commands
--
-- -   'waitForPresentKHR'
--
-- == New Structures
--
-- -   Extending
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.PhysicalDeviceFeatures2',
--     'Vulkan.Core10.Device.DeviceCreateInfo':
--
--     -   'PhysicalDevicePresentWaitFeaturesKHR'
--
-- == New Enum Constants
--
-- -   'KHR_PRESENT_WAIT_EXTENSION_NAME'
--
-- -   'KHR_PRESENT_WAIT_SPEC_VERSION'
--
-- -   Extending 'Vulkan.Core10.Enums.StructureType.StructureType':
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_PHYSICAL_DEVICE_PRESENT_WAIT_FEATURES_KHR'
--
-- == Issues
--
-- 1) When does the wait finish?
--
-- __RESOLVED__. The wait will finish when the present is visible to the
-- user. There is no requirement for any precise timing relationship
-- between the presentation of the image to the user, but implementations
-- /should/ signal the wait as close as possible to the presentation of the
-- first pixel in the new image to the user.
--
-- 2) Should this use fences or other existing synchronization mechanism.
--
-- __RESOLVED__. Because display and rendering are often implemented in
-- separate drivers, this extension will provide a separate synchronization
-- API.
--
-- 3) Should this extension share present identification with other
-- extensions?
--
-- __RESOLVED__. Yes. A new extension, VK_KHR_present_id, should be created
-- to provide a shared structure for presentation identifiers.
--
-- 4) What happens when presentations complete out of order wrt calls to
-- vkQueuePresent? This could happen if the semaphores for the
-- presentations were ready out of order.
--
-- __OPTION A__: Require that when a PresentId is set that the driver
-- ensure that images are always presented in the order of calls to
-- vkQueuePresent.
--
-- __OPTION B__: Finish both waits when the earliest present completes.
-- This will complete the later present wait earlier than the actual
-- presentation. This should be the easiest to implement as the driver need
-- only track the largest present ID completed. This is also the
-- \'natural\' consequence of interpreting the existing vkWaitForPresentKHR
-- specificationn.
--
-- __OPTION C__: Finish both waits when both have completed. This will
-- complete the earlier presentation later than the actual presentation
-- time. This is allowed by the current specification as there is no
-- precise timing requirement for when the presentId value is updated. This
-- requires slightly more complexity in the driver as it will need to track
-- all outstanding presentId values.
--
-- == Version History
--
-- -   Revision 1, 2019-02-19 (Keith Packard)
--
--     -   Initial version
--
-- == See Also
--
-- 'PhysicalDevicePresentWaitFeaturesKHR', 'waitForPresentKHR'
--
-- == Document Notes
--
-- For more information, see the
-- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#VK_KHR_present_wait Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_KHR_present_wait  (PhysicalDevicePresentWaitFeaturesKHR) where

import Vulkan.CStruct (FromCStruct)
import Vulkan.CStruct (ToCStruct)
import Data.Kind (Type)

data PhysicalDevicePresentWaitFeaturesKHR

instance ToCStruct PhysicalDevicePresentWaitFeaturesKHR
instance Show PhysicalDevicePresentWaitFeaturesKHR

instance FromCStruct PhysicalDevicePresentWaitFeaturesKHR

