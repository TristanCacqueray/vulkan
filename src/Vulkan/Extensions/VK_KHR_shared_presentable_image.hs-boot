{-# language CPP #-}
-- | = Name
--
-- VK_KHR_shared_presentable_image - device extension
--
-- == VK_KHR_shared_presentable_image
--
-- [__Name String__]
--     @VK_KHR_shared_presentable_image@
--
-- [__Extension Type__]
--     Device extension
--
-- [__Registered Extension Number__]
--     112
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
--     -   Requires @VK_KHR_get_physical_device_properties2@ to be enabled
--         for any device-level functionality
--
--     -   Requires @VK_KHR_get_surface_capabilities2@ to be enabled for
--         any device-level functionality
--
-- [__Contact__]
--
--     -   Alon Or-bach
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_KHR_shared_presentable_image] @alonorbach%0A*Here describe the issue or question you have about the VK_KHR_shared_presentable_image extension* >
--
-- == Other Extension Metadata
--
-- [__Last Modified Date__]
--     2017-03-20
--
-- [__IP Status__]
--     No known IP claims.
--
-- [__Contributors__]
--
--     -   Alon Or-bach, Samsung Electronics
--
--     -   Ian Elliott, Google
--
--     -   Jesse Hall, Google
--
--     -   Pablo Ceballos, Google
--
--     -   Chris Forbes, Google
--
--     -   Jeff Juliano, NVIDIA
--
--     -   James Jones, NVIDIA
--
--     -   Daniel Rakos, AMD
--
--     -   Tobias Hector, Imagination Technologies
--
--     -   Graham Connor, Imagination Technologies
--
--     -   Michael Worcester, Imagination Technologies
--
--     -   Cass Everitt, Oculus
--
--     -   Johannes Van Waveren, Oculus
--
-- == Description
--
-- This extension extends @VK_KHR_swapchain@ to enable creation of a shared
-- presentable image. This allows the application to use the image while
-- the presention engine is accessing it, in order to reduce the latency
-- between rendering and presentation.
--
-- == New Commands
--
-- -   'getSwapchainStatusKHR'
--
-- == New Structures
--
-- -   Extending
--     'Vulkan.Extensions.VK_KHR_get_surface_capabilities2.SurfaceCapabilities2KHR':
--
--     -   'SharedPresentSurfaceCapabilitiesKHR'
--
-- == New Enum Constants
--
-- -   'KHR_SHARED_PRESENTABLE_IMAGE_EXTENSION_NAME'
--
-- -   'KHR_SHARED_PRESENTABLE_IMAGE_SPEC_VERSION'
--
-- -   Extending 'Vulkan.Core10.Enums.ImageLayout.ImageLayout':
--
--     -   'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_SHARED_PRESENT_KHR'
--
-- -   Extending 'Vulkan.Extensions.VK_KHR_surface.PresentModeKHR':
--
--     -   'Vulkan.Extensions.VK_KHR_surface.PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR'
--
--     -   'Vulkan.Extensions.VK_KHR_surface.PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR'
--
-- -   Extending 'Vulkan.Core10.Enums.StructureType.StructureType':
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_SHARED_PRESENT_SURFACE_CAPABILITIES_KHR'
--
-- == Issues
--
-- 1) Should we allow a Vulkan WSI swapchain to toggle between normal usage
-- and shared presentation usage?
--
-- __RESOLVED__: No. WSI swapchains are typically recreated with new
-- properties instead of having their properties changed. This can also
-- save resources, assuming that fewer images are needed for shared
-- presentation, and assuming that most VR applications do not need to
-- switch between normal and shared usage.
--
-- 2) Should we have a query for determining how the presentation engine
-- refresh is triggered?
--
-- __RESOLVED__: Yes. This is done via which presentation modes a surface
-- supports.
--
-- 3) Should the object representing a shared presentable image be an
-- extension of a 'Vulkan.Extensions.Handles.SwapchainKHR' or a separate
-- object?
--
-- __RESOLVED__: Extension of a swapchain due to overlap in creation
-- properties and to allow common functionality between shared and normal
-- presentable images and swapchains.
--
-- 4) What should we call the extension and the new structures it creates?
--
-- __RESOLVED__: Shared presentable image \/ shared present.
--
-- 5) Should the @minImageCount@ and @presentMode@ values of the
-- 'Vulkan.Extensions.VK_KHR_swapchain.SwapchainCreateInfoKHR' be ignored,
-- or required to be compatible values?
--
-- __RESOLVED__: @minImageCount@ must be set to 1, and @presentMode@ should
-- be set to either
-- 'Vulkan.Extensions.VK_KHR_surface.PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR'
-- or
-- 'Vulkan.Extensions.VK_KHR_surface.PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR'.
--
-- 6) What should the layout of the shared presentable image be?
--
-- __RESOLVED__: After acquiring the shared presentable image, the
-- application must transition it to the
-- 'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_SHARED_PRESENT_KHR' layout
-- prior to it being used. After this initial transition, any image usage
-- that was requested during swapchain creation /can/ be performed on the
-- image without layout transitions being performed.
--
-- 7) Do we need a new API for the trigger to refresh new content?
--
-- __RESOLVED__: 'Vulkan.Extensions.VK_KHR_swapchain.queuePresentKHR' to
-- act as API to trigger a refresh, as will allow combination with other
-- compatible extensions to
-- 'Vulkan.Extensions.VK_KHR_swapchain.queuePresentKHR'.
--
-- 8) How should an application detect a
-- 'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_DATE_KHR' error on a swapchain
-- using the
-- 'Vulkan.Extensions.VK_KHR_surface.PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR'
-- present mode?
--
-- __RESOLVED__: Introduce 'getSwapchainStatusKHR' to allow applications to
-- query the status of a swapchain using a shared presentation mode.
--
-- 9) What should subsequent calls to
-- 'Vulkan.Extensions.VK_KHR_swapchain.queuePresentKHR' for
-- 'Vulkan.Extensions.VK_KHR_surface.PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR'
-- swapchains be defined to do?
--
-- __RESOLVED__: State that implementations may use it as a hint for
-- updated content.
--
-- 10) Can the ownership of a shared presentable image be transferred to a
-- different queue?
--
-- __RESOLVED__: No. It is not possible to transfer ownership of a shared
-- presentable image obtained from a swapchain created using
-- 'Vulkan.Core10.Enums.SharingMode.SHARING_MODE_EXCLUSIVE' after it has
-- been presented.
--
-- 11) How should 'Vulkan.Core10.Queue.queueSubmit' behave if a command
-- buffer uses an image from a
-- 'Vulkan.Core10.Enums.Result.ERROR_OUT_OF_DATE_KHR' swapchain?
--
-- __RESOLVED__: 'Vulkan.Core10.Queue.queueSubmit' is expected to return
-- the 'Vulkan.Core10.Enums.Result.ERROR_DEVICE_LOST' error.
--
-- 12) Can Vulkan provide any guarantee on the order of rendering, to
-- enable beam chasing?
--
-- __RESOLVED__: This could be achieved via use of render passes to ensure
-- strip rendering.
--
-- == Version History
--
-- -   Revision 1, 2017-03-20 (Alon Or-bach)
--
--     -   Internal revisions
--
-- == See Also
--
-- 'SharedPresentSurfaceCapabilitiesKHR', 'getSwapchainStatusKHR'
--
-- == Document Notes
--
-- For more information, see the
-- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#VK_KHR_shared_presentable_image Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_KHR_shared_presentable_image  (SharedPresentSurfaceCapabilitiesKHR) where

import Vulkan.CStruct (FromCStruct)
import Vulkan.CStruct (ToCStruct)
import Data.Kind (Type)

data SharedPresentSurfaceCapabilitiesKHR

instance ToCStruct SharedPresentSurfaceCapabilitiesKHR
instance Show SharedPresentSurfaceCapabilitiesKHR

instance FromCStruct SharedPresentSurfaceCapabilitiesKHR

