{-# language CPP #-}
-- | = Name
--
-- VK_NV_win32_keyed_mutex - device extension
--
-- == VK_NV_win32_keyed_mutex
--
-- [__Name String__]
--     @VK_NV_win32_keyed_mutex@
--
-- [__Extension Type__]
--     Device extension
--
-- [__Registered Extension Number__]
--     59
--
-- [__Revision__]
--     2
--
-- [__Extension and Version Dependencies__]
--
--     -   Requires Vulkan 1.0
--
--     -   Requires @VK_NV_external_memory_win32@
--
-- [__Deprecation state__]
--
--     -   /Promoted/ to @VK_KHR_win32_keyed_mutex@ extension
--
-- [__Contact__]
--
--     -   Carsten Rohde
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_NV_win32_keyed_mutex] @crohde%0A<<Here describe the issue or question you have about the VK_NV_win32_keyed_mutex extension>> >
--
-- == Other Extension Metadata
--
-- [__Last Modified Date__]
--     2016-08-19
--
-- [__IP Status__]
--     No known IP claims.
--
-- [__Contributors__]
--
--     -   James Jones, NVIDIA
--
--     -   Carsten Rohde, NVIDIA
--
-- == Description
--
-- Applications that wish to import Direct3D 11 memory objects into the
-- Vulkan API may wish to use the native keyed mutex mechanism to
-- synchronize access to the memory between Vulkan and Direct3D. This
-- extension provides a way for an application to access the keyed mutex
-- associated with an imported Vulkan memory object when submitting command
-- buffers to a queue.
--
-- == New Structures
--
-- -   Extending 'Vulkan.Core10.Queue.SubmitInfo',
--     'Vulkan.Extensions.VK_KHR_synchronization2.SubmitInfo2KHR':
--
--     -   'Win32KeyedMutexAcquireReleaseInfoNV'
--
-- == New Enum Constants
--
-- -   'NV_WIN32_KEYED_MUTEX_EXTENSION_NAME'
--
-- -   'NV_WIN32_KEYED_MUTEX_SPEC_VERSION'
--
-- -   Extending 'Vulkan.Core10.Enums.StructureType.StructureType':
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV'
--
-- == Examples
--
-- >     //
-- >     // Import a memory object from Direct3D 11, and synchronize
-- >     // access to it in Vulkan using keyed mutex objects.
-- >     //
-- >
-- >     extern VkPhysicalDevice physicalDevice;
-- >     extern VkDevice device;
-- >     extern HANDLE sharedNtHandle;
-- >
-- >     static const VkFormat format = VK_FORMAT_R8G8B8A8_UNORM;
-- >     static const VkExternalMemoryHandleTypeFlagsNV handleType =
-- >         VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV;
-- >
-- >     VkPhysicalDeviceMemoryProperties memoryProperties;
-- >     VkExternalImageFormatPropertiesNV properties;
-- >     VkExternalMemoryImageCreateInfoNV externalMemoryImageCreateInfo;
-- >     VkImageCreateInfo imageCreateInfo;
-- >     VkImage image;
-- >     VkMemoryRequirements imageMemoryRequirements;
-- >     uint32_t numMemoryTypes;
-- >     uint32_t memoryType;
-- >     VkImportMemoryWin32HandleInfoNV importMemoryInfo;
-- >     VkMemoryAllocateInfo memoryAllocateInfo;
-- >     VkDeviceMemory mem;
-- >     VkResult result;
-- >
-- >     // Figure out how many memory types the device supports
-- >     vkGetPhysicalDeviceMemoryProperties(physicalDevice,
-- >                                         &memoryProperties);
-- >     numMemoryTypes = memoryProperties.memoryTypeCount;
-- >
-- >     // Check the external handle type capabilities for the chosen format
-- >     // Importable 2D image support with at least 1 mip level, 1 array
-- >     // layer, and VK_SAMPLE_COUNT_1_BIT using optimal tiling and supporting
-- >     // texturing and color rendering is required.
-- >     result = vkGetPhysicalDeviceExternalImageFormatPropertiesNV(
-- >         physicalDevice,
-- >         format,
-- >         VK_IMAGE_TYPE_2D,
-- >         VK_IMAGE_TILING_OPTIMAL,
-- >         VK_IMAGE_USAGE_SAMPLED_BIT |
-- >         VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT,
-- >         0,
-- >         handleType,
-- >         &properties);
-- >
-- >     if ((result != VK_SUCCESS) ||
-- >         !(properties.externalMemoryFeatures &
-- >           VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV)) {
-- >         abort();
-- >     }
-- >
-- >     // Set up the external memory image creation info
-- >     memset(&externalMemoryImageCreateInfo,
-- >            0, sizeof(externalMemoryImageCreateInfo));
-- >     externalMemoryImageCreateInfo.sType =
-- >         VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV;
-- >     externalMemoryImageCreateInfo.handleTypes = handleType;
-- >     // Set up the  core image creation info
-- >     memset(&imageCreateInfo, 0, sizeof(imageCreateInfo));
-- >     imageCreateInfo.sType = VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO;
-- >     imageCreateInfo.pNext = &externalMemoryImageCreateInfo;
-- >     imageCreateInfo.format = format;
-- >     imageCreateInfo.extent.width = 64;
-- >     imageCreateInfo.extent.height = 64;
-- >     imageCreateInfo.extent.depth = 1;
-- >     imageCreateInfo.mipLevels = 1;
-- >     imageCreateInfo.arrayLayers = 1;
-- >     imageCreateInfo.samples = VK_SAMPLE_COUNT_1_BIT;
-- >     imageCreateInfo.tiling = VK_IMAGE_TILING_OPTIMAL;
-- >     imageCreateInfo.usage = VK_IMAGE_USAGE_SAMPLED_BIT |
-- >         VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT;
-- >     imageCreateInfo.sharingMode = VK_SHARING_MODE_EXCLUSIVE;
-- >     imageCreateInfo.initialLayout = VK_IMAGE_LAYOUT_UNDEFINED;
-- >
-- >     vkCreateImage(device, &imageCreateInfo, NULL, &image);
-- >     vkGetImageMemoryRequirements(device,
-- >                                  image,
-- >                                  &imageMemoryRequirements);
-- >
-- >     // For simplicity, just pick the first compatible memory type.
-- >     for (memoryType = 0; memoryType < numMemoryTypes; memoryType++) {
-- >         if ((1 << memoryType) & imageMemoryRequirements.memoryTypeBits) {
-- >             break;
-- >         }
-- >     }
-- >
-- >     // At least one memory type must be supported given the prior external
-- >     // handle capability check.
-- >     assert(memoryType < numMemoryTypes);
-- >
-- >     // Allocate the external memory object.
-- >     memset(&exportMemoryAllocateInfo, 0, sizeof(exportMemoryAllocateInfo));
-- >     exportMemoryAllocateInfo.sType =
-- >         VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV;
-- >     importMemoryInfo.handleTypes = handleType;
-- >     importMemoryInfo.handle = sharedNtHandle;
-- >
-- >     memset(&memoryAllocateInfo, 0, sizeof(memoryAllocateInfo));
-- >     memoryAllocateInfo.sType = VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO;
-- >     memoryAllocateInfo.pNext = &exportMemoryAllocateInfo;
-- >     memoryAllocateInfo.allocationSize = imageMemoryRequirements.size;
-- >     memoryAllocateInfo.memoryTypeIndex = memoryType;
-- >
-- >     vkAllocateMemory(device, &memoryAllocateInfo, NULL, &mem);
-- >
-- >     vkBindImageMemory(device, image, mem, 0);
-- >
-- >     ...
-- >
-- >     const uint64_t acquireKey = 1;
-- >     const uint32_t timeout = INFINITE;
-- >     const uint64_t releaseKey = 2;
-- >
-- >     VkWin32KeyedMutexAcquireReleaseInfoNV keyedMutex =
-- >         { VK_STRUCTURE_TYPE_WIN32_KEYED_MUTEX_ACQUIRE_RELEASE_INFO_NV };
-- >     keyedMutex.acquireCount = 1;
-- >     keyedMutex.pAcquireSyncs = &mem;
-- >     keyedMutex.pAcquireKeys = &acquireKey;
-- >     keyedMutex.pAcquireTimeoutMilliseconds = &timeout;
-- >     keyedMutex.releaseCount = 1;
-- >     keyedMutex.pReleaseSyncs = &mem;
-- >     keyedMutex.pReleaseKeys = &releaseKey;
-- >
-- >     VkSubmitInfo submit_info = { VK_STRUCTURE_TYPE_SUBMIT_INFO, &keyedMutex };
-- >     submit_info.commandBufferCount = 1;
-- >     submit_info.pCommandBuffers = &cmd_buf;
-- >     vkQueueSubmit(queue, 1, &submit_info, VK_NULL_HANDLE);
--
-- == Version History
--
-- -   Revision 2, 2016-08-11 (James Jones)
--
--     -   Updated sample code based on the NV external memory extensions.
--
--     -   Renamed from NVX to NV extension.
--
--     -   Added Overview and Description sections.
--
--     -   Updated sample code to use the NV external memory extensions.
--
-- -   Revision 1, 2016-06-14 (Carsten Rohde)
--
--     -   Initial draft.
--
-- == See Also
--
-- 'Win32KeyedMutexAcquireReleaseInfoNV'
--
-- == Document Notes
--
-- For more information, see the
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_NV_win32_keyed_mutex Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_NV_win32_keyed_mutex  (Win32KeyedMutexAcquireReleaseInfoNV) where

import Vulkan.CStruct (FromCStruct)
import Vulkan.CStruct (ToCStruct)
import Data.Kind (Type)

data Win32KeyedMutexAcquireReleaseInfoNV

instance ToCStruct Win32KeyedMutexAcquireReleaseInfoNV
instance Show Win32KeyedMutexAcquireReleaseInfoNV

instance FromCStruct Win32KeyedMutexAcquireReleaseInfoNV

