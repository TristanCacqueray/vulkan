{-# language Strict #-}
{-# language CPP #-}
{-# language GeneralizedNewtypeDeriving #-}
{-# language PatternSynonyms #-}
{-# language DataKinds #-}
{-# language TypeOperators #-}
{-# language DuplicateRecordFields #-}

module Graphics.Vulkan.Core10.PipelineLayout
  ( VkPipelineLayoutCreateFlags(..)
  , VkDescriptorSetLayout
  , vkCreatePipelineLayout
  , vkDestroyPipelineLayout
  , VkPushConstantRange(..)
  , VkPipelineLayoutCreateInfo(..)
  , VkShaderStageFlags
  ) where

import Data.Bits
  ( Bits
  , FiniteBits
  )
import Data.Word
  ( Word32
  )
import Foreign.Ptr
  ( plusPtr
  , Ptr
  )
import Foreign.Storable
  ( Storable(..)
  , Storable
  )
import GHC.Read
  ( expectP
  , choose
  )
import Graphics.Vulkan.NamedType
  ( (:::)
  )
import Text.ParserCombinators.ReadPrec
  ( (+++)
  , prec
  , step
  )
import Text.Read
  ( Read(..)
  , parens
  )
import Text.Read.Lex
  ( Lexeme(Ident)
  )


import Graphics.Vulkan.Core10.Core
  ( VkStructureType(..)
  , VkResult(..)
  , VkFlags
  )
import Graphics.Vulkan.Core10.DeviceInitialization
  ( VkAllocationCallbacks(..)
  , VkDevice
  )
import Graphics.Vulkan.Core10.Pipeline
  ( VkShaderStageFlagBits(..)
  , VkPipelineLayout
  )


-- ** VkPipelineLayoutCreateFlags

-- | VkPipelineLayoutCreateFlags - Reserved for future use
--
-- = Description
-- #_description#
--
-- @VkPipelineLayoutCreateFlags@ is a bitmask type for setting a mask, but
-- is currently reserved for future use.
--
-- = See Also
-- #_see_also#
--
-- 'VkPipelineLayoutCreateInfo'
newtype VkPipelineLayoutCreateFlags = VkPipelineLayoutCreateFlags VkFlags
  deriving (Eq, Ord, Storable, Bits, FiniteBits)

instance Show VkPipelineLayoutCreateFlags where
  
  showsPrec p (VkPipelineLayoutCreateFlags x) = showParen (p >= 11) (showString "VkPipelineLayoutCreateFlags " . showsPrec 11 x)

instance Read VkPipelineLayoutCreateFlags where
  readPrec = parens ( choose [ 
                             ] +++
                      prec 10 (do
                        expectP (Ident "VkPipelineLayoutCreateFlags")
                        v <- step readPrec
                        pure (VkPipelineLayoutCreateFlags v)
                        )
                    )


-- | Dummy data to tag the 'Ptr' with
data VkDescriptorSetLayout_T
-- | VkDescriptorSetLayout - Opaque handle to a descriptor set layout object
--
-- = Description
-- #_description#
--
-- = See Also
-- #_see_also#
--
-- 'Graphics.Vulkan.Core10.DescriptorSet.VkDescriptorSetAllocateInfo',
-- 'Graphics.Vulkan.Core11.Promoted_from_VK_KHR_descriptor_update_template.VkDescriptorUpdateTemplateCreateInfo',
-- 'VkPipelineLayoutCreateInfo',
-- 'Graphics.Vulkan.Core10.DescriptorSet.vkCreateDescriptorSetLayout',
-- 'Graphics.Vulkan.Core10.DescriptorSet.vkDestroyDescriptorSetLayout'
type VkDescriptorSetLayout = Ptr VkDescriptorSetLayout_T
-- | vkCreatePipelineLayout - Creates a new pipeline layout object
--
-- = Parameters
-- #_parameters#
--
-- -   @device@ is the logical device that creates the pipeline layout.
--
-- -   @pCreateInfo@ is a pointer to an instance of the
--     'VkPipelineLayoutCreateInfo' structure specifying the state of the
--     pipeline layout object.
--
-- -   @pAllocator@ controls host memory allocation as described in the
--     <{html_spec_relative}#memory-allocation Memory Allocation> chapter.
--
-- -   @pPipelineLayout@ points to a @VkPipelineLayout@ handle in which the
--     resulting pipeline layout object is returned.
--
-- = Description
-- #_description#
--
-- == Valid Usage (Implicit)
--
-- -   @device@ /must/ be a valid @VkDevice@ handle
--
-- -   @pCreateInfo@ /must/ be a valid pointer to a valid
--     @VkPipelineLayoutCreateInfo@ structure
--
-- -   If @pAllocator@ is not @NULL@, @pAllocator@ /must/ be a valid
--     pointer to a valid @VkAllocationCallbacks@ structure
--
-- -   @pPipelineLayout@ /must/ be a valid pointer to a @VkPipelineLayout@
--     handle
--
-- == Return Codes
--
-- [<#fundamentals-successcodes Success>]
--     -   @VK_SUCCESS@
--
-- [<#fundamentals-errorcodes Failure>]
--     -   @VK_ERROR_OUT_OF_HOST_MEMORY@
--
--     -   @VK_ERROR_OUT_OF_DEVICE_MEMORY@
--
-- = See Also
-- #_see_also#
--
-- 'Graphics.Vulkan.Core10.DeviceInitialization.VkAllocationCallbacks',
-- 'Graphics.Vulkan.Core10.DeviceInitialization.VkDevice',
-- 'Graphics.Vulkan.Core10.Pipeline.VkPipelineLayout',
-- 'VkPipelineLayoutCreateInfo'
foreign import ccall "vkCreatePipelineLayout" vkCreatePipelineLayout :: ("device" ::: VkDevice) -> ("pCreateInfo" ::: Ptr VkPipelineLayoutCreateInfo) -> ("pAllocator" ::: Ptr VkAllocationCallbacks) -> ("pPipelineLayout" ::: Ptr VkPipelineLayout) -> IO VkResult
-- | vkDestroyPipelineLayout - Destroy a pipeline layout object
--
-- = Parameters
-- #_parameters#
--
-- -   @device@ is the logical device that destroys the pipeline layout.
--
-- -   @pipelineLayout@ is the pipeline layout to destroy.
--
-- -   @pAllocator@ controls host memory allocation as described in the
--     <{html_spec_relative}#memory-allocation Memory Allocation> chapter.
--
-- = Description
-- #_description#
--
-- == Valid Usage
--
-- -   If @VkAllocationCallbacks@ were provided when @pipelineLayout@ was
--     created, a compatible set of callbacks /must/ be provided here
--
-- -   If no @VkAllocationCallbacks@ were provided when @pipelineLayout@
--     was created, @pAllocator@ /must/ be @NULL@
--
-- == Valid Usage (Implicit)
--
-- -   @device@ /must/ be a valid @VkDevice@ handle
--
-- -   If @pipelineLayout@ is not
--     'Graphics.Vulkan.Core10.Constants.VK_NULL_HANDLE', @pipelineLayout@
--     /must/ be a valid @VkPipelineLayout@ handle
--
-- -   If @pAllocator@ is not @NULL@, @pAllocator@ /must/ be a valid
--     pointer to a valid @VkAllocationCallbacks@ structure
--
-- -   If @pipelineLayout@ is a valid handle, it /must/ have been created,
--     allocated, or retrieved from @device@
--
-- == Host Synchronization
--
-- -   Host access to @pipelineLayout@ /must/ be externally synchronized
--
-- = See Also
-- #_see_also#
--
-- 'Graphics.Vulkan.Core10.DeviceInitialization.VkAllocationCallbacks',
-- 'Graphics.Vulkan.Core10.DeviceInitialization.VkDevice',
-- 'Graphics.Vulkan.Core10.Pipeline.VkPipelineLayout'
foreign import ccall "vkDestroyPipelineLayout" vkDestroyPipelineLayout :: ("device" ::: VkDevice) -> ("pipelineLayout" ::: VkPipelineLayout) -> ("pAllocator" ::: Ptr VkAllocationCallbacks) -> IO ()
-- | VkPushConstantRange - Structure specifying a push constant range
--
-- = Description
-- #_description#
--
-- == Valid Usage
--
-- -   @offset@ /must/ be less than
--     @VkPhysicalDeviceLimits@::@maxPushConstantsSize@
--
-- -   @offset@ /must/ be a multiple of @4@
--
-- -   @size@ /must/ be greater than @0@
--
-- -   @size@ /must/ be a multiple of @4@
--
-- -   @size@ /must/ be less than or equal to
--     @VkPhysicalDeviceLimits@::@maxPushConstantsSize@ minus @offset@
--
-- == Valid Usage (Implicit)
--
-- -   @stageFlags@ /must/ be a valid combination of
--     'Graphics.Vulkan.Core10.Pipeline.VkShaderStageFlagBits' values
--
-- -   @stageFlags@ /must/ not be @0@
--
-- = See Also
-- #_see_also#
--
-- 'VkPipelineLayoutCreateInfo', 'VkShaderStageFlags'
data VkPushConstantRange = VkPushConstantRange
  { -- No documentation found for Nested "VkPushConstantRange" "vkStageFlags"
  vkStageFlags :: VkShaderStageFlags
  , -- No documentation found for Nested "VkPushConstantRange" "vkOffset"
  vkOffset :: Word32
  , -- No documentation found for Nested "VkPushConstantRange" "vkSize"
  vkSize :: Word32
  }
  deriving (Eq, Show)

instance Storable VkPushConstantRange where
  sizeOf ~_ = 12
  alignment ~_ = 4
  peek ptr = VkPushConstantRange <$> peek (ptr `plusPtr` 0)
                                 <*> peek (ptr `plusPtr` 4)
                                 <*> peek (ptr `plusPtr` 8)
  poke ptr poked = poke (ptr `plusPtr` 0) (vkStageFlags (poked :: VkPushConstantRange))
                *> poke (ptr `plusPtr` 4) (vkOffset (poked :: VkPushConstantRange))
                *> poke (ptr `plusPtr` 8) (vkSize (poked :: VkPushConstantRange))
-- | VkPipelineLayoutCreateInfo - Structure specifying the parameters of a
-- newly created pipeline layout object
--
-- = Members
-- #_members#
--
-- -   @sType@ is the type of this structure.
--
-- -   @pNext@ is @NULL@ or a pointer to an extension-specific structure.
--
-- -   @flags@ is reserved for future use.
--
-- -   @setLayoutCount@ is the number of descriptor sets included in the
--     pipeline layout.
--
-- -   @pSetLayouts@ is a pointer to an array of @VkDescriptorSetLayout@
--     objects.
--
-- -   @pushConstantRangeCount@ is the number of push constant ranges
--     included in the pipeline layout.
--
-- -   @pPushConstantRanges@ is a pointer to an array of
--     @VkPushConstantRange@ structures defining a set of push constant
--     ranges for use in a single pipeline layout. In addition to
--     descriptor set layouts, a pipeline layout also describes how many
--     push constants /can/ be accessed by each stage of the pipeline.
--
--     __Note__
--
--     Push constants represent a high speed path to modify constant data
--     in pipelines that is expected to outperform memory-backed resource
--     updates.
--
-- = Description
-- #_description#
--
-- == Valid Usage
--
-- -   @setLayoutCount@ /must/ be less than or equal to
--     @VkPhysicalDeviceLimits@::@maxBoundDescriptorSets@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_SAMPLER@ and
--     @VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER@ accessible to any shader
--     stage across all elements of @pSetLayouts@ /must/ be less than or
--     equal to @VkPhysicalDeviceLimits@::@maxPerStageDescriptorSamplers@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER@ and
--     @VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC@ accessible to any shader
--     stage across all elements of @pSetLayouts@ /must/ be less than or
--     equal to
--     @VkPhysicalDeviceLimits@::@maxPerStageDescriptorUniformBuffers@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@ and
--     @VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC@ accessible to any shader
--     stage across all elements of @pSetLayouts@ /must/ be less than or
--     equal to
--     @VkPhysicalDeviceLimits@::@maxPerStageDescriptorStorageBuffers@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER@,
--     @VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE@, and
--     @VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER@ accessible to any shader
--     stage across all elements of @pSetLayouts@ /must/ be less than or
--     equal to
--     @VkPhysicalDeviceLimits@::@maxPerStageDescriptorSampledImages@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_STORAGE_IMAGE@, and
--     @VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER@ accessible to any shader
--     stage across all elements of @pSetLayouts@ /must/ be less than or
--     equal to
--     @VkPhysicalDeviceLimits@::@maxPerStageDescriptorStorageImages@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT@ accessible to any given shader
--     stage across all elements of @pSetLayouts@ /must/ be less than or
--     equal to
--     @VkPhysicalDeviceLimits@::@maxPerStageDescriptorInputAttachments@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_SAMPLER@ and
--     @VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER@ accessible across all
--     shader stages and across all elements of @pSetLayouts@ /must/ be
--     less than or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetSamplers@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER@ accessible across all shader
--     stagess and and across all elements of @pSetLayouts@ /must/ be less
--     than or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetUniformBuffers@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_UNIFORM_BUFFER_DYNAMIC@ accessible across all
--     shader stages and across all elements of @pSetLayouts@ /must/ be
--     less than or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetUniformBuffersDynamic@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_STORAGE_BUFFER@ accessible across all shader
--     stages and across all elements of @pSetLayouts@ /must/ be less than
--     or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetStorageBuffers@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_STORAGE_BUFFER_DYNAMIC@ accessible across all
--     shader stages and across all elements of @pSetLayouts@ /must/ be
--     less than or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetStorageBuffersDynamic@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER@,
--     @VK_DESCRIPTOR_TYPE_SAMPLED_IMAGE@, and
--     @VK_DESCRIPTOR_TYPE_UNIFORM_TEXEL_BUFFER@ accessible across all
--     shader stages and across all elements of @pSetLayouts@ /must/ be
--     less than or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetSampledImages@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_STORAGE_IMAGE@, and
--     @VK_DESCRIPTOR_TYPE_STORAGE_TEXEL_BUFFER@ accessible across all
--     shader stages and across all elements of @pSetLayouts@ /must/ be
--     less than or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetStorageImages@
--
-- -   The total number of descriptors of the type
--     @VK_DESCRIPTOR_TYPE_INPUT_ATTACHMENT@ accessible across all shader
--     stages and across all elements of @pSetLayouts@ /must/ be less than
--     or equal to
--     @VkPhysicalDeviceLimits@::@maxDescriptorSetInputAttachments@
--
-- -   Any two elements of @pPushConstantRanges@ /must/ not include the
--     same stage in @stageFlags@
--
-- == Valid Usage (Implicit)
--
-- -   @sType@ /must/ be @VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO@
--
-- -   @pNext@ /must/ be @NULL@
--
-- -   @flags@ /must/ be @0@
--
-- -   If @setLayoutCount@ is not @0@, @pSetLayouts@ /must/ be a valid
--     pointer to an array of @setLayoutCount@ valid
--     @VkDescriptorSetLayout@ handles
--
-- -   If @pushConstantRangeCount@ is not @0@, @pPushConstantRanges@ /must/
--     be a valid pointer to an array of @pushConstantRangeCount@ valid
--     @VkPushConstantRange@ structures
--
-- = See Also
-- #_see_also#
--
-- 'VkDescriptorSetLayout', 'VkPipelineLayoutCreateFlags',
-- 'VkPushConstantRange', 'Graphics.Vulkan.Core10.Core.VkStructureType',
-- 'vkCreatePipelineLayout'
data VkPipelineLayoutCreateInfo = VkPipelineLayoutCreateInfo
  { -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkSType"
  vkSType :: VkStructureType
  , -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkPNext"
  vkPNext :: Ptr ()
  , -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkFlags"
  vkFlags :: VkPipelineLayoutCreateFlags
  , -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkSetLayoutCount"
  vkSetLayoutCount :: Word32
  , -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkPSetLayouts"
  vkPSetLayouts :: Ptr VkDescriptorSetLayout
  , -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkPushConstantRangeCount"
  vkPushConstantRangeCount :: Word32
  , -- No documentation found for Nested "VkPipelineLayoutCreateInfo" "vkPPushConstantRanges"
  vkPPushConstantRanges :: Ptr VkPushConstantRange
  }
  deriving (Eq, Show)

instance Storable VkPipelineLayoutCreateInfo where
  sizeOf ~_ = 48
  alignment ~_ = 8
  peek ptr = VkPipelineLayoutCreateInfo <$> peek (ptr `plusPtr` 0)
                                        <*> peek (ptr `plusPtr` 8)
                                        <*> peek (ptr `plusPtr` 16)
                                        <*> peek (ptr `plusPtr` 20)
                                        <*> peek (ptr `plusPtr` 24)
                                        <*> peek (ptr `plusPtr` 32)
                                        <*> peek (ptr `plusPtr` 40)
  poke ptr poked = poke (ptr `plusPtr` 0) (vkSType (poked :: VkPipelineLayoutCreateInfo))
                *> poke (ptr `plusPtr` 8) (vkPNext (poked :: VkPipelineLayoutCreateInfo))
                *> poke (ptr `plusPtr` 16) (vkFlags (poked :: VkPipelineLayoutCreateInfo))
                *> poke (ptr `plusPtr` 20) (vkSetLayoutCount (poked :: VkPipelineLayoutCreateInfo))
                *> poke (ptr `plusPtr` 24) (vkPSetLayouts (poked :: VkPipelineLayoutCreateInfo))
                *> poke (ptr `plusPtr` 32) (vkPushConstantRangeCount (poked :: VkPipelineLayoutCreateInfo))
                *> poke (ptr `plusPtr` 40) (vkPPushConstantRanges (poked :: VkPipelineLayoutCreateInfo))
-- | VkShaderStageFlags - Bitmask of VkShaderStageFlagBits
--
-- = Description
-- #_description#
--
-- @VkShaderStageFlags@ is a bitmask type for setting a mask of zero or
-- more 'Graphics.Vulkan.Core10.Pipeline.VkShaderStageFlagBits'.
--
-- = See Also
-- #_see_also#
--
-- 'Graphics.Vulkan.Core10.DescriptorSet.VkDescriptorSetLayoutBinding',
-- 'Graphics.Vulkan.Extensions.VK_NVX_device_generated_commands.VkObjectTablePushConstantEntryNVX',
-- 'Graphics.Vulkan.Core11.Promoted_From_VK_KHR_subgroup.VkPhysicalDeviceSubgroupProperties',
-- 'VkPushConstantRange',
-- 'Graphics.Vulkan.Core10.Pipeline.VkShaderStageFlagBits',
-- 'Graphics.Vulkan.Extensions.VK_AMD_shader_info.VkShaderStatisticsInfoAMD',
-- 'Graphics.Vulkan.Core10.CommandBufferBuilding.vkCmdPushConstants'
type VkShaderStageFlags = VkShaderStageFlagBits