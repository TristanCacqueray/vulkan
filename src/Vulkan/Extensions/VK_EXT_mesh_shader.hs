{-# language CPP #-}
-- | = Name
--
-- VK_EXT_mesh_shader - device extension
--
-- == VK_EXT_mesh_shader
--
-- [__Name String__]
--     @VK_EXT_mesh_shader@
--
-- [__Extension Type__]
--     Device extension
--
-- [__Registered Extension Number__]
--     329
--
-- [__Revision__]
--     1
--
-- [__Extension and Version Dependencies__]
--
--     -   Requires support for Vulkan 1.0
--
--     -   Requires @VK_KHR_get_physical_device_properties2@ to be enabled
--         for any device-level functionality
--
--     -   Requires @VK_KHR_spirv_1_4@ to be enabled for any device-level
--         functionality
--
-- [__Contact__]
--
--     -   Christoph Kubisch
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_EXT_mesh_shader] @pixeljetstream%0A*Here describe the issue or question you have about the VK_EXT_mesh_shader extension* >
--
-- [__Extension Proposal__]
--     <https://github.com/KhronosGroup/Vulkan-Docs/tree/main/proposals/VK_EXT_mesh_shader.adoc VK_EXT_mesh_shader>
--
-- == Other Extension Metadata
--
-- [__Last Modified Date__]
--     2022-01-20
--
-- [__Interactions and External Dependencies__]
--
--     -   This extension requires
--         <https://htmlpreview.github.io/?https://github.com/KhronosGroup/SPIRV-Registry/blob/master/extensions/EXT/SPV_EXT_mesh_shader.html SPV_EXT_mesh_shader>
--
--     -   This extension provides API support for
--         <https://github.com/KhronosGroup/GLSL/blob/master/extensions/ext/GLSL_EXT_mesh_shader.txt GLSL_EXT_mesh_shader>
--
--     -   Interacts with Vulkan 1.1
--
--     -   Interacts with @VK_KHR_multiview@
--
--     -   Interacts with @VK_KHR_fragment_shading_rate@
--
-- [__Contributors__]
--
--     -   Christoph Kubisch, NVIDIA
--
--     -   Pat Brown, NVIDIA
--
--     -   Jeff Bolz, NVIDIA
--
--     -   Daniel Koch, NVIDIA
--
--     -   Piers Daniell, NVIDIA
--
--     -   Pierre Boudier, NVIDIA
--
--     -   Patrick Mours, NVIDIA
--
--     -   David Zhao Akeley, NVIDIA
--
--     -   Kedarnath Thangudu, NVIDIA
--
--     -   Timur Kristóf, Valve
--
--     -   Hans-Kristian Arntzen, Valve
--
--     -   Philip Rebohle, Valve
--
--     -   Mike Blumenkrantz, Valve
--
--     -   Slawomir Grajewski, Intel
--
--     -   Michal Pietrasiuk, Intel
--
--     -   Mariusz Merecki, Intel
--
--     -   Tom Olson, ARM
--
--     -   Jan-Harald Fredriksen, ARM
--
--     -   Sandeep Kakarlapudi, ARM
--
--     -   Ruihao Zhang, QUALCOMM
--
--     -   Ricardo Garcia, Igalia, S.L.
--
--     -   Tobias Hector, AMD
--
--     -   Stu Smith, AMD
--
-- == Description
--
-- This extension provides a new mechanism allowing applications to
-- generate collections of geometric primitives via programmable mesh
-- shading. It is an alternative to the existing programmable primitive
-- shading pipeline, which relied on generating input primitives by a fixed
-- function assembler as well as fixed function vertex fetch.
--
-- This extension also adds support for the following SPIR-V extension in
-- Vulkan:
--
-- -   <https://htmlpreview.github.io/?https://github.com/KhronosGroup/SPIRV-Registry/blob/master/extensions/EXT/SPV_EXT_mesh_shader.html SPV_EXT_mesh_shader>
--
-- == New Commands
--
-- -   'cmdDrawMeshTasksEXT'
--
-- -   'cmdDrawMeshTasksIndirectCountEXT'
--
-- -   'cmdDrawMeshTasksIndirectEXT'
--
-- == New Structures
--
-- -   'DrawMeshTasksIndirectCommandEXT'
--
-- -   Extending
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.PhysicalDeviceFeatures2',
--     'Vulkan.Core10.Device.DeviceCreateInfo':
--
--     -   'PhysicalDeviceMeshShaderFeaturesEXT'
--
-- -   Extending
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.PhysicalDeviceProperties2':
--
--     -   'PhysicalDeviceMeshShaderPropertiesEXT'
--
-- == New Enum Constants
--
-- -   'EXT_MESH_SHADER_EXTENSION_NAME'
--
-- -   'EXT_MESH_SHADER_SPEC_VERSION'
--
-- -   Extending
--     'Vulkan.Core10.Enums.PipelineStageFlagBits.PipelineStageFlagBits':
--
--     -   'Vulkan.Core10.Enums.PipelineStageFlagBits.PIPELINE_STAGE_MESH_SHADER_BIT_EXT'
--
--     -   'Vulkan.Core10.Enums.PipelineStageFlagBits.PIPELINE_STAGE_TASK_SHADER_BIT_EXT'
--
-- -   Extending
--     'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QueryPipelineStatisticFlagBits':
--
--     -   'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QUERY_PIPELINE_STATISTIC_MESH_SHADER_INVOCATIONS_BIT_EXT'
--
--     -   'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QUERY_PIPELINE_STATISTIC_TASK_SHADER_INVOCATIONS_BIT_EXT'
--
-- -   Extending 'Vulkan.Core10.Enums.QueryType.QueryType':
--
--     -   'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_MESH_PRIMITIVES_GENERATED_EXT'
--
-- -   Extending
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.ShaderStageFlagBits':
--
--     -   'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_MESH_BIT_EXT'
--
--     -   'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TASK_BIT_EXT'
--
-- -   Extending 'Vulkan.Core10.Enums.StructureType.StructureType':
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT'
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT'
--
-- If
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_NV_device_generated_commands VK_NV_device_generated_commands>
-- is supported:
--
-- -   Extending
--     'Vulkan.Extensions.VK_NV_device_generated_commands.IndirectCommandsTokenTypeNV':
--
--     -   'Vulkan.Extensions.VK_NV_device_generated_commands.INDIRECT_COMMANDS_TOKEN_TYPE_DRAW_MESH_TASKS_NV'
--
-- == New or Modified Built-In Variables
--
-- -   <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#interfaces-builtin-variables-cullprimitive CullPrimitiveEXT>
--
-- -   <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#interfaces-builtin-variables-primitivepointindices PrimitivePointIndicesEXT>
--
-- -   <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#interfaces-builtin-variables-primitivelineindices PrimitiveLineIndicesEXT>
--
-- -   <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#interfaces-builtin-variables-primitivetriangleindices PrimitiveTriangleIndicesEXT>
--
-- -   (modified)@Position@
--
-- -   (modified)@PointSize@
--
-- -   (modified)@ClipDistance@
--
-- -   (modified)@CullDistance@
--
-- -   (modified)@PrimitiveId@
--
-- -   (modified)@Layer@
--
-- -   (modified)@ViewportIndex@
--
-- -   (modified)@NumWorkgroups@
--
-- -   (modified)@WorkgroupSize@
--
-- -   (modified)@WorkgroupId@
--
-- -   (modified)@LocalInvocationId@
--
-- -   (modified)@GlobalInvocationId@
--
-- -   (modified)@LocalInvocationIndex@
--
-- -   (modified)@NumSubgroups@
--
-- -   (modified)@SubgroupId@
--
-- -   (modified)@DrawIndex@
--
-- -   (modified)@PrimitiveShadingRateKHR@
--
-- -   (modified)@ViewIndex@
--
-- == New SPIR-V Capability
--
-- -   <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#spirvenv-capabilities-table-MeshShadingEXT MeshShadingEXT>
--
-- == Version History
--
-- -   Revision 1, 2022-03-08 (Christoph Kubisch, Daniel Koch, Patrick
--     Mours)
--
--     -   Initial revision
--
-- == See Also
--
-- 'DrawMeshTasksIndirectCommandEXT',
-- 'PhysicalDeviceMeshShaderFeaturesEXT',
-- 'PhysicalDeviceMeshShaderPropertiesEXT', 'cmdDrawMeshTasksEXT',
-- 'cmdDrawMeshTasksIndirectCountEXT', 'cmdDrawMeshTasksIndirectEXT'
--
-- == Document Notes
--
-- For more information, see the
-- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#VK_EXT_mesh_shader Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_EXT_mesh_shader  ( cmdDrawMeshTasksEXT
                                             , cmdDrawMeshTasksIndirectEXT
                                             , cmdDrawMeshTasksIndirectCountEXT
                                             , PhysicalDeviceMeshShaderFeaturesEXT(..)
                                             , PhysicalDeviceMeshShaderPropertiesEXT(..)
                                             , DrawMeshTasksIndirectCommandEXT(..)
                                             , EXT_MESH_SHADER_SPEC_VERSION
                                             , pattern EXT_MESH_SHADER_SPEC_VERSION
                                             , EXT_MESH_SHADER_EXTENSION_NAME
                                             , pattern EXT_MESH_SHADER_EXTENSION_NAME
                                             , IndirectCommandsTokenTypeNV(..)
                                             ) where

import Vulkan.CStruct.Utils (FixedArray)
import Vulkan.Internal.Utils (traceAroundEvent)
import Control.Monad (unless)
import Control.Monad.IO.Class (liftIO)
import Foreign.Marshal.Alloc (allocaBytes)
import GHC.IO (throwIO)
import GHC.Ptr (nullFunPtr)
import Foreign.Ptr (nullPtr)
import Foreign.Ptr (plusPtr)
import Vulkan.CStruct (FromCStruct)
import Vulkan.CStruct (FromCStruct(..))
import Vulkan.CStruct (ToCStruct)
import Vulkan.CStruct (ToCStruct(..))
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
import Foreign.Ptr (FunPtr)
import Foreign.Ptr (Ptr)
import Data.Word (Word32)
import Data.Kind (Type)
import Vulkan.CStruct.Utils (advancePtrBytes)
import Vulkan.Core10.FundamentalTypes (bool32ToBool)
import Vulkan.Core10.FundamentalTypes (boolToBool32)
import Vulkan.CStruct.Utils (lowerArrayPtr)
import Vulkan.NamedType ((:::))
import Vulkan.Core10.FundamentalTypes (Bool32)
import Vulkan.Core10.Handles (Buffer)
import Vulkan.Core10.Handles (Buffer(..))
import Vulkan.Core10.Handles (CommandBuffer)
import Vulkan.Core10.Handles (CommandBuffer(..))
import Vulkan.Core10.Handles (CommandBuffer(CommandBuffer))
import Vulkan.Core10.Handles (CommandBuffer_T)
import Vulkan.Dynamic (DeviceCmds(pVkCmdDrawMeshTasksEXT))
import Vulkan.Dynamic (DeviceCmds(pVkCmdDrawMeshTasksIndirectCountEXT))
import Vulkan.Dynamic (DeviceCmds(pVkCmdDrawMeshTasksIndirectEXT))
import Vulkan.Core10.FundamentalTypes (DeviceSize)
import Vulkan.Core10.Enums.StructureType (StructureType)
import Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT))
import Vulkan.Core10.Enums.StructureType (StructureType(STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT))
import Vulkan.Extensions.VK_NV_device_generated_commands (IndirectCommandsTokenTypeNV(..))
foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkCmdDrawMeshTasksEXT
  :: FunPtr (Ptr CommandBuffer_T -> Word32 -> Word32 -> Word32 -> IO ()) -> Ptr CommandBuffer_T -> Word32 -> Word32 -> Word32 -> IO ()

-- | vkCmdDrawMeshTasksEXT - Draw mesh task work items
--
-- = Description
--
-- When the command is executed, a global workgroup consisting of
-- @groupCountX@ × @groupCountY@ × @groupCountZ@ local workgroups is
-- assembled.
--
-- == Valid Usage
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-magFilter-04553# If a
--     'Vulkan.Core10.Handles.Sampler' created with @magFilter@ or
--     @minFilter@ equal to 'Vulkan.Core10.Enums.Filter.FILTER_LINEAR' and
--     @compareEnable@ equal to 'Vulkan.Core10.FundamentalTypes.FALSE' is
--     used to sample a 'Vulkan.Core10.Handles.ImageView' as a result of
--     this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-mipmapMode-04770# If a
--     'Vulkan.Core10.Handles.Sampler' created with @mipmapMode@ equal to
--     'Vulkan.Core10.Enums.SamplerMipmapMode.SAMPLER_MIPMAP_MODE_LINEAR'
--     and @compareEnable@ equal to 'Vulkan.Core10.FundamentalTypes.FALSE'
--     is used to sample a 'Vulkan.Core10.Handles.ImageView' as a result of
--     this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06479# If a
--     'Vulkan.Core10.Handles.ImageView' is sampled with
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#textures-depth-compare-operation depth comparison>,
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02691# If a
--     'Vulkan.Core10.Handles.ImageView' is accessed using atomic
--     operations as a result of this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02692# If a
--     'Vulkan.Core10.Handles.ImageView' is sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' as a result of this
--     command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-filterCubic-02694# Any
--     'Vulkan.Core10.Handles.ImageView' being sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' as a result of this
--     command /must/ have a
--     'Vulkan.Core10.Enums.ImageViewType.ImageViewType' and format that
--     supports cubic filtering, as specified by
--     'Vulkan.Extensions.VK_EXT_filter_cubic.FilterCubicImageViewImageFormatPropertiesEXT'::@filterCubic@
--     returned by
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceImageFormatProperties2'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-filterCubicMinmax-02695# Any
--     'Vulkan.Core10.Handles.ImageView' being sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' with a reduction mode
--     of either
--     'Vulkan.Core12.Enums.SamplerReductionMode.SAMPLER_REDUCTION_MODE_MIN'
--     or
--     'Vulkan.Core12.Enums.SamplerReductionMode.SAMPLER_REDUCTION_MODE_MAX'
--     as a result of this command /must/ have a
--     'Vulkan.Core10.Enums.ImageViewType.ImageViewType' and format that
--     supports cubic filtering together with minmax filtering, as
--     specified by
--     'Vulkan.Extensions.VK_EXT_filter_cubic.FilterCubicImageViewImageFormatPropertiesEXT'::@filterCubicMinmax@
--     returned by
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceImageFormatProperties2'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-flags-02696# Any
--     'Vulkan.Core10.Handles.Image' created with a
--     'Vulkan.Core10.Image.ImageCreateInfo'::@flags@ containing
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_CORNER_SAMPLED_BIT_NV'
--     sampled as a result of this command /must/ only be sampled using a
--     'Vulkan.Core10.Enums.SamplerAddressMode.SamplerAddressMode' of
--     'Vulkan.Core10.Enums.SamplerAddressMode.SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpTypeImage-07027# For any
--     'Vulkan.Core10.Handles.ImageView' being written as a storage image
--     where the image format field of the @OpTypeImage@ is @Unknown@, the
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpTypeImage-07028# For any
--     'Vulkan.Core10.Handles.ImageView' being read as a storage image
--     where the image format field of the @OpTypeImage@ is @Unknown@, the
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpTypeImage-07029# For any
--     'Vulkan.Core10.Handles.BufferView' being written as a storage texel
--     buffer where the image format field of the @OpTypeImage@ is
--     @Unknown@, the view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkFormatProperties3 buffer features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpTypeImage-07030# Any
--     'Vulkan.Core10.Handles.BufferView' being read as a storage texel
--     buffer where the image format field of the @OpTypeImage@ is
--     @Unknown@ then the view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkFormatProperties3 buffer features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02697# For each set /n/ that is
--     statically used by the 'Vulkan.Core10.Handles.Pipeline' bound to the
--     pipeline bind point used by this command, a descriptor set /must/
--     have been bound to /n/ at the same pipeline bind point, with a
--     'Vulkan.Core10.Handles.PipelineLayout' that is compatible for set
--     /n/, with the 'Vulkan.Core10.Handles.PipelineLayout' used to create
--     the current 'Vulkan.Core10.Handles.Pipeline', as described in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#descriptorsets-compatibility ???>
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-maintenance4-06425# If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-maintenance4 maintenance4>
--     feature is not enabled, then for each push constant that is
--     statically used by the 'Vulkan.Core10.Handles.Pipeline' bound to the
--     pipeline bind point used by this command, a push constant value
--     /must/ have been set for the same pipeline bind point, with a
--     'Vulkan.Core10.Handles.PipelineLayout' that is compatible for push
--     constants, with the 'Vulkan.Core10.Handles.PipelineLayout' used to
--     create the current 'Vulkan.Core10.Handles.Pipeline', as described in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#descriptorsets-compatibility ???>
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02699# Descriptors in each bound
--     descriptor set, specified via
--     'Vulkan.Core10.CommandBufferBuilding.cmdBindDescriptorSets', /must/
--     be valid if they are statically used by the
--     'Vulkan.Core10.Handles.Pipeline' bound to the pipeline bind point
--     used by this command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02700# A valid pipeline /must/ be
--     bound to the pipeline bind point used by this command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-commandBuffer-02701# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command requires any dynamic state, that state
--     /must/ have been set or inherited (if the
--     @VK_NV_inherited_viewport_scissor@ extension is enabled) for
--     @commandBuffer@, and done so after any previously bound pipeline
--     with the corresponding state not specified as dynamic
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02859# There /must/ not have been
--     any calls to dynamic state setting commands for any state not
--     specified as dynamic in the 'Vulkan.Core10.Handles.Pipeline' object
--     bound to the pipeline bind point used by this command, since that
--     pipeline was bound
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02702# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used to sample from any
--     'Vulkan.Core10.Handles.Image' with a
--     'Vulkan.Core10.Handles.ImageView' of the type
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_3D',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_CUBE',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_1D_ARRAY',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_2D_ARRAY' or
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_CUBE_ARRAY', in
--     any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02703# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used with any of the SPIR-V
--     @OpImageSample*@ or @OpImageSparseSample*@ instructions with
--     @ImplicitLod@, @Dref@ or @Proj@ in their name, in any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02704# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used with any of the SPIR-V
--     @OpImageSample*@ or @OpImageSparseSample*@ instructions that
--     includes a LOD bias or any offset values, in any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-uniformBuffers-06935# If any stage of
--     the 'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline
--     bind point used by this command accesses a uniform buffer, and that
--     stage was created without enabling either
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT'
--     or
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT'
--     for @uniformBuffers@, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-robustBufferAccess robustBufferAccess>
--     feature is not enabled, that stage /must/ not access values outside
--     of the range of the buffer as specified in the descriptor set bound
--     to the same pipeline bind point
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-storageBuffers-06936# If any stage of
--     the 'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline
--     bind point used by this command accesses a storage buffer, and that
--     stage was created without enabling either
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT'
--     or
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT'
--     for @storageBuffers@, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-robustBufferAccess robustBufferAccess>
--     feature is not enabled, that stage /must/ not access values outside
--     of the range of the buffer as specified in the descriptor set bound
--     to the same pipeline bind point
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-commandBuffer-02707# If @commandBuffer@
--     is an unprotected command buffer and
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-protectedNoFault protectedNoFault>
--     is not supported, any resource accessed by the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command /must/ not be a protected resource
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06550# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' or 'Vulkan.Core10.Handles.ImageView'
--     object that enables
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#samplers-YCbCr-conversion sampler Y′CBCR conversion>,
--     that object /must/ only be used with @OpImageSample*@ or
--     @OpImageSparseSample*@ instructions
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-ConstOffset-06551# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' or 'Vulkan.Core10.Handles.ImageView'
--     object that enables
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#samplers-YCbCr-conversion sampler Y′CBCR conversion>,
--     that object /must/ not use the @ConstOffset@ and @Offset@ operands
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-04115# If a
--     'Vulkan.Core10.Handles.ImageView' is accessed using @OpImageWrite@
--     as a result of this command, then the @Type@ of the @Texel@ operand
--     of that instruction /must/ have at least as many components as the
--     image view’s format
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageWrite-04469# If a
--     'Vulkan.Core10.Handles.BufferView' is accessed using @OpImageWrite@
--     as a result of this command, then the @Type@ of the @Texel@ operand
--     of that instruction /must/ have at least as many components as the
--     buffer view’s format
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-SampledType-04470# If a
--     'Vulkan.Core10.Handles.ImageView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a 64-bit component
--     width is accessed as a result of this command, the @SampledType@ of
--     the @OpTypeImage@ operand of that instruction /must/ have a @Width@
--     of 64
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-SampledType-04471# If a
--     'Vulkan.Core10.Handles.ImageView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a component width less
--     than 64-bit is accessed as a result of this command, the
--     @SampledType@ of the @OpTypeImage@ operand of that instruction
--     /must/ have a @Width@ of 32
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-SampledType-04472# If a
--     'Vulkan.Core10.Handles.BufferView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a 64-bit component
--     width is accessed as a result of this command, the @SampledType@ of
--     the @OpTypeImage@ operand of that instruction /must/ have a @Width@
--     of 64
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-SampledType-04473# If a
--     'Vulkan.Core10.Handles.BufferView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a component width less
--     than 64-bit is accessed as a result of this command, the
--     @SampledType@ of the @OpTypeImage@ operand of that instruction
--     /must/ have a @Width@ of 32
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sparseImageInt64Atomics-04474# If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-sparseImageInt64Atomics sparseImageInt64Atomics>
--     feature is not enabled, 'Vulkan.Core10.Handles.Image' objects
--     created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SPARSE_RESIDENCY_BIT'
--     flag /must/ not be accessed by atomic instructions through an
--     @OpTypeImage@ with a @SampledType@ with a @Width@ of 64 by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sparseImageInt64Atomics-04475# If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-sparseImageInt64Atomics sparseImageInt64Atomics>
--     feature is not enabled, 'Vulkan.Core10.Handles.Buffer' objects
--     created with the
--     'Vulkan.Core10.Enums.BufferCreateFlagBits.BUFFER_CREATE_SPARSE_RESIDENCY_BIT'
--     flag /must/ not be accessed by atomic instructions through an
--     @OpTypeImage@ with a @SampledType@ with a @Width@ of 64 by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageWeightedSampleQCOM-06971# If
--     @OpImageWeightedSampleQCOM@ is used to sample a
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageWeightedSampleQCOM-06972# If
--     @OpImageWeightedSampleQCOM@ uses a 'Vulkan.Core10.Handles.ImageView'
--     as a sample weight image as a result of this command, then the image
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageBoxFilterQCOM-06973# If
--     @OpImageBoxFilterQCOM@ is used to sample a
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageBlockMatchSSDQCOM-06974# If
--     @OpImageBlockMatchSSDQCOM@ is used to read from an
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageBlockMatchSADQCOM-06975# If
--     @OpImageBlockMatchSADQCOM@ is used to read from an
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageBlockMatchSADQCOM-06976# If
--     @OpImageBlockMatchSADQCOM@ or OpImageBlockMatchSSDQCOM is used to
--     read from a reference image as result of this command, then the
--     specified reference coordinates /must/ not fail
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#textures-integer-coordinate-validation integer texel coordinate validation>.
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageWeightedSampleQCOM-06977# If
--     @OpImageWeightedSampleQCOM@, @OpImageBoxFilterQCOM@,
--     @OpImageBlockMatchSSDQCOM@, or @OpImageBlockMatchSADQCOM@ uses a
--     'Vulkan.Core10.Handles.Sampler' as a result of this command, then
--     the sampler /must/ have been created with
--     'Vulkan.Core10.Enums.SamplerCreateFlagBits.SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM'.
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpImageWeightedSampleQCOM-06978# If any
--     command other than @OpImageWeightedSampleQCOM@,
--     @OpImageBoxFilterQCOM@, @OpImageBlockMatchSSDQCOM@, or
--     @OpImageBlockMatchSADQCOM@ uses a 'Vulkan.Core10.Handles.Sampler' as
--     a result of this command, then the sampler /must/ not have been
--     created with
--     'Vulkan.Core10.Enums.SamplerCreateFlagBits.SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM'.
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-07288# Any shader invocation
--     executed by this command /must/
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#shaders-termination terminate>
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-renderPass-02684# The current render
--     pass /must/ be
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#renderpass-compatibility compatible>
--     with the @renderPass@ member of the
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo' structure
--     specified when creating the 'Vulkan.Core10.Handles.Pipeline' bound
--     to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-subpass-02685# The subpass index of the
--     current render pass /must/ be equal to the @subpass@ member of the
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo' structure
--     specified when creating the 'Vulkan.Core10.Handles.Pipeline' bound
--     to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-02686# Every input attachment used
--     by the current subpass /must/ be bound to the pipeline via a
--     descriptor set
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-OpTypeImage-07468# If any shader
--     executed by this pipeline accesses an @OpTypeImage@ variable with a
--     @Dim@ operand of @SubpassData@, it /must/ be decorated with an
--     @InputAttachmentIndex@ that corresponds to a valid input attachment
--     in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-07469# Input attachment views
--     accessed in a subpass /must/ be created with the same
--     'Vulkan.Core10.Enums.Format.Format' as the corresponding subpass
--     definition be created with a 'Vulkan.Core10.Handles.ImageView' that
--     is an attachment in the currently bound
--     'Vulkan.Core10.Handles.Framebuffer' at an index that corresponds to
--     a valid input attachment in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06537# Memory backing image
--     subresources used as attachments in the current render pass /must/
--     not be written in any way other than as an attachment by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06538# If any recorded command in
--     the current subpass will write to an image subresource as an
--     attachment, this command /must/ not read from the memory backing
--     that image subresource in any other way than as an attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06539# If any recorded command in
--     the current subpass will read from an image subresource used as an
--     attachment in any way other than as an attachment, this command
--     /must/ not write to that image subresource as an attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06886# If the current render pass
--     instance uses a depth\/stencil attachment with a read-only layout
--     for the depth aspect,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fragops-depth-write depth writes>
--     /must/ be disabled
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06887# If the current render pass
--     instance uses a depth\/stencil attachment with a read-only layout
--     for the stencil aspect and stencil test is enabled,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fragops-stencil all stencil ops>
--     /must/ be 'Vulkan.Core10.Enums.StencilOp.STENCIL_OP_KEEP'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-maxMultiviewInstanceIndex-02688# If the
--     draw is recorded in a render pass instance with multiview enabled,
--     the maximum instance index /must/ be less than or equal to
--     'Vulkan.Core11.Promoted_From_VK_KHR_multiview.PhysicalDeviceMultiviewProperties'::@maxMultiviewInstanceIndex@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsEnable-02689# If the
--     bound graphics pipeline was created with
--     'Vulkan.Extensions.VK_EXT_sample_locations.PipelineSampleLocationsStateCreateInfoEXT'::@sampleLocationsEnable@
--     set to 'Vulkan.Core10.FundamentalTypes.TRUE' and the current subpass
--     has a depth\/stencil attachment, then that attachment /must/ have
--     been created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-06666# If the bound graphics
--     pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-03417# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     dynamic state enabled, then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ match the
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo'::@scissorCount@
--     of the pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-scissorCount-03418# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @scissorCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ match the
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo'::@viewportCount@
--     of the pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-03419# If the bound
--     graphics pipeline state was created with both the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic states enabled then both
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     and
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ match the @scissorCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-04137# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_W_SCALING_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_clip_space_w_scaling.PipelineViewportWScalingStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-04138# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_W_SCALING_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_NV_clip_space_w_scaling.cmdSetViewportWScalingNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-04139# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_shading_rate_image.PipelineViewportShadingRateImageStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-04140# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_NV_shading_rate_image.cmdSetViewportShadingRatePaletteNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-VkPipelineVieportCreateInfo-04141# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled and a
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'
--     structure chained from
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo', then the
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-VkPipelineVieportCreateInfo-04142# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled and a
--     'Vulkan.Extensions.VK_NV_scissor_exclusive.PipelineViewportExclusiveScissorStateCreateInfoNV'
--     structure chained from
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo', then the
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Extensions.VK_NV_scissor_exclusive.PipelineViewportExclusiveScissorStateCreateInfoNV'::@exclusiveScissorCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-04876# If the bound graphics
--     pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE'
--     dynamic state enabled then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state2.cmdSetRasterizerDiscardEnable'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-None-04877# If the bound graphics
--     pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_DEPTH_BIAS_ENABLE'
--     dynamic state enabled then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state2.cmdSetDepthBiasEnable'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-logicOp-04878# If the bound graphics
--     pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LOGIC_OP_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state2.cmdSetLogicOpEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command and the @logicOp@ /must/ be a valid
--     'Vulkan.Core10.Enums.LogicOp.LogicOp' value
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-primitiveFragmentShadingRateWithMultipleViewports-04552#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-primitiveFragmentShadingRateWithMultipleViewports primitiveFragmentShadingRateWithMultipleViewports>
--     limit is not supported, the bound graphics pipeline was created with
--     the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, and any of the shader stages of the bound
--     graphics pipeline write to the @PrimitiveShadingRateKHR@ built-in,
--     then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ be @1@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-blendEnable-04727# If rasterization is
--     not disabled in the bound graphics pipeline, then for each color
--     attachment in the subpass, if the corresponding image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     do not contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT',
--     then the @blendEnable@ member of the corresponding element of the
--     @pAttachments@ member of @pColorBlendState@ /must/ be
--     'Vulkan.Core10.FundamentalTypes.FALSE'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-multisampledRenderToSingleSampled-07284#
--     If rasterization is not disabled in the bound graphics pipeline, and
--     none of the @VK_AMD_mixed_attachment_samples@ extension, the
--     @VK_NV_framebuffer_mixed_samples@ extension, or the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature are enabled, then
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     /must/ be the same as the current subpass color and\/or
--     depth\/stencil attachments
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06172# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06173# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06174# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06175# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06176# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06177# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewMask-06178# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound graphics pipeline /must/ have been created with
--     a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@viewMask@
--     equal to
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@viewMask@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-colorAttachmentCount-06179# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound graphics pipeline /must/ have been created with
--     a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@colorAttachmentCount@
--     equal to
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-colorAttachmentCount-06180# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a 'Vulkan.Core10.Enums.Format.Format' equal to the
--     corresponding element of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@pColorAttachmentFormats@
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-attachmentCount-06667# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @attachmentCount@ parameter of
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ be greater than or equal to the
--     'Vulkan.Core10.Pipeline.PipelineColorBlendStateCreateInfo'::@attachmentCount@
--     of the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-attachmentCount-06815# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @attachmentCount@ parameter of
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ be less than or equal to the @maxColorAttachments@ member of
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-pDepthAttachment-06181# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@depthAttachmentFormat@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the 'Vulkan.Core10.Enums.Format.Format' used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-pStencilAttachment-06182# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@stencilAttachmentFormat@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the 'Vulkan.Core10.Enums.Format.Format' used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06183# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.RenderingFragmentShadingRateAttachmentInfoKHR'::@imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the currently
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Core10.Enums.PipelineCreateFlagBits.PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-imageView-06184# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.RenderingFragmentDensityMapAttachmentInfoEXT'::@imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the currently
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Core10.Enums.PipelineCreateFlagBits.PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-colorAttachmentCount-06185# If the
--     currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     with a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     parameter greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a sample count equal to the corresponding element of the
--     @pColorAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-pDepthAttachment-06186# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of the
--     @depthStencilAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-pStencilAttachment-06187# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of the
--     @depthStencilAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-multisampledRenderToSingleSampled-07285#
--     If the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and the current render pass instance was
--     begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     with a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     parameter greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a sample count equal to the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-multisampledRenderToSingleSampled-07286#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-multisampledRenderToSingleSampled-07287#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-renderPass-06198# If the current render
--     pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline /must/ have been created with a
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'::@renderPass@
--     equal to 'Vulkan.Core10.APIConstants.NULL_HANDLE'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-primitivesGeneratedQueryWithRasterizerDiscard-06708#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithRasterizerDiscard primitivesGeneratedQueryWithRasterizerDiscard>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#primsrast-discard rasterization discard>
--     /must/ not be enabled.
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-primitivesGeneratedQueryWithNonZeroStreams-06709#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithNonZeroStreams primitivesGeneratedQueryWithNonZeroStreams>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active, the bound graphics pipeline /must/ not have been
--     created with a non-zero value in
--     'Vulkan.Extensions.VK_EXT_transform_feedback.PipelineRasterizationStateStreamCreateInfoEXT'::@rasterizationStream@.
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-pColorBlendEnables-07470# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     set @pColorBlendEnables@ for any attachment to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then for those attachments in
--     the subpass the corresponding image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-rasterizationSamples-07471# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, and the current subpass does not use any color
--     and\/or depth\/stencil attachments, then the @rasterizationSamples@
--     in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     /must/ follow the rules for a
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#renderpass-noattachments zero-attachment subpass>
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-samples-07472# If the bound graphics
--     pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_MASK_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state disabled, then the @samples@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleMaskEXT'
--     /must/ be greater or equal to the
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     parameter used to create the bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-samples-07473# If the bound graphics
--     pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_MASK_EXT'
--     state and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     states enabled, then the @samples@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleMaskEXT'
--     /must/ be greater or equal to the @rasterizationSamples@ parameter
--     in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-multisampledRenderToSingleSampled-07475#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, and none of the @VK_AMD_mixed_attachment_samples@
--     extension, @VK_NV_framebuffer_mixed_samples@ extension, or the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is enabled, then the @rasterizationSamples@ in the last call
--     to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     /must/ be the same as the current subpass color and\/or
--     depth\/stencil attachments
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-firstAttachment-07476# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     calls /must/ specify an enable for all active color attachments in
--     the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-firstAttachment-07477# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEquationEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEquationEXT'
--     calls /must/ specify the blend equations for all active color
--     attachments in the current subpass where blending is enabled
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-firstAttachment-07478# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_MASK_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorWriteMaskEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorWriteMaskEXT'
--     calls /must/ specify the color write mask for all active color
--     attachments in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-firstAttachment-07479# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     calls /must/ specify the advanced blend equations for all active
--     color attachments in the current subpass where blending is enabled
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-advancedBlendMaxColorAttachments-07480#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     dynamic states enabled and the last calls to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     and
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     have enabled advanced blending, then the number of active color
--     attachments in the current subpass must not exceed
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-advancedBlendMaxColorAttachments advancedBlendMaxColorAttachments>
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-primitivesGeneratedQueryWithNonZeroStreams-07481#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithNonZeroStreams primitivesGeneratedQueryWithNonZeroStreams>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active, and the bound graphics pipeline was created with
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_STREAM_EXT'
--     state enabled, the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationStreamEXT'
--     /must/ have set the @rasterizationStream@ to zero
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsPerPixel-07482# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state disabled, then the @sampleLocationsPerPixel@ member of
--     @pSampleLocationsInfo@ in the last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ equal the @rasterizationSamples@ member of the
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'
--     structure the bound graphics pipeline has been created with
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsPerPixel-07483# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, then the @sampleLocationsPerPixel@ member of
--     @pSampleLocationsInfo@ in the last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ equal the @rasterizationSamples@ parameter of the last call
--     to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsEnable-07484# If the
--     bound graphics pipeline was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     and the current subpass has a depth\/stencil attachment, then that
--     attachment /must/ have been created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsEnable-07485# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     then the @sampleLocationsInfo.sampleLocationGridSize.width@ in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ evenly divide
--     'Vulkan.Extensions.VK_EXT_sample_locations.MultisamplePropertiesEXT'::@sampleLocationGridSize.width@
--     as returned by
--     'Vulkan.Extensions.VK_EXT_sample_locations.getPhysicalDeviceMultisamplePropertiesEXT'
--     with a @samples@ parameter equaling @rasterizationSamples@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsEnable-07486# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     then the @sampleLocationsInfo.sampleLocationGridSize.height@ in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ evenly divide
--     'Vulkan.Extensions.VK_EXT_sample_locations.MultisamplePropertiesEXT'::@sampleLocationGridSize.height@
--     as returned by
--     'Vulkan.Extensions.VK_EXT_sample_locations.getPhysicalDeviceMultisamplePropertiesEXT'
--     with a @samples@ parameter equaling @rasterizationSamples@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-sampleLocationsEnable-07487# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     the fragment shader code /must/ not statically use the extended
--     instruction @InterpolateAtSample@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-coverageModulationTableEnable-07488# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageModulationTableEnableNV'
--     set @coverageModulationTableEnable@ to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then the
--     @coverageModulationTableCount@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageModulationTableNV'
--     /must/ equal the current @rasterizationSamples@ divided by the
--     number of color samples in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-rasterizationSamples-07489# If the
--     @VK_NV_framebuffer_mixed_samples@ extension is enabled, and if
--     current subpass has a depth\/stencil attachment and depth test,
--     stencil test, or depth bounds test are enabled in the currently
--     bound pipeline state, then the current @rasterizationSamples@ must
--     be the same as the sample count of the depth\/stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-coverageToColorEnable-07490# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageToColorEnableNV'
--     set the @coverageToColorEnable@ to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then the current subpass must
--     have a color attachment at the location selected by the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageToColorLocationNV'
--     @coverageToColorLocation@, with a
--     'Vulkan.Core10.Enums.Format.Format' of
--     'Vulkan.Core10.Enums.Format.FORMAT_R8_UINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R8_SINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R16_UINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R16_SINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R32_UINT', or
--     'Vulkan.Core10.Enums.Format.FORMAT_R32_SINT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-coverageReductionMode-07491# If this
--     @VK_NV_coverage_reduction_mode@ extension is enabled, the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     states enabled, the current coverage reduction mode
--     @coverageReductionMode@, then the current @rasterizationSamples@,
--     and the sample counts for the color and depth\/stencil attachments
--     (if the subpass has them) must be a valid combination returned by
--     'Vulkan.Extensions.VK_NV_coverage_reduction_mode.getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-07492# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-viewportCount-07493# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetViewportSwizzleNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-rasterizationSamples-07494# If the
--     @VK_NV_framebuffer_mixed_samples@ extension is enabled, and if the
--     current subpass has any color attachments and @rasterizationSamples@
--     of the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     is greater than the number of color samples, then the pipeline
--     @sampleShadingEnable@ /must/ be
--     'Vulkan.Core10.FundamentalTypes.FALSE'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-stippledLineEnable-07495# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_RECTANGULAR_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledRectangularLines stippledRectangularLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-stippledLineEnable-07496# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_BRESENHAM_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledBresenhamLines stippledBresenhamLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-stippledLineEnable-07497# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledSmoothLines stippledSmoothLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-stippledLineEnable-07498# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_DEFAULT_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledRectangularLines stippledRectangularLines>
--     feature /must/ be enabled and
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'::@strictLines@
--     must be VK_TRUE
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-conservativePointAndLineRasterization-07499#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT'
--     dynamic state enabled,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-conservativePointAndLineRasterization conservativePointAndLineRasterization>
--     is not supported, and the effective primitive topology output by the
--     last pre-rasterization shader stage is a line or point, then the
--     @conservativeRasterizationMode@ set by the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetConservativeRasterizationModeEXT'
--     /must/ be
--     'Vulkan.Extensions.VK_EXT_conservative_rasterization.CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-stage-07073# If the currently bound
--     pipeline was created with the
--     'Vulkan.Core10.Pipeline.PipelineShaderStageCreateInfo'::@stage@
--     member of an element of
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'::@pStages@ set
--     to
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_VERTEX_BIT',
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TESSELLATION_CONTROL_BIT',
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TESSELLATION_EVALUATION_BIT'
--     or
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_GEOMETRY_BIT',
--     then
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#queries-mesh-shader Mesh Shader Queries>
--     must not be active
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07322# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountX@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupCount@[0]
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07323# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountY@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupCount@[1]
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07324# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountZ@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupCount@[2]
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07325# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@, The
--     product of @groupCountX@, @groupCountY@ and @groupCountZ@ /must/ be
--     less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupTotalCount@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07326# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountX@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupCount@[0]
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07327# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountY@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupCount@[1]
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07328# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountZ@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupCount@[2]
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-TaskEXT-07329# If the current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     The product of @groupCountX@, @groupCountY@ and @groupCountZ@ /must/
--     be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupTotalCount@
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-MeshEXT-07087# The current pipeline
--     bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     /must/ contain a shader stage using the @MeshEXT@ @Execution@
--     @Model@
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-commandBuffer-parameter# @commandBuffer@
--     /must/ be a valid 'Vulkan.Core10.Handles.CommandBuffer' handle
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-commandBuffer-recording# @commandBuffer@
--     /must/ be in the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#commandbuffers-lifecycle recording state>
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-commandBuffer-cmdpool# The
--     'Vulkan.Core10.Handles.CommandPool' that @commandBuffer@ was
--     allocated from /must/ support graphics operations
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-renderpass# This command /must/ only be
--     called inside of a render pass instance
--
-- -   #VUID-vkCmdDrawMeshTasksEXT-videocoding# This command /must/ only be
--     called outside of a video coding scope
--
-- == Host Synchronization
--
-- -   Host access to @commandBuffer@ /must/ be externally synchronized
--
-- -   Host access to the 'Vulkan.Core10.Handles.CommandPool' that
--     @commandBuffer@ was allocated from /must/ be externally synchronized
--
-- == Command Properties
--
-- \'
--
-- +----------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
-- | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkCommandBufferLevel Command Buffer Levels> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdBeginRenderPass Render Pass Scope> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdBeginVideoCodingKHR Video Coding Scope> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkQueueFlagBits Supported Queue Types> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-queueoperation-command-types Command Type> |
-- +============================================================================================================================+========================================================================================================================+=============================================================================================================================+=======================================================================================================================+========================================================================================================================================+
-- | Primary                                                                                                                    | Inside                                                                                                                 | Outside                                                                                                                     | Graphics                                                                                                              | Action                                                                                                                                 |
-- | Secondary                                                                                                                  |                                                                                                                        |                                                                                                                             |                                                                                                                       |                                                                                                                                        |
-- +----------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_mesh_shader VK_EXT_mesh_shader>,
-- 'Vulkan.Core10.Handles.CommandBuffer'
cmdDrawMeshTasksEXT :: forall io
                     . (MonadIO io)
                    => -- | @commandBuffer@ is the command buffer into which the command will be
                       -- recorded.
                       CommandBuffer
                    -> -- | @groupCountX@ is the number of local workgroups to dispatch in the X
                       -- dimension.
                       ("groupCountX" ::: Word32)
                    -> -- | @groupCountY@ is the number of local workgroups to dispatch in the Y
                       -- dimension.
                       ("groupCountY" ::: Word32)
                    -> -- | @groupCountZ@ is the number of local workgroups to dispatch in the Z
                       -- dimension.
                       ("groupCountZ" ::: Word32)
                    -> io ()
cmdDrawMeshTasksEXT commandBuffer
                      groupCountX
                      groupCountY
                      groupCountZ = liftIO $ do
  let vkCmdDrawMeshTasksEXTPtr = pVkCmdDrawMeshTasksEXT (case commandBuffer of CommandBuffer{deviceCmds} -> deviceCmds)
  unless (vkCmdDrawMeshTasksEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkCmdDrawMeshTasksEXT is null" Nothing Nothing
  let vkCmdDrawMeshTasksEXT' = mkVkCmdDrawMeshTasksEXT vkCmdDrawMeshTasksEXTPtr
  traceAroundEvent "vkCmdDrawMeshTasksEXT" (vkCmdDrawMeshTasksEXT'
                                              (commandBufferHandle (commandBuffer))
                                              (groupCountX)
                                              (groupCountY)
                                              (groupCountZ))
  pure $ ()


foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkCmdDrawMeshTasksIndirectEXT
  :: FunPtr (Ptr CommandBuffer_T -> Buffer -> DeviceSize -> Word32 -> Word32 -> IO ()) -> Ptr CommandBuffer_T -> Buffer -> DeviceSize -> Word32 -> Word32 -> IO ()

-- | vkCmdDrawMeshTasksIndirectEXT - Issue an indirect mesh tasks draw into a
-- command buffer
--
-- = Description
--
-- 'cmdDrawMeshTasksIndirectEXT' behaves similarly to 'cmdDrawMeshTasksEXT'
-- except that the parameters are read by the device from a buffer during
-- execution. @drawCount@ draws are executed by the command, with
-- parameters taken from @buffer@ starting at @offset@ and increasing by
-- @stride@ bytes for each successive draw. The parameters of each draw are
-- encoded in an array of 'DrawMeshTasksIndirectCommandEXT' structures. If
-- @drawCount@ is less than or equal to one, @stride@ is ignored.
--
-- == Valid Usage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-magFilter-04553# If a
--     'Vulkan.Core10.Handles.Sampler' created with @magFilter@ or
--     @minFilter@ equal to 'Vulkan.Core10.Enums.Filter.FILTER_LINEAR' and
--     @compareEnable@ equal to 'Vulkan.Core10.FundamentalTypes.FALSE' is
--     used to sample a 'Vulkan.Core10.Handles.ImageView' as a result of
--     this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-mipmapMode-04770# If a
--     'Vulkan.Core10.Handles.Sampler' created with @mipmapMode@ equal to
--     'Vulkan.Core10.Enums.SamplerMipmapMode.SAMPLER_MIPMAP_MODE_LINEAR'
--     and @compareEnable@ equal to 'Vulkan.Core10.FundamentalTypes.FALSE'
--     is used to sample a 'Vulkan.Core10.Handles.ImageView' as a result of
--     this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06479# If a
--     'Vulkan.Core10.Handles.ImageView' is sampled with
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#textures-depth-compare-operation depth comparison>,
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02691# If a
--     'Vulkan.Core10.Handles.ImageView' is accessed using atomic
--     operations as a result of this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02692# If a
--     'Vulkan.Core10.Handles.ImageView' is sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' as a result of this
--     command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-filterCubic-02694# Any
--     'Vulkan.Core10.Handles.ImageView' being sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' as a result of this
--     command /must/ have a
--     'Vulkan.Core10.Enums.ImageViewType.ImageViewType' and format that
--     supports cubic filtering, as specified by
--     'Vulkan.Extensions.VK_EXT_filter_cubic.FilterCubicImageViewImageFormatPropertiesEXT'::@filterCubic@
--     returned by
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceImageFormatProperties2'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-filterCubicMinmax-02695# Any
--     'Vulkan.Core10.Handles.ImageView' being sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' with a reduction mode
--     of either
--     'Vulkan.Core12.Enums.SamplerReductionMode.SAMPLER_REDUCTION_MODE_MIN'
--     or
--     'Vulkan.Core12.Enums.SamplerReductionMode.SAMPLER_REDUCTION_MODE_MAX'
--     as a result of this command /must/ have a
--     'Vulkan.Core10.Enums.ImageViewType.ImageViewType' and format that
--     supports cubic filtering together with minmax filtering, as
--     specified by
--     'Vulkan.Extensions.VK_EXT_filter_cubic.FilterCubicImageViewImageFormatPropertiesEXT'::@filterCubicMinmax@
--     returned by
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceImageFormatProperties2'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-flags-02696# Any
--     'Vulkan.Core10.Handles.Image' created with a
--     'Vulkan.Core10.Image.ImageCreateInfo'::@flags@ containing
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_CORNER_SAMPLED_BIT_NV'
--     sampled as a result of this command /must/ only be sampled using a
--     'Vulkan.Core10.Enums.SamplerAddressMode.SamplerAddressMode' of
--     'Vulkan.Core10.Enums.SamplerAddressMode.SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpTypeImage-07027# For any
--     'Vulkan.Core10.Handles.ImageView' being written as a storage image
--     where the image format field of the @OpTypeImage@ is @Unknown@, the
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpTypeImage-07028# For any
--     'Vulkan.Core10.Handles.ImageView' being read as a storage image
--     where the image format field of the @OpTypeImage@ is @Unknown@, the
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpTypeImage-07029# For any
--     'Vulkan.Core10.Handles.BufferView' being written as a storage texel
--     buffer where the image format field of the @OpTypeImage@ is
--     @Unknown@, the view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkFormatProperties3 buffer features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpTypeImage-07030# Any
--     'Vulkan.Core10.Handles.BufferView' being read as a storage texel
--     buffer where the image format field of the @OpTypeImage@ is
--     @Unknown@ then the view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkFormatProperties3 buffer features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02697# For each set /n/
--     that is statically used by the 'Vulkan.Core10.Handles.Pipeline'
--     bound to the pipeline bind point used by this command, a descriptor
--     set /must/ have been bound to /n/ at the same pipeline bind point,
--     with a 'Vulkan.Core10.Handles.PipelineLayout' that is compatible for
--     set /n/, with the 'Vulkan.Core10.Handles.PipelineLayout' used to
--     create the current 'Vulkan.Core10.Handles.Pipeline', as described in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#descriptorsets-compatibility ???>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-maintenance4-06425# If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-maintenance4 maintenance4>
--     feature is not enabled, then for each push constant that is
--     statically used by the 'Vulkan.Core10.Handles.Pipeline' bound to the
--     pipeline bind point used by this command, a push constant value
--     /must/ have been set for the same pipeline bind point, with a
--     'Vulkan.Core10.Handles.PipelineLayout' that is compatible for push
--     constants, with the 'Vulkan.Core10.Handles.PipelineLayout' used to
--     create the current 'Vulkan.Core10.Handles.Pipeline', as described in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#descriptorsets-compatibility ???>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02699# Descriptors in each
--     bound descriptor set, specified via
--     'Vulkan.Core10.CommandBufferBuilding.cmdBindDescriptorSets', /must/
--     be valid if they are statically used by the
--     'Vulkan.Core10.Handles.Pipeline' bound to the pipeline bind point
--     used by this command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02700# A valid pipeline
--     /must/ be bound to the pipeline bind point used by this command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commandBuffer-02701# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command requires any dynamic state, that state
--     /must/ have been set or inherited (if the
--     @VK_NV_inherited_viewport_scissor@ extension is enabled) for
--     @commandBuffer@, and done so after any previously bound pipeline
--     with the corresponding state not specified as dynamic
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02859# There /must/ not
--     have been any calls to dynamic state setting commands for any state
--     not specified as dynamic in the 'Vulkan.Core10.Handles.Pipeline'
--     object bound to the pipeline bind point used by this command, since
--     that pipeline was bound
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02702# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used to sample from any
--     'Vulkan.Core10.Handles.Image' with a
--     'Vulkan.Core10.Handles.ImageView' of the type
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_3D',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_CUBE',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_1D_ARRAY',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_2D_ARRAY' or
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_CUBE_ARRAY', in
--     any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02703# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used with any of the SPIR-V
--     @OpImageSample*@ or @OpImageSparseSample*@ instructions with
--     @ImplicitLod@, @Dref@ or @Proj@ in their name, in any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02704# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used with any of the SPIR-V
--     @OpImageSample*@ or @OpImageSparseSample*@ instructions that
--     includes a LOD bias or any offset values, in any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-uniformBuffers-06935# If any
--     stage of the 'Vulkan.Core10.Handles.Pipeline' object bound to the
--     pipeline bind point used by this command accesses a uniform buffer,
--     and that stage was created without enabling either
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT'
--     or
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT'
--     for @uniformBuffers@, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-robustBufferAccess robustBufferAccess>
--     feature is not enabled, that stage /must/ not access values outside
--     of the range of the buffer as specified in the descriptor set bound
--     to the same pipeline bind point
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-storageBuffers-06936# If any
--     stage of the 'Vulkan.Core10.Handles.Pipeline' object bound to the
--     pipeline bind point used by this command accesses a storage buffer,
--     and that stage was created without enabling either
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT'
--     or
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT'
--     for @storageBuffers@, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-robustBufferAccess robustBufferAccess>
--     feature is not enabled, that stage /must/ not access values outside
--     of the range of the buffer as specified in the descriptor set bound
--     to the same pipeline bind point
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commandBuffer-02707# If
--     @commandBuffer@ is an unprotected command buffer and
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-protectedNoFault protectedNoFault>
--     is not supported, any resource accessed by the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command /must/ not be a protected resource
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06550# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' or 'Vulkan.Core10.Handles.ImageView'
--     object that enables
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#samplers-YCbCr-conversion sampler Y′CBCR conversion>,
--     that object /must/ only be used with @OpImageSample*@ or
--     @OpImageSparseSample*@ instructions
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-ConstOffset-06551# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' or 'Vulkan.Core10.Handles.ImageView'
--     object that enables
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#samplers-YCbCr-conversion sampler Y′CBCR conversion>,
--     that object /must/ not use the @ConstOffset@ and @Offset@ operands
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-04115# If a
--     'Vulkan.Core10.Handles.ImageView' is accessed using @OpImageWrite@
--     as a result of this command, then the @Type@ of the @Texel@ operand
--     of that instruction /must/ have at least as many components as the
--     image view’s format
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageWrite-04469# If a
--     'Vulkan.Core10.Handles.BufferView' is accessed using @OpImageWrite@
--     as a result of this command, then the @Type@ of the @Texel@ operand
--     of that instruction /must/ have at least as many components as the
--     buffer view’s format
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-SampledType-04470# If a
--     'Vulkan.Core10.Handles.ImageView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a 64-bit component
--     width is accessed as a result of this command, the @SampledType@ of
--     the @OpTypeImage@ operand of that instruction /must/ have a @Width@
--     of 64
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-SampledType-04471# If a
--     'Vulkan.Core10.Handles.ImageView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a component width less
--     than 64-bit is accessed as a result of this command, the
--     @SampledType@ of the @OpTypeImage@ operand of that instruction
--     /must/ have a @Width@ of 32
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-SampledType-04472# If a
--     'Vulkan.Core10.Handles.BufferView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a 64-bit component
--     width is accessed as a result of this command, the @SampledType@ of
--     the @OpTypeImage@ operand of that instruction /must/ have a @Width@
--     of 64
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-SampledType-04473# If a
--     'Vulkan.Core10.Handles.BufferView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a component width less
--     than 64-bit is accessed as a result of this command, the
--     @SampledType@ of the @OpTypeImage@ operand of that instruction
--     /must/ have a @Width@ of 32
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sparseImageInt64Atomics-04474#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-sparseImageInt64Atomics sparseImageInt64Atomics>
--     feature is not enabled, 'Vulkan.Core10.Handles.Image' objects
--     created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SPARSE_RESIDENCY_BIT'
--     flag /must/ not be accessed by atomic instructions through an
--     @OpTypeImage@ with a @SampledType@ with a @Width@ of 64 by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sparseImageInt64Atomics-04475#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-sparseImageInt64Atomics sparseImageInt64Atomics>
--     feature is not enabled, 'Vulkan.Core10.Handles.Buffer' objects
--     created with the
--     'Vulkan.Core10.Enums.BufferCreateFlagBits.BUFFER_CREATE_SPARSE_RESIDENCY_BIT'
--     flag /must/ not be accessed by atomic instructions through an
--     @OpTypeImage@ with a @SampledType@ with a @Width@ of 64 by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageWeightedSampleQCOM-06971#
--     If @OpImageWeightedSampleQCOM@ is used to sample a
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageWeightedSampleQCOM-06972#
--     If @OpImageWeightedSampleQCOM@ uses a
--     'Vulkan.Core10.Handles.ImageView' as a sample weight image as a
--     result of this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageBoxFilterQCOM-06973# If
--     @OpImageBoxFilterQCOM@ is used to sample a
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageBlockMatchSSDQCOM-06974#
--     If @OpImageBlockMatchSSDQCOM@ is used to read from an
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageBlockMatchSADQCOM-06975#
--     If @OpImageBlockMatchSADQCOM@ is used to read from an
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageBlockMatchSADQCOM-06976#
--     If @OpImageBlockMatchSADQCOM@ or OpImageBlockMatchSSDQCOM is used to
--     read from a reference image as result of this command, then the
--     specified reference coordinates /must/ not fail
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#textures-integer-coordinate-validation integer texel coordinate validation>.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageWeightedSampleQCOM-06977#
--     If @OpImageWeightedSampleQCOM@, @OpImageBoxFilterQCOM@,
--     @OpImageBlockMatchSSDQCOM@, or @OpImageBlockMatchSADQCOM@ uses a
--     'Vulkan.Core10.Handles.Sampler' as a result of this command, then
--     the sampler /must/ have been created with
--     'Vulkan.Core10.Enums.SamplerCreateFlagBits.SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM'.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpImageWeightedSampleQCOM-06978#
--     If any command other than @OpImageWeightedSampleQCOM@,
--     @OpImageBoxFilterQCOM@, @OpImageBlockMatchSSDQCOM@, or
--     @OpImageBlockMatchSADQCOM@ uses a 'Vulkan.Core10.Handles.Sampler' as
--     a result of this command, then the sampler /must/ not have been
--     created with
--     'Vulkan.Core10.Enums.SamplerCreateFlagBits.SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM'.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-07288# Any shader
--     invocation executed by this command /must/
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#shaders-termination terminate>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-renderPass-02684# The current
--     render pass /must/ be
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#renderpass-compatibility compatible>
--     with the @renderPass@ member of the
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo' structure
--     specified when creating the 'Vulkan.Core10.Handles.Pipeline' bound
--     to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-subpass-02685# The subpass index
--     of the current render pass /must/ be equal to the @subpass@ member
--     of the 'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo' structure
--     specified when creating the 'Vulkan.Core10.Handles.Pipeline' bound
--     to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-02686# Every input
--     attachment used by the current subpass /must/ be bound to the
--     pipeline via a descriptor set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-OpTypeImage-07468# If any shader
--     executed by this pipeline accesses an @OpTypeImage@ variable with a
--     @Dim@ operand of @SubpassData@, it /must/ be decorated with an
--     @InputAttachmentIndex@ that corresponds to a valid input attachment
--     in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-07469# Input attachment
--     views accessed in a subpass /must/ be created with the same
--     'Vulkan.Core10.Enums.Format.Format' as the corresponding subpass
--     definition be created with a 'Vulkan.Core10.Handles.ImageView' that
--     is an attachment in the currently bound
--     'Vulkan.Core10.Handles.Framebuffer' at an index that corresponds to
--     a valid input attachment in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06537# Memory backing image
--     subresources used as attachments in the current render pass /must/
--     not be written in any way other than as an attachment by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06538# If any recorded
--     command in the current subpass will write to an image subresource as
--     an attachment, this command /must/ not read from the memory backing
--     that image subresource in any other way than as an attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06539# If any recorded
--     command in the current subpass will read from an image subresource
--     used as an attachment in any way other than as an attachment, this
--     command /must/ not write to that image subresource as an attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06886# If the current
--     render pass instance uses a depth\/stencil attachment with a
--     read-only layout for the depth aspect,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fragops-depth-write depth writes>
--     /must/ be disabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06887# If the current
--     render pass instance uses a depth\/stencil attachment with a
--     read-only layout for the stencil aspect and stencil test is enabled,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fragops-stencil all stencil ops>
--     /must/ be 'Vulkan.Core10.Enums.StencilOp.STENCIL_OP_KEEP'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-maxMultiviewInstanceIndex-02688#
--     If the draw is recorded in a render pass instance with multiview
--     enabled, the maximum instance index /must/ be less than or equal to
--     'Vulkan.Core11.Promoted_From_VK_KHR_multiview.PhysicalDeviceMultiviewProperties'::@maxMultiviewInstanceIndex@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsEnable-02689# If
--     the bound graphics pipeline was created with
--     'Vulkan.Extensions.VK_EXT_sample_locations.PipelineSampleLocationsStateCreateInfoEXT'::@sampleLocationsEnable@
--     set to 'Vulkan.Core10.FundamentalTypes.TRUE' and the current subpass
--     has a depth\/stencil attachment, then that attachment /must/ have
--     been created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-06666# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-03417# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     dynamic state enabled, then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ match the
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo'::@scissorCount@
--     of the pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-scissorCount-03418# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @scissorCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ match the
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo'::@viewportCount@
--     of the pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-03419# If the
--     bound graphics pipeline state was created with both the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic states enabled then both
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     and
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ match the @scissorCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-04137# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_W_SCALING_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_clip_space_w_scaling.PipelineViewportWScalingStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-04138# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_W_SCALING_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_NV_clip_space_w_scaling.cmdSetViewportWScalingNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-04139# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_shading_rate_image.PipelineViewportShadingRateImageStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-04140# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_NV_shading_rate_image.cmdSetViewportShadingRatePaletteNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-VkPipelineVieportCreateInfo-04141#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled and a
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'
--     structure chained from
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo', then the
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-VkPipelineVieportCreateInfo-04142#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled and a
--     'Vulkan.Extensions.VK_NV_scissor_exclusive.PipelineViewportExclusiveScissorStateCreateInfoNV'
--     structure chained from
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo', then the
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Extensions.VK_NV_scissor_exclusive.PipelineViewportExclusiveScissorStateCreateInfoNV'::@exclusiveScissorCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-04876# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE'
--     dynamic state enabled then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state2.cmdSetRasterizerDiscardEnable'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-None-04877# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_DEPTH_BIAS_ENABLE'
--     dynamic state enabled then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state2.cmdSetDepthBiasEnable'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-logicOp-04878# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LOGIC_OP_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state2.cmdSetLogicOpEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command and the @logicOp@ /must/ be a valid
--     'Vulkan.Core10.Enums.LogicOp.LogicOp' value
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-primitiveFragmentShadingRateWithMultipleViewports-04552#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-primitiveFragmentShadingRateWithMultipleViewports primitiveFragmentShadingRateWithMultipleViewports>
--     limit is not supported, the bound graphics pipeline was created with
--     the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, and any of the shader stages of the bound
--     graphics pipeline write to the @PrimitiveShadingRateKHR@ built-in,
--     then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ be @1@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-blendEnable-04727# If
--     rasterization is not disabled in the bound graphics pipeline, then
--     for each color attachment in the subpass, if the corresponding image
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     do not contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT',
--     then the @blendEnable@ member of the corresponding element of the
--     @pAttachments@ member of @pColorBlendState@ /must/ be
--     'Vulkan.Core10.FundamentalTypes.FALSE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-multisampledRenderToSingleSampled-07284#
--     If rasterization is not disabled in the bound graphics pipeline, and
--     none of the @VK_AMD_mixed_attachment_samples@ extension, the
--     @VK_NV_framebuffer_mixed_samples@ extension, or the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature are enabled, then
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     /must/ be the same as the current subpass color and\/or
--     depth\/stencil attachments
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06172# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06173# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06174# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06175# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06176# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06177# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewMask-06178# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound graphics pipeline /must/ have been created with
--     a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@viewMask@
--     equal to
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@viewMask@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-colorAttachmentCount-06179# If
--     the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound graphics pipeline /must/ have been created with
--     a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@colorAttachmentCount@
--     equal to
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-colorAttachmentCount-06180# If
--     the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a 'Vulkan.Core10.Enums.Format.Format' equal to the
--     corresponding element of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@pColorAttachmentFormats@
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-attachmentCount-06667# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @attachmentCount@ parameter of
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ be greater than or equal to the
--     'Vulkan.Core10.Pipeline.PipelineColorBlendStateCreateInfo'::@attachmentCount@
--     of the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-attachmentCount-06815# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @attachmentCount@ parameter of
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ be less than or equal to the @maxColorAttachments@ member of
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-pDepthAttachment-06181# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@depthAttachmentFormat@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the 'Vulkan.Core10.Enums.Format.Format' used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-pStencilAttachment-06182# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@stencilAttachmentFormat@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the 'Vulkan.Core10.Enums.Format.Format' used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06183# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.RenderingFragmentShadingRateAttachmentInfoKHR'::@imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the currently
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Core10.Enums.PipelineCreateFlagBits.PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-imageView-06184# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.RenderingFragmentDensityMapAttachmentInfoEXT'::@imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the currently
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Core10.Enums.PipelineCreateFlagBits.PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-colorAttachmentCount-06185# If
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     with a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     parameter greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a sample count equal to the corresponding element of the
--     @pColorAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-pDepthAttachment-06186# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of the
--     @depthStencilAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-pStencilAttachment-06187# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of the
--     @depthStencilAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-multisampledRenderToSingleSampled-07285#
--     If the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and the current render pass instance was
--     begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     with a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     parameter greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a sample count equal to the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-multisampledRenderToSingleSampled-07286#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-multisampledRenderToSingleSampled-07287#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-renderPass-06198# If the current
--     render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline /must/ have been created with a
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'::@renderPass@
--     equal to 'Vulkan.Core10.APIConstants.NULL_HANDLE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-primitivesGeneratedQueryWithRasterizerDiscard-06708#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithRasterizerDiscard primitivesGeneratedQueryWithRasterizerDiscard>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#primsrast-discard rasterization discard>
--     /must/ not be enabled.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-primitivesGeneratedQueryWithNonZeroStreams-06709#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithNonZeroStreams primitivesGeneratedQueryWithNonZeroStreams>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active, the bound graphics pipeline /must/ not have been
--     created with a non-zero value in
--     'Vulkan.Extensions.VK_EXT_transform_feedback.PipelineRasterizationStateStreamCreateInfoEXT'::@rasterizationStream@.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-pColorBlendEnables-07470# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     set @pColorBlendEnables@ for any attachment to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then for those attachments in
--     the subpass the corresponding image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-rasterizationSamples-07471# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, and the current subpass does not use any color
--     and\/or depth\/stencil attachments, then the @rasterizationSamples@
--     in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     /must/ follow the rules for a
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#renderpass-noattachments zero-attachment subpass>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-samples-07472# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_MASK_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state disabled, then the @samples@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleMaskEXT'
--     /must/ be greater or equal to the
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     parameter used to create the bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-samples-07473# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_MASK_EXT'
--     state and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     states enabled, then the @samples@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleMaskEXT'
--     /must/ be greater or equal to the @rasterizationSamples@ parameter
--     in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-multisampledRenderToSingleSampled-07475#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, and none of the @VK_AMD_mixed_attachment_samples@
--     extension, @VK_NV_framebuffer_mixed_samples@ extension, or the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is enabled, then the @rasterizationSamples@ in the last call
--     to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     /must/ be the same as the current subpass color and\/or
--     depth\/stencil attachments
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-firstAttachment-07476# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     calls /must/ specify an enable for all active color attachments in
--     the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-firstAttachment-07477# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEquationEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEquationEXT'
--     calls /must/ specify the blend equations for all active color
--     attachments in the current subpass where blending is enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-firstAttachment-07478# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_MASK_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorWriteMaskEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorWriteMaskEXT'
--     calls /must/ specify the color write mask for all active color
--     attachments in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-firstAttachment-07479# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     calls /must/ specify the advanced blend equations for all active
--     color attachments in the current subpass where blending is enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-advancedBlendMaxColorAttachments-07480#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     dynamic states enabled and the last calls to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     and
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     have enabled advanced blending, then the number of active color
--     attachments in the current subpass must not exceed
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-advancedBlendMaxColorAttachments advancedBlendMaxColorAttachments>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-primitivesGeneratedQueryWithNonZeroStreams-07481#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithNonZeroStreams primitivesGeneratedQueryWithNonZeroStreams>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active, and the bound graphics pipeline was created with
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_STREAM_EXT'
--     state enabled, the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationStreamEXT'
--     /must/ have set the @rasterizationStream@ to zero
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsPerPixel-07482#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state disabled, then the @sampleLocationsPerPixel@ member of
--     @pSampleLocationsInfo@ in the last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ equal the @rasterizationSamples@ member of the
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'
--     structure the bound graphics pipeline has been created with
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsPerPixel-07483#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, then the @sampleLocationsPerPixel@ member of
--     @pSampleLocationsInfo@ in the last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ equal the @rasterizationSamples@ parameter of the last call
--     to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsEnable-07484# If
--     the bound graphics pipeline was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     and the current subpass has a depth\/stencil attachment, then that
--     attachment /must/ have been created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsEnable-07485# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     then the @sampleLocationsInfo.sampleLocationGridSize.width@ in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ evenly divide
--     'Vulkan.Extensions.VK_EXT_sample_locations.MultisamplePropertiesEXT'::@sampleLocationGridSize.width@
--     as returned by
--     'Vulkan.Extensions.VK_EXT_sample_locations.getPhysicalDeviceMultisamplePropertiesEXT'
--     with a @samples@ parameter equaling @rasterizationSamples@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsEnable-07486# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     then the @sampleLocationsInfo.sampleLocationGridSize.height@ in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ evenly divide
--     'Vulkan.Extensions.VK_EXT_sample_locations.MultisamplePropertiesEXT'::@sampleLocationGridSize.height@
--     as returned by
--     'Vulkan.Extensions.VK_EXT_sample_locations.getPhysicalDeviceMultisamplePropertiesEXT'
--     with a @samples@ parameter equaling @rasterizationSamples@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-sampleLocationsEnable-07487# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     the fragment shader code /must/ not statically use the extended
--     instruction @InterpolateAtSample@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-coverageModulationTableEnable-07488#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageModulationTableEnableNV'
--     set @coverageModulationTableEnable@ to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then the
--     @coverageModulationTableCount@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageModulationTableNV'
--     /must/ equal the current @rasterizationSamples@ divided by the
--     number of color samples in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-rasterizationSamples-07489# If
--     the @VK_NV_framebuffer_mixed_samples@ extension is enabled, and if
--     current subpass has a depth\/stencil attachment and depth test,
--     stencil test, or depth bounds test are enabled in the currently
--     bound pipeline state, then the current @rasterizationSamples@ must
--     be the same as the sample count of the depth\/stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-coverageToColorEnable-07490# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageToColorEnableNV'
--     set the @coverageToColorEnable@ to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then the current subpass must
--     have a color attachment at the location selected by the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageToColorLocationNV'
--     @coverageToColorLocation@, with a
--     'Vulkan.Core10.Enums.Format.Format' of
--     'Vulkan.Core10.Enums.Format.FORMAT_R8_UINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R8_SINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R16_UINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R16_SINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R32_UINT', or
--     'Vulkan.Core10.Enums.Format.FORMAT_R32_SINT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-coverageReductionMode-07491# If
--     this @VK_NV_coverage_reduction_mode@ extension is enabled, the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     states enabled, the current coverage reduction mode
--     @coverageReductionMode@, then the current @rasterizationSamples@,
--     and the sample counts for the color and depth\/stencil attachments
--     (if the subpass has them) must be a valid combination returned by
--     'Vulkan.Extensions.VK_NV_coverage_reduction_mode.getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-07492# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-viewportCount-07493# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetViewportSwizzleNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-rasterizationSamples-07494# If
--     the @VK_NV_framebuffer_mixed_samples@ extension is enabled, and if
--     the current subpass has any color attachments and
--     @rasterizationSamples@ of the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     is greater than the number of color samples, then the pipeline
--     @sampleShadingEnable@ /must/ be
--     'Vulkan.Core10.FundamentalTypes.FALSE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-stippledLineEnable-07495# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_RECTANGULAR_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledRectangularLines stippledRectangularLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-stippledLineEnable-07496# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_BRESENHAM_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledBresenhamLines stippledBresenhamLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-stippledLineEnable-07497# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledSmoothLines stippledSmoothLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-stippledLineEnable-07498# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_DEFAULT_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledRectangularLines stippledRectangularLines>
--     feature /must/ be enabled and
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'::@strictLines@
--     must be VK_TRUE
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-conservativePointAndLineRasterization-07499#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT'
--     dynamic state enabled,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-conservativePointAndLineRasterization conservativePointAndLineRasterization>
--     is not supported, and the effective primitive topology output by the
--     last pre-rasterization shader stage is a line or point, then the
--     @conservativeRasterizationMode@ set by the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetConservativeRasterizationModeEXT'
--     /must/ be
--     'Vulkan.Extensions.VK_EXT_conservative_rasterization.CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-stage-07073# If the currently
--     bound pipeline was created with the
--     'Vulkan.Core10.Pipeline.PipelineShaderStageCreateInfo'::@stage@
--     member of an element of
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'::@pStages@ set
--     to
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_VERTEX_BIT',
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TESSELLATION_CONTROL_BIT',
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TESSELLATION_EVALUATION_BIT'
--     or
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_GEOMETRY_BIT',
--     then
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#queries-mesh-shader Mesh Shader Queries>
--     must not be active
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-buffer-02708# If @buffer@ is
--     non-sparse then it /must/ be bound completely and contiguously to a
--     single 'Vulkan.Core10.Handles.DeviceMemory' object
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-buffer-02709# @buffer@ /must/
--     have been created with the
--     'Vulkan.Core10.Enums.BufferUsageFlagBits.BUFFER_USAGE_INDIRECT_BUFFER_BIT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-offset-02710# @offset@ /must/ be
--     a multiple of @4@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commandBuffer-02711#
--     @commandBuffer@ /must/ not be a protected command buffer
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-drawCount-02718# If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multiDrawIndirect multiDrawIndirect>
--     feature is not enabled, @drawCount@ /must/ be @0@ or @1@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-drawCount-02719# @drawCount@
--     /must/ be less than or equal to
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'::@maxDrawIndirectCount@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-drawCount-07088# If @drawCount@
--     is greater than @1@, @stride@ /must/ be a multiple of @4@ and /must/
--     be greater than or equal to
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-drawCount-07089# If @drawCount@
--     is equal to @1@, (@offset@ +
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')) /must/ be less than or
--     equal to the size of @buffer@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-drawCount-07090# If @drawCount@
--     is greater than @1@, (@stride@ × (@drawCount@ - 1) + @offset@ +
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')) /must/ be less than or
--     equal to the size of @buffer@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-MeshEXT-07091# The current
--     pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     /must/ contain a shader stage using the @MeshEXT@ @Execution@
--     @Model@
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commandBuffer-parameter#
--     @commandBuffer@ /must/ be a valid
--     'Vulkan.Core10.Handles.CommandBuffer' handle
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-buffer-parameter# @buffer@
--     /must/ be a valid 'Vulkan.Core10.Handles.Buffer' handle
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commandBuffer-recording#
--     @commandBuffer@ /must/ be in the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#commandbuffers-lifecycle recording state>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commandBuffer-cmdpool# The
--     'Vulkan.Core10.Handles.CommandPool' that @commandBuffer@ was
--     allocated from /must/ support graphics operations
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-renderpass# This command /must/
--     only be called inside of a render pass instance
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-videocoding# This command /must/
--     only be called outside of a video coding scope
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectEXT-commonparent# Both of @buffer@,
--     and @commandBuffer@ /must/ have been created, allocated, or
--     retrieved from the same 'Vulkan.Core10.Handles.Device'
--
-- == Host Synchronization
--
-- -   Host access to @commandBuffer@ /must/ be externally synchronized
--
-- -   Host access to the 'Vulkan.Core10.Handles.CommandPool' that
--     @commandBuffer@ was allocated from /must/ be externally synchronized
--
-- == Command Properties
--
-- \'
--
-- +----------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
-- | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkCommandBufferLevel Command Buffer Levels> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdBeginRenderPass Render Pass Scope> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdBeginVideoCodingKHR Video Coding Scope> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkQueueFlagBits Supported Queue Types> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-queueoperation-command-types Command Type> |
-- +============================================================================================================================+========================================================================================================================+=============================================================================================================================+=======================================================================================================================+========================================================================================================================================+
-- | Primary                                                                                                                    | Inside                                                                                                                 | Outside                                                                                                                     | Graphics                                                                                                              | Action                                                                                                                                 |
-- | Secondary                                                                                                                  |                                                                                                                        |                                                                                                                             |                                                                                                                       |                                                                                                                                        |
-- +----------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_mesh_shader VK_EXT_mesh_shader>,
-- 'Vulkan.Core10.Handles.Buffer', 'Vulkan.Core10.Handles.CommandBuffer',
-- 'Vulkan.Core10.FundamentalTypes.DeviceSize'
cmdDrawMeshTasksIndirectEXT :: forall io
                             . (MonadIO io)
                            => -- | @commandBuffer@ is the command buffer into which the command is
                               -- recorded.
                               CommandBuffer
                            -> -- | @buffer@ is the buffer containing draw parameters.
                               Buffer
                            -> -- | @offset@ is the byte offset into @buffer@ where parameters begin.
                               ("offset" ::: DeviceSize)
                            -> -- | @drawCount@ is the number of draws to execute, and /can/ be zero.
                               ("drawCount" ::: Word32)
                            -> -- | @stride@ is the byte stride between successive sets of draw parameters.
                               ("stride" ::: Word32)
                            -> io ()
cmdDrawMeshTasksIndirectEXT commandBuffer
                              buffer
                              offset
                              drawCount
                              stride = liftIO $ do
  let vkCmdDrawMeshTasksIndirectEXTPtr = pVkCmdDrawMeshTasksIndirectEXT (case commandBuffer of CommandBuffer{deviceCmds} -> deviceCmds)
  unless (vkCmdDrawMeshTasksIndirectEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkCmdDrawMeshTasksIndirectEXT is null" Nothing Nothing
  let vkCmdDrawMeshTasksIndirectEXT' = mkVkCmdDrawMeshTasksIndirectEXT vkCmdDrawMeshTasksIndirectEXTPtr
  traceAroundEvent "vkCmdDrawMeshTasksIndirectEXT" (vkCmdDrawMeshTasksIndirectEXT'
                                                      (commandBufferHandle (commandBuffer))
                                                      (buffer)
                                                      (offset)
                                                      (drawCount)
                                                      (stride))
  pure $ ()


foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "dynamic" mkVkCmdDrawMeshTasksIndirectCountEXT
  :: FunPtr (Ptr CommandBuffer_T -> Buffer -> DeviceSize -> Buffer -> DeviceSize -> Word32 -> Word32 -> IO ()) -> Ptr CommandBuffer_T -> Buffer -> DeviceSize -> Buffer -> DeviceSize -> Word32 -> Word32 -> IO ()

-- | vkCmdDrawMeshTasksIndirectCountEXT - Perform an indirect mesh tasks draw
-- with the draw count sourced from a buffer
--
-- = Description
--
-- 'cmdDrawMeshTasksIndirectCountEXT' behaves similarly to
-- 'cmdDrawMeshTasksIndirectEXT' except that the draw count is read by the
-- device from a buffer during execution. The command will read an unsigned
-- 32-bit integer from @countBuffer@ located at @countBufferOffset@ and use
-- this as the draw count.
--
-- == Valid Usage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-magFilter-04553# If a
--     'Vulkan.Core10.Handles.Sampler' created with @magFilter@ or
--     @minFilter@ equal to 'Vulkan.Core10.Enums.Filter.FILTER_LINEAR' and
--     @compareEnable@ equal to 'Vulkan.Core10.FundamentalTypes.FALSE' is
--     used to sample a 'Vulkan.Core10.Handles.ImageView' as a result of
--     this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-mipmapMode-04770# If a
--     'Vulkan.Core10.Handles.Sampler' created with @mipmapMode@ equal to
--     'Vulkan.Core10.Enums.SamplerMipmapMode.SAMPLER_MIPMAP_MODE_LINEAR'
--     and @compareEnable@ equal to 'Vulkan.Core10.FundamentalTypes.FALSE'
--     is used to sample a 'Vulkan.Core10.Handles.ImageView' as a result of
--     this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06479# If a
--     'Vulkan.Core10.Handles.ImageView' is sampled with
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#textures-depth-compare-operation depth comparison>,
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02691# If a
--     'Vulkan.Core10.Handles.ImageView' is accessed using atomic
--     operations as a result of this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02692# If a
--     'Vulkan.Core10.Handles.ImageView' is sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' as a result of this
--     command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-filterCubic-02694# Any
--     'Vulkan.Core10.Handles.ImageView' being sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' as a result of this
--     command /must/ have a
--     'Vulkan.Core10.Enums.ImageViewType.ImageViewType' and format that
--     supports cubic filtering, as specified by
--     'Vulkan.Extensions.VK_EXT_filter_cubic.FilterCubicImageViewImageFormatPropertiesEXT'::@filterCubic@
--     returned by
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceImageFormatProperties2'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-filterCubicMinmax-02695#
--     Any 'Vulkan.Core10.Handles.ImageView' being sampled with
--     'Vulkan.Core10.Enums.Filter.FILTER_CUBIC_EXT' with a reduction mode
--     of either
--     'Vulkan.Core12.Enums.SamplerReductionMode.SAMPLER_REDUCTION_MODE_MIN'
--     or
--     'Vulkan.Core12.Enums.SamplerReductionMode.SAMPLER_REDUCTION_MODE_MAX'
--     as a result of this command /must/ have a
--     'Vulkan.Core10.Enums.ImageViewType.ImageViewType' and format that
--     supports cubic filtering together with minmax filtering, as
--     specified by
--     'Vulkan.Extensions.VK_EXT_filter_cubic.FilterCubicImageViewImageFormatPropertiesEXT'::@filterCubicMinmax@
--     returned by
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceImageFormatProperties2'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-flags-02696# Any
--     'Vulkan.Core10.Handles.Image' created with a
--     'Vulkan.Core10.Image.ImageCreateInfo'::@flags@ containing
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_CORNER_SAMPLED_BIT_NV'
--     sampled as a result of this command /must/ only be sampled using a
--     'Vulkan.Core10.Enums.SamplerAddressMode.SamplerAddressMode' of
--     'Vulkan.Core10.Enums.SamplerAddressMode.SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpTypeImage-07027# For any
--     'Vulkan.Core10.Handles.ImageView' being written as a storage image
--     where the image format field of the @OpTypeImage@ is @Unknown@, the
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpTypeImage-07028# For any
--     'Vulkan.Core10.Handles.ImageView' being read as a storage image
--     where the image format field of the @OpTypeImage@ is @Unknown@, the
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpTypeImage-07029# For any
--     'Vulkan.Core10.Handles.BufferView' being written as a storage texel
--     buffer where the image format field of the @OpTypeImage@ is
--     @Unknown@, the view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkFormatProperties3 buffer features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpTypeImage-07030# Any
--     'Vulkan.Core10.Handles.BufferView' being read as a storage texel
--     buffer where the image format field of the @OpTypeImage@ is
--     @Unknown@ then the view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkFormatProperties3 buffer features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02697# For each set
--     /n/ that is statically used by the 'Vulkan.Core10.Handles.Pipeline'
--     bound to the pipeline bind point used by this command, a descriptor
--     set /must/ have been bound to /n/ at the same pipeline bind point,
--     with a 'Vulkan.Core10.Handles.PipelineLayout' that is compatible for
--     set /n/, with the 'Vulkan.Core10.Handles.PipelineLayout' used to
--     create the current 'Vulkan.Core10.Handles.Pipeline', as described in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#descriptorsets-compatibility ???>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-maintenance4-06425# If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-maintenance4 maintenance4>
--     feature is not enabled, then for each push constant that is
--     statically used by the 'Vulkan.Core10.Handles.Pipeline' bound to the
--     pipeline bind point used by this command, a push constant value
--     /must/ have been set for the same pipeline bind point, with a
--     'Vulkan.Core10.Handles.PipelineLayout' that is compatible for push
--     constants, with the 'Vulkan.Core10.Handles.PipelineLayout' used to
--     create the current 'Vulkan.Core10.Handles.Pipeline', as described in
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#descriptorsets-compatibility ???>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02699# Descriptors in
--     each bound descriptor set, specified via
--     'Vulkan.Core10.CommandBufferBuilding.cmdBindDescriptorSets', /must/
--     be valid if they are statically used by the
--     'Vulkan.Core10.Handles.Pipeline' bound to the pipeline bind point
--     used by this command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02700# A valid
--     pipeline /must/ be bound to the pipeline bind point used by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commandBuffer-02701# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command requires any dynamic state, that state
--     /must/ have been set or inherited (if the
--     @VK_NV_inherited_viewport_scissor@ extension is enabled) for
--     @commandBuffer@, and done so after any previously bound pipeline
--     with the corresponding state not specified as dynamic
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02859# There /must/
--     not have been any calls to dynamic state setting commands for any
--     state not specified as dynamic in the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command, since that pipeline was bound
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02702# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used to sample from any
--     'Vulkan.Core10.Handles.Image' with a
--     'Vulkan.Core10.Handles.ImageView' of the type
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_3D',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_CUBE',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_1D_ARRAY',
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_2D_ARRAY' or
--     'Vulkan.Core10.Enums.ImageViewType.IMAGE_VIEW_TYPE_CUBE_ARRAY', in
--     any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02703# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used with any of the SPIR-V
--     @OpImageSample*@ or @OpImageSparseSample*@ instructions with
--     @ImplicitLod@, @Dref@ or @Proj@ in their name, in any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02704# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' object that uses unnormalized
--     coordinates, that sampler /must/ not be used with any of the SPIR-V
--     @OpImageSample*@ or @OpImageSparseSample*@ instructions that
--     includes a LOD bias or any offset values, in any shader stage
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-uniformBuffers-06935# If
--     any stage of the 'Vulkan.Core10.Handles.Pipeline' object bound to
--     the pipeline bind point used by this command accesses a uniform
--     buffer, and that stage was created without enabling either
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT'
--     or
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT'
--     for @uniformBuffers@, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-robustBufferAccess robustBufferAccess>
--     feature is not enabled, that stage /must/ not access values outside
--     of the range of the buffer as specified in the descriptor set bound
--     to the same pipeline bind point
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-storageBuffers-06936# If
--     any stage of the 'Vulkan.Core10.Handles.Pipeline' object bound to
--     the pipeline bind point used by this command accesses a storage
--     buffer, and that stage was created without enabling either
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_EXT'
--     or
--     'Vulkan.Extensions.VK_EXT_pipeline_robustness.PIPELINE_ROBUSTNESS_BUFFER_BEHAVIOR_ROBUST_BUFFER_ACCESS_2_EXT'
--     for @storageBuffers@, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-robustBufferAccess robustBufferAccess>
--     feature is not enabled, that stage /must/ not access values outside
--     of the range of the buffer as specified in the descriptor set bound
--     to the same pipeline bind point
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commandBuffer-02707# If
--     @commandBuffer@ is an unprotected command buffer and
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-protectedNoFault protectedNoFault>
--     is not supported, any resource accessed by the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command /must/ not be a protected resource
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06550# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' or 'Vulkan.Core10.Handles.ImageView'
--     object that enables
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#samplers-YCbCr-conversion sampler Y′CBCR conversion>,
--     that object /must/ only be used with @OpImageSample*@ or
--     @OpImageSparseSample*@ instructions
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-ConstOffset-06551# If the
--     'Vulkan.Core10.Handles.Pipeline' object bound to the pipeline bind
--     point used by this command accesses a
--     'Vulkan.Core10.Handles.Sampler' or 'Vulkan.Core10.Handles.ImageView'
--     object that enables
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#samplers-YCbCr-conversion sampler Y′CBCR conversion>,
--     that object /must/ not use the @ConstOffset@ and @Offset@ operands
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-04115# If a
--     'Vulkan.Core10.Handles.ImageView' is accessed using @OpImageWrite@
--     as a result of this command, then the @Type@ of the @Texel@ operand
--     of that instruction /must/ have at least as many components as the
--     image view’s format
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageWrite-04469# If a
--     'Vulkan.Core10.Handles.BufferView' is accessed using @OpImageWrite@
--     as a result of this command, then the @Type@ of the @Texel@ operand
--     of that instruction /must/ have at least as many components as the
--     buffer view’s format
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-SampledType-04470# If a
--     'Vulkan.Core10.Handles.ImageView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a 64-bit component
--     width is accessed as a result of this command, the @SampledType@ of
--     the @OpTypeImage@ operand of that instruction /must/ have a @Width@
--     of 64
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-SampledType-04471# If a
--     'Vulkan.Core10.Handles.ImageView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a component width less
--     than 64-bit is accessed as a result of this command, the
--     @SampledType@ of the @OpTypeImage@ operand of that instruction
--     /must/ have a @Width@ of 32
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-SampledType-04472# If a
--     'Vulkan.Core10.Handles.BufferView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a 64-bit component
--     width is accessed as a result of this command, the @SampledType@ of
--     the @OpTypeImage@ operand of that instruction /must/ have a @Width@
--     of 64
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-SampledType-04473# If a
--     'Vulkan.Core10.Handles.BufferView' with a
--     'Vulkan.Core10.Enums.Format.Format' that has a component width less
--     than 64-bit is accessed as a result of this command, the
--     @SampledType@ of the @OpTypeImage@ operand of that instruction
--     /must/ have a @Width@ of 32
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sparseImageInt64Atomics-04474#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-sparseImageInt64Atomics sparseImageInt64Atomics>
--     feature is not enabled, 'Vulkan.Core10.Handles.Image' objects
--     created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SPARSE_RESIDENCY_BIT'
--     flag /must/ not be accessed by atomic instructions through an
--     @OpTypeImage@ with a @SampledType@ with a @Width@ of 64 by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sparseImageInt64Atomics-04475#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-sparseImageInt64Atomics sparseImageInt64Atomics>
--     feature is not enabled, 'Vulkan.Core10.Handles.Buffer' objects
--     created with the
--     'Vulkan.Core10.Enums.BufferCreateFlagBits.BUFFER_CREATE_SPARSE_RESIDENCY_BIT'
--     flag /must/ not be accessed by atomic instructions through an
--     @OpTypeImage@ with a @SampledType@ with a @Width@ of 64 by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageWeightedSampleQCOM-06971#
--     If @OpImageWeightedSampleQCOM@ is used to sample a
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageWeightedSampleQCOM-06972#
--     If @OpImageWeightedSampleQCOM@ uses a
--     'Vulkan.Core10.Handles.ImageView' as a sample weight image as a
--     result of this command, then the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageBoxFilterQCOM-06973#
--     If @OpImageBoxFilterQCOM@ is used to sample a
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageBlockMatchSSDQCOM-06974#
--     If @OpImageBlockMatchSSDQCOM@ is used to read from an
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageBlockMatchSADQCOM-06975#
--     If @OpImageBlockMatchSADQCOM@ is used to read from an
--     'Vulkan.Core10.Handles.ImageView' as a result of this command, then
--     the image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core13.Enums.FormatFeatureFlags2.FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageBlockMatchSADQCOM-06976#
--     If @OpImageBlockMatchSADQCOM@ or OpImageBlockMatchSSDQCOM is used to
--     read from a reference image as result of this command, then the
--     specified reference coordinates /must/ not fail
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#textures-integer-coordinate-validation integer texel coordinate validation>.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageWeightedSampleQCOM-06977#
--     If @OpImageWeightedSampleQCOM@, @OpImageBoxFilterQCOM@,
--     @OpImageBlockMatchSSDQCOM@, or @OpImageBlockMatchSADQCOM@ uses a
--     'Vulkan.Core10.Handles.Sampler' as a result of this command, then
--     the sampler /must/ have been created with
--     'Vulkan.Core10.Enums.SamplerCreateFlagBits.SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM'.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpImageWeightedSampleQCOM-06978#
--     If any command other than @OpImageWeightedSampleQCOM@,
--     @OpImageBoxFilterQCOM@, @OpImageBlockMatchSSDQCOM@, or
--     @OpImageBlockMatchSADQCOM@ uses a 'Vulkan.Core10.Handles.Sampler' as
--     a result of this command, then the sampler /must/ not have been
--     created with
--     'Vulkan.Core10.Enums.SamplerCreateFlagBits.SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM'.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-07288# Any shader
--     invocation executed by this command /must/
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#shaders-termination terminate>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-renderPass-02684# The
--     current render pass /must/ be
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#renderpass-compatibility compatible>
--     with the @renderPass@ member of the
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo' structure
--     specified when creating the 'Vulkan.Core10.Handles.Pipeline' bound
--     to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-subpass-02685# The subpass
--     index of the current render pass /must/ be equal to the @subpass@
--     member of the 'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'
--     structure specified when creating the
--     'Vulkan.Core10.Handles.Pipeline' bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-02686# Every input
--     attachment used by the current subpass /must/ be bound to the
--     pipeline via a descriptor set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-OpTypeImage-07468# If any
--     shader executed by this pipeline accesses an @OpTypeImage@ variable
--     with a @Dim@ operand of @SubpassData@, it /must/ be decorated with
--     an @InputAttachmentIndex@ that corresponds to a valid input
--     attachment in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-07469# Input
--     attachment views accessed in a subpass /must/ be created with the
--     same 'Vulkan.Core10.Enums.Format.Format' as the corresponding
--     subpass definition be created with a
--     'Vulkan.Core10.Handles.ImageView' that is an attachment in the
--     currently bound 'Vulkan.Core10.Handles.Framebuffer' at an index that
--     corresponds to a valid input attachment in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06537# Memory backing
--     image subresources used as attachments in the current render pass
--     /must/ not be written in any way other than as an attachment by this
--     command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06538# If any recorded
--     command in the current subpass will write to an image subresource as
--     an attachment, this command /must/ not read from the memory backing
--     that image subresource in any other way than as an attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06539# If any recorded
--     command in the current subpass will read from an image subresource
--     used as an attachment in any way other than as an attachment, this
--     command /must/ not write to that image subresource as an attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06886# If the current
--     render pass instance uses a depth\/stencil attachment with a
--     read-only layout for the depth aspect,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fragops-depth-write depth writes>
--     /must/ be disabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06887# If the current
--     render pass instance uses a depth\/stencil attachment with a
--     read-only layout for the stencil aspect and stencil test is enabled,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fragops-stencil all stencil ops>
--     /must/ be 'Vulkan.Core10.Enums.StencilOp.STENCIL_OP_KEEP'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-maxMultiviewInstanceIndex-02688#
--     If the draw is recorded in a render pass instance with multiview
--     enabled, the maximum instance index /must/ be less than or equal to
--     'Vulkan.Core11.Promoted_From_VK_KHR_multiview.PhysicalDeviceMultiviewProperties'::@maxMultiviewInstanceIndex@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsEnable-02689#
--     If the bound graphics pipeline was created with
--     'Vulkan.Extensions.VK_EXT_sample_locations.PipelineSampleLocationsStateCreateInfoEXT'::@sampleLocationsEnable@
--     set to 'Vulkan.Core10.FundamentalTypes.TRUE' and the current subpass
--     has a depth\/stencil attachment, then that attachment /must/ have
--     been created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-06666# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-03417# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     dynamic state enabled, then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ match the
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo'::@scissorCount@
--     of the pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-scissorCount-03418# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @scissorCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ match the
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo'::@viewportCount@
--     of the pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-03419# If the
--     bound graphics pipeline state was created with both the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SCISSOR_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic states enabled then both
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     and
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ match the @scissorCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetScissorWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-04137# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_W_SCALING_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_clip_space_w_scaling.PipelineViewportWScalingStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-04138# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_W_SCALING_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_NV_clip_space_w_scaling.cmdSetViewportWScalingNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-04139# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_shading_rate_image.PipelineViewportShadingRateImageStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-04140# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SHADING_RATE_PALETTE_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_NV_shading_rate_image.cmdSetViewportShadingRatePaletteNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-VkPipelineVieportCreateInfo-04141#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled and a
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'
--     structure chained from
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo', then the
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-VkPipelineVieportCreateInfo-04142#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled and a
--     'Vulkan.Extensions.VK_NV_scissor_exclusive.PipelineViewportExclusiveScissorStateCreateInfoNV'
--     structure chained from
--     'Vulkan.Core10.Pipeline.PipelineViewportStateCreateInfo', then the
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Extensions.VK_NV_scissor_exclusive.PipelineViewportExclusiveScissorStateCreateInfoNV'::@exclusiveScissorCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-04876# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZER_DISCARD_ENABLE'
--     dynamic state enabled then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state2.cmdSetRasterizerDiscardEnable'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-04877# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_DEPTH_BIAS_ENABLE'
--     dynamic state enabled then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state2.cmdSetDepthBiasEnable'
--     /must/ have been called in the current command buffer prior to this
--     drawing command
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-logicOp-04878# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LOGIC_OP_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state2.cmdSetLogicOpEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command and the @logicOp@ /must/ be a valid
--     'Vulkan.Core10.Enums.LogicOp.LogicOp' value
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-primitiveFragmentShadingRateWithMultipleViewports-04552#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-primitiveFragmentShadingRateWithMultipleViewports primitiveFragmentShadingRateWithMultipleViewports>
--     limit is not supported, the bound graphics pipeline was created with
--     the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, and any of the shader stages of the bound
--     graphics pipeline write to the @PrimitiveShadingRateKHR@ built-in,
--     then
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @viewportCount@ parameter of
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--     /must/ be @1@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-blendEnable-04727# If
--     rasterization is not disabled in the bound graphics pipeline, then
--     for each color attachment in the subpass, if the corresponding image
--     view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     do not contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT',
--     then the @blendEnable@ member of the corresponding element of the
--     @pAttachments@ member of @pColorBlendState@ /must/ be
--     'Vulkan.Core10.FundamentalTypes.FALSE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-multisampledRenderToSingleSampled-07284#
--     If rasterization is not disabled in the bound graphics pipeline, and
--     none of the @VK_AMD_mixed_attachment_samples@ extension, the
--     @VK_NV_framebuffer_mixed_samples@ extension, or the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature are enabled, then
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     /must/ be the same as the current subpass color and\/or
--     depth\/stencil attachments
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06172# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06173# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06174# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_READ_ONLY_STENCIL_ATTACHMENT_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06175# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_ATTACHMENT_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06176# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pDepthAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pDepthAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_DEPTH_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the depth attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06177# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the @imageView@ member of @pStencilAttachment@ is not
--     'Vulkan.Core10.APIConstants.NULL_HANDLE', and the @layout@ member of
--     @pStencilAttachment@ is
--     'Vulkan.Core10.Enums.ImageLayout.IMAGE_LAYOUT_STENCIL_READ_ONLY_OPTIMAL',
--     this command /must/ not write any values to the stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewMask-06178# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound graphics pipeline /must/ have been created with
--     a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@viewMask@
--     equal to
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@viewMask@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-colorAttachmentCount-06179#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound graphics pipeline /must/ have been created with
--     a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@colorAttachmentCount@
--     equal to
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-colorAttachmentCount-06180#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a 'Vulkan.Core10.Enums.Format.Format' equal to the
--     corresponding element of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@pColorAttachmentFormats@
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-attachmentCount-06667# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @attachmentCount@ parameter of
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ be greater than or equal to the
--     'Vulkan.Core10.Pipeline.PipelineColorBlendStateCreateInfo'::@attachmentCount@
--     of the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-attachmentCount-06815# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the @attachmentCount@ parameter of
--     'Vulkan.Extensions.VK_EXT_color_write_enable.cmdSetColorWriteEnableEXT'
--     /must/ be less than or equal to the @maxColorAttachments@ member of
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-pDepthAttachment-06181# If
--     the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@depthAttachmentFormat@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the 'Vulkan.Core10.Enums.Format.Format' used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-pStencilAttachment-06182#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.PipelineRenderingCreateInfo'::@stencilAttachmentFormat@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the 'Vulkan.Core10.Enums.Format.Format' used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06183# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.RenderingFragmentShadingRateAttachmentInfoKHR'::@imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the currently
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Core10.Enums.PipelineCreateFlagBits.PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-imageView-06184# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     and
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.RenderingFragmentDensityMapAttachmentInfoEXT'::@imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the currently
--     bound graphics pipeline /must/ have been created with
--     'Vulkan.Core10.Enums.PipelineCreateFlagBits.PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-colorAttachmentCount-06185#
--     If the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     with a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     parameter greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a sample count equal to the corresponding element of the
--     @pColorAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-pDepthAttachment-06186# If
--     the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of the
--     @depthStencilAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-pStencilAttachment-06187#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created with a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of the
--     @depthStencilAttachmentSamples@ member of
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-multisampledRenderToSingleSampled-07285#
--     If the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and the current render pass instance was
--     begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering'
--     with a
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@colorAttachmentCount@
--     parameter greater than @0@, then each element of the
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pColorAttachments@
--     array with a @imageView@ not equal to
--     'Vulkan.Core10.APIConstants.NULL_HANDLE' /must/ have been created
--     with a sample count equal to the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-multisampledRenderToSingleSampled-07286#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pDepthAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-multisampledRenderToSingleSampled-07287#
--     If the current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline was created without a
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoAMD'
--     or
--     'Vulkan.Extensions.VK_KHR_dynamic_rendering.AttachmentSampleCountInfoNV'
--     structure, and the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is not enabled, and
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--     was not 'Vulkan.Core10.APIConstants.NULL_HANDLE', the value of
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     used to create the currently bound graphics pipeline /must/ be equal
--     to the sample count used to create
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.RenderingInfo'::@pStencilAttachment->imageView@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-renderPass-06198# If the
--     current render pass instance was begun with
--     'Vulkan.Core13.Promoted_From_VK_KHR_dynamic_rendering.cmdBeginRendering',
--     the currently bound pipeline /must/ have been created with a
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'::@renderPass@
--     equal to 'Vulkan.Core10.APIConstants.NULL_HANDLE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-primitivesGeneratedQueryWithRasterizerDiscard-06708#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithRasterizerDiscard primitivesGeneratedQueryWithRasterizerDiscard>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#primsrast-discard rasterization discard>
--     /must/ not be enabled.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-primitivesGeneratedQueryWithNonZeroStreams-06709#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithNonZeroStreams primitivesGeneratedQueryWithNonZeroStreams>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active, the bound graphics pipeline /must/ not have been
--     created with a non-zero value in
--     'Vulkan.Extensions.VK_EXT_transform_feedback.PipelineRasterizationStateStreamCreateInfoEXT'::@rasterizationStream@.
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-pColorBlendEnables-07470#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     set @pColorBlendEnables@ for any attachment to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then for those attachments in
--     the subpass the corresponding image view’s
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#resources-image-view-format-features format features>
--     /must/ contain
--     'Vulkan.Core10.Enums.FormatFeatureFlagBits.FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-rasterizationSamples-07471#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, and the current subpass does not use any color
--     and\/or depth\/stencil attachments, then the @rasterizationSamples@
--     in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     /must/ follow the rules for a
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#renderpass-noattachments zero-attachment subpass>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-samples-07472# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_MASK_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state disabled, then the @samples@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleMaskEXT'
--     /must/ be greater or equal to the
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'::@rasterizationSamples@
--     parameter used to create the bound graphics pipeline
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-samples-07473# If the bound
--     graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_MASK_EXT'
--     state and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     states enabled, then the @samples@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleMaskEXT'
--     /must/ be greater or equal to the @rasterizationSamples@ parameter
--     in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-multisampledRenderToSingleSampled-07475#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, and none of the @VK_AMD_mixed_attachment_samples@
--     extension, @VK_NV_framebuffer_mixed_samples@ extension, or the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-multisampledRenderToSingleSampled multisampledRenderToSingleSampled>
--     feature is enabled, then the @rasterizationSamples@ in the last call
--     to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     /must/ be the same as the current subpass color and\/or
--     depth\/stencil attachments
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-firstAttachment-07476# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     calls /must/ specify an enable for all active color attachments in
--     the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-firstAttachment-07477# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_EQUATION_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEquationEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEquationEXT'
--     calls /must/ specify the blend equations for all active color
--     attachments in the current subpass where blending is enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-firstAttachment-07478# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_WRITE_MASK_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorWriteMaskEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorWriteMaskEXT'
--     calls /must/ specify the color write mask for all active color
--     attachments in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-firstAttachment-07479# If
--     the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT'
--     dynamic state enabled then
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     /must/ have been called in the current command buffer prior to this
--     drawing command, and the attachments specified by the
--     @firstAttachment@ and @attachmentCount@ parameters of
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     calls /must/ specify the advanced blend equations for all active
--     color attachments in the current subpass where blending is enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-advancedBlendMaxColorAttachments-07480#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ADVANCED_EXT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COLOR_BLEND_ENABLE_EXT'
--     dynamic states enabled and the last calls to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendEnableEXT'
--     and
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetColorBlendAdvancedEXT'
--     have enabled advanced blending, then the number of active color
--     attachments in the current subpass must not exceed
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-advancedBlendMaxColorAttachments advancedBlendMaxColorAttachments>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-primitivesGeneratedQueryWithNonZeroStreams-07481#
--     If the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-primitivesGeneratedQueryWithNonZeroStreams primitivesGeneratedQueryWithNonZeroStreams>
--     feature is not enabled and the
--     'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--     query is active, and the bound graphics pipeline was created with
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_STREAM_EXT'
--     state enabled, the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationStreamEXT'
--     /must/ have set the @rasterizationStream@ to zero
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsPerPixel-07482#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state disabled, then the @sampleLocationsPerPixel@ member of
--     @pSampleLocationsInfo@ in the last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ equal the @rasterizationSamples@ member of the
--     'Vulkan.Core10.Pipeline.PipelineMultisampleStateCreateInfo'
--     structure the bound graphics pipeline has been created with
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsPerPixel-07483#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     state enabled, then the @sampleLocationsPerPixel@ member of
--     @pSampleLocationsInfo@ in the last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ equal the @rasterizationSamples@ parameter of the last call
--     to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsEnable-07484#
--     If the bound graphics pipeline was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     and the current subpass has a depth\/stencil attachment, then that
--     attachment /must/ have been created with the
--     'Vulkan.Core10.Enums.ImageCreateFlagBits.IMAGE_CREATE_SAMPLE_LOCATIONS_COMPATIBLE_DEPTH_BIT_EXT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsEnable-07485#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     then the @sampleLocationsInfo.sampleLocationGridSize.width@ in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ evenly divide
--     'Vulkan.Extensions.VK_EXT_sample_locations.MultisamplePropertiesEXT'::@sampleLocationGridSize.width@
--     as returned by
--     'Vulkan.Extensions.VK_EXT_sample_locations.getPhysicalDeviceMultisamplePropertiesEXT'
--     with a @samples@ parameter equaling @rasterizationSamples@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsEnable-07486#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_EXT'
--     state enabled and the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     then the @sampleLocationsInfo.sampleLocationGridSize.height@ in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_sample_locations.cmdSetSampleLocationsEXT'
--     /must/ evenly divide
--     'Vulkan.Extensions.VK_EXT_sample_locations.MultisamplePropertiesEXT'::@sampleLocationGridSize.height@
--     as returned by
--     'Vulkan.Extensions.VK_EXT_sample_locations.getPhysicalDeviceMultisamplePropertiesEXT'
--     with a @samples@ parameter equaling @rasterizationSamples@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-sampleLocationsEnable-07487#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_SAMPLE_LOCATIONS_ENABLE_EXT'
--     state enabled, and if @sampleLocationsEnable@ was
--     'Vulkan.Core10.FundamentalTypes.TRUE' in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetSampleLocationsEnableEXT',
--     the fragment shader code /must/ not statically use the extended
--     instruction @InterpolateAtSample@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-coverageModulationTableEnable-07488#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_MODULATION_TABLE_ENABLE_NV'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageModulationTableEnableNV'
--     set @coverageModulationTableEnable@ to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then the
--     @coverageModulationTableCount@ parameter in the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageModulationTableNV'
--     /must/ equal the current @rasterizationSamples@ divided by the
--     number of color samples in the current subpass
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-rasterizationSamples-07489#
--     If the @VK_NV_framebuffer_mixed_samples@ extension is enabled, and
--     if current subpass has a depth\/stencil attachment and depth test,
--     stencil test, or depth bounds test are enabled in the currently
--     bound pipeline state, then the current @rasterizationSamples@ must
--     be the same as the sample count of the depth\/stencil attachment
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-coverageToColorEnable-07490#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV'
--     state enabled and the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageToColorEnableNV'
--     set the @coverageToColorEnable@ to
--     'Vulkan.Core10.FundamentalTypes.TRUE', then the current subpass must
--     have a color attachment at the location selected by the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetCoverageToColorLocationNV'
--     @coverageToColorLocation@, with a
--     'Vulkan.Core10.Enums.Format.Format' of
--     'Vulkan.Core10.Enums.Format.FORMAT_R8_UINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R8_SINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R16_UINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R16_SINT',
--     'Vulkan.Core10.Enums.Format.FORMAT_R32_UINT', or
--     'Vulkan.Core10.Enums.Format.FORMAT_R32_SINT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-coverageReductionMode-07491#
--     If this @VK_NV_coverage_reduction_mode@ extension is enabled, the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_COVERAGE_TO_COLOR_ENABLE_NV'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_RASTERIZATION_SAMPLES_EXT'
--     states enabled, the current coverage reduction mode
--     @coverageReductionMode@, then the current @rasterizationSamples@,
--     and the sample counts for the color and depth\/stencil attachments
--     (if the subpass has them) must be a valid combination returned by
--     'Vulkan.Extensions.VK_NV_coverage_reduction_mode.getPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-07492# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     dynamic state enabled, but not the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV'
--     dynamic state enabled, then the bound graphics pipeline /must/ have
--     been created with
--     'Vulkan.Extensions.VK_NV_viewport_swizzle.PipelineViewportSwizzleStateCreateInfoNV'::@viewportCount@
--     greater or equal to the @viewportCount@ parameter in the last call
--     to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-viewportCount-07493# If the
--     bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_WITH_COUNT'
--     and
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_VIEWPORT_SWIZZLE_NV'
--     dynamic states enabled then the @viewportCount@ parameter in the
--     last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetViewportSwizzleNV'
--     /must/ be greater than or equal to the @viewportCount@ parameter in
--     the last call to
--     'Vulkan.Core13.Promoted_From_VK_EXT_extended_dynamic_state.cmdSetViewportWithCount'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-rasterizationSamples-07494#
--     If the @VK_NV_framebuffer_mixed_samples@ extension is enabled, and
--     if the current subpass has any color attachments and
--     @rasterizationSamples@ of the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetRasterizationSamplesEXT'
--     is greater than the number of color samples, then the pipeline
--     @sampleShadingEnable@ /must/ be
--     'Vulkan.Core10.FundamentalTypes.FALSE'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-stippledLineEnable-07495#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_RECTANGULAR_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledRectangularLines stippledRectangularLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-stippledLineEnable-07496#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_BRESENHAM_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledBresenhamLines stippledBresenhamLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-stippledLineEnable-07497#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledSmoothLines stippledSmoothLines>
--     feature /must/ be enabled
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-stippledLineEnable-07498#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_STIPPLE_ENABLE_EXT'
--     or
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_LINE_RASTERIZATION_MODE_EXT'
--     dynamic states enabled, and if the current @stippledLineEnable@
--     state is 'Vulkan.Core10.FundamentalTypes.TRUE' and the current
--     @lineRasterizationMode@ state is
--     'Vulkan.Extensions.VK_EXT_line_rasterization.LINE_RASTERIZATION_MODE_DEFAULT_EXT',
--     then the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-stippledRectangularLines stippledRectangularLines>
--     feature /must/ be enabled and
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'::@strictLines@
--     must be VK_TRUE
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-conservativePointAndLineRasterization-07499#
--     If the bound graphics pipeline state was created with the
--     'Vulkan.Core10.Enums.DynamicState.DYNAMIC_STATE_CONSERVATIVE_RASTERIZATION_MODE_EXT'
--     dynamic state enabled,
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#limits-conservativePointAndLineRasterization conservativePointAndLineRasterization>
--     is not supported, and the effective primitive topology output by the
--     last pre-rasterization shader stage is a line or point, then the
--     @conservativeRasterizationMode@ set by the last call to
--     'Vulkan.Extensions.VK_EXT_extended_dynamic_state3.cmdSetConservativeRasterizationModeEXT'
--     /must/ be
--     'Vulkan.Extensions.VK_EXT_conservative_rasterization.CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT'
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-stage-07073# If the
--     currently bound pipeline was created with the
--     'Vulkan.Core10.Pipeline.PipelineShaderStageCreateInfo'::@stage@
--     member of an element of
--     'Vulkan.Core10.Pipeline.GraphicsPipelineCreateInfo'::@pStages@ set
--     to
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_VERTEX_BIT',
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TESSELLATION_CONTROL_BIT',
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TESSELLATION_EVALUATION_BIT'
--     or
--     'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_GEOMETRY_BIT',
--     then
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#queries-mesh-shader Mesh Shader Queries>
--     must not be active
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-buffer-02708# If @buffer@
--     is non-sparse then it /must/ be bound completely and contiguously to
--     a single 'Vulkan.Core10.Handles.DeviceMemory' object
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-buffer-02709# @buffer@
--     /must/ have been created with the
--     'Vulkan.Core10.Enums.BufferUsageFlagBits.BUFFER_USAGE_INDIRECT_BUFFER_BIT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-offset-02710# @offset@
--     /must/ be a multiple of @4@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commandBuffer-02711#
--     @commandBuffer@ /must/ not be a protected command buffer
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBuffer-02714# If
--     @countBuffer@ is non-sparse then it /must/ be bound completely and
--     contiguously to a single 'Vulkan.Core10.Handles.DeviceMemory' object
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBuffer-02715#
--     @countBuffer@ /must/ have been created with the
--     'Vulkan.Core10.Enums.BufferUsageFlagBits.BUFFER_USAGE_INDIRECT_BUFFER_BIT'
--     bit set
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBufferOffset-02716#
--     @countBufferOffset@ /must/ be a multiple of @4@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBuffer-02717# The
--     count stored in @countBuffer@ /must/ be less than or equal to
--     'Vulkan.Core10.DeviceInitialization.PhysicalDeviceLimits'::@maxDrawIndirectCount@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBufferOffset-04129#
--     (@countBufferOffset@ + @sizeof@(uint32_t)) /must/ be less than or
--     equal to the size of @countBuffer@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-None-04445# If
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#features-drawIndirectCount drawIndirectCount>
--     is not enabled this function /must/ not be used
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-stride-07096# @stride@
--     /must/ be a multiple of @4@ and /must/ be greater than or equal to
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-maxDrawCount-07097# If
--     @maxDrawCount@ is greater than or equal to @1@, (@stride@ ×
--     (@maxDrawCount@ - 1) + @offset@ +
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')) /must/ be less than or
--     equal to the size of @buffer@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBuffer-07098# If the
--     count stored in @countBuffer@ is equal to @1@, (@offset@ +
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')) /must/ be less than or
--     equal to the size of @buffer@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBuffer-07099# If the
--     count stored in @countBuffer@ is greater than @1@, (@stride@ ×
--     (@drawCount@ - 1) + @offset@ +
--     @sizeof@('DrawMeshTasksIndirectCommandEXT')) /must/ be less than or
--     equal to the size of @buffer@
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-MeshEXT-07100# The current
--     pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     /must/ contain a shader stage using the @MeshEXT@ @Execution@
--     @Model@
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commandBuffer-parameter#
--     @commandBuffer@ /must/ be a valid
--     'Vulkan.Core10.Handles.CommandBuffer' handle
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-buffer-parameter# @buffer@
--     /must/ be a valid 'Vulkan.Core10.Handles.Buffer' handle
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-countBuffer-parameter#
--     @countBuffer@ /must/ be a valid 'Vulkan.Core10.Handles.Buffer'
--     handle
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commandBuffer-recording#
--     @commandBuffer@ /must/ be in the
--     <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#commandbuffers-lifecycle recording state>
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commandBuffer-cmdpool# The
--     'Vulkan.Core10.Handles.CommandPool' that @commandBuffer@ was
--     allocated from /must/ support graphics operations
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-renderpass# This command
--     /must/ only be called inside of a render pass instance
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-videocoding# This command
--     /must/ only be called outside of a video coding scope
--
-- -   #VUID-vkCmdDrawMeshTasksIndirectCountEXT-commonparent# Each of
--     @buffer@, @commandBuffer@, and @countBuffer@ /must/ have been
--     created, allocated, or retrieved from the same
--     'Vulkan.Core10.Handles.Device'
--
-- == Host Synchronization
--
-- -   Host access to @commandBuffer@ /must/ be externally synchronized
--
-- -   Host access to the 'Vulkan.Core10.Handles.CommandPool' that
--     @commandBuffer@ was allocated from /must/ be externally synchronized
--
-- == Command Properties
--
-- \'
--
-- +----------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
-- | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkCommandBufferLevel Command Buffer Levels> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdBeginRenderPass Render Pass Scope> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#vkCmdBeginVideoCodingKHR Video Coding Scope> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VkQueueFlagBits Supported Queue Types> | <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#fundamentals-queueoperation-command-types Command Type> |
-- +============================================================================================================================+========================================================================================================================+=============================================================================================================================+=======================================================================================================================+========================================================================================================================================+
-- | Primary                                                                                                                    | Inside                                                                                                                 | Outside                                                                                                                     | Graphics                                                                                                              | Action                                                                                                                                 |
-- | Secondary                                                                                                                  |                                                                                                                        |                                                                                                                             |                                                                                                                       |                                                                                                                                        |
-- +----------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_mesh_shader VK_EXT_mesh_shader>,
-- 'Vulkan.Core10.Handles.Buffer', 'Vulkan.Core10.Handles.CommandBuffer',
-- 'Vulkan.Core10.FundamentalTypes.DeviceSize'
cmdDrawMeshTasksIndirectCountEXT :: forall io
                                  . (MonadIO io)
                                 => -- | @commandBuffer@ is the command buffer into which the command is
                                    -- recorded.
                                    CommandBuffer
                                 -> -- | @buffer@ is the buffer containing draw parameters.
                                    Buffer
                                 -> -- | @offset@ is the byte offset into @buffer@ where parameters begin.
                                    ("offset" ::: DeviceSize)
                                 -> -- | @countBuffer@ is the buffer containing the draw count.
                                    ("countBuffer" ::: Buffer)
                                 -> -- | @countBufferOffset@ is the byte offset into @countBuffer@ where the draw
                                    -- count begins.
                                    ("countBufferOffset" ::: DeviceSize)
                                 -> -- | @maxDrawCount@ specifies the maximum number of draws that will be
                                    -- executed. The actual number of executed draw calls is the minimum of the
                                    -- count specified in @countBuffer@ and @maxDrawCount@.
                                    ("maxDrawCount" ::: Word32)
                                 -> -- | @stride@ is the byte stride between successive sets of draw parameters.
                                    ("stride" ::: Word32)
                                 -> io ()
cmdDrawMeshTasksIndirectCountEXT commandBuffer
                                   buffer
                                   offset
                                   countBuffer
                                   countBufferOffset
                                   maxDrawCount
                                   stride = liftIO $ do
  let vkCmdDrawMeshTasksIndirectCountEXTPtr = pVkCmdDrawMeshTasksIndirectCountEXT (case commandBuffer of CommandBuffer{deviceCmds} -> deviceCmds)
  unless (vkCmdDrawMeshTasksIndirectCountEXTPtr /= nullFunPtr) $
    throwIO $ IOError Nothing InvalidArgument "" "The function pointer for vkCmdDrawMeshTasksIndirectCountEXT is null" Nothing Nothing
  let vkCmdDrawMeshTasksIndirectCountEXT' = mkVkCmdDrawMeshTasksIndirectCountEXT vkCmdDrawMeshTasksIndirectCountEXTPtr
  traceAroundEvent "vkCmdDrawMeshTasksIndirectCountEXT" (vkCmdDrawMeshTasksIndirectCountEXT'
                                                           (commandBufferHandle (commandBuffer))
                                                           (buffer)
                                                           (offset)
                                                           (countBuffer)
                                                           (countBufferOffset)
                                                           (maxDrawCount)
                                                           (stride))
  pure $ ()


-- | VkPhysicalDeviceMeshShaderFeaturesEXT - Structure describing mesh
-- shading features that can be supported by an implementation
--
-- = Description
--
-- If the 'PhysicalDeviceMeshShaderFeaturesEXT' structure is included in
-- the @pNext@ chain of the
-- 'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.PhysicalDeviceFeatures2'
-- structure passed to
-- 'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.getPhysicalDeviceFeatures2',
-- it is filled in to indicate whether each corresponding feature is
-- supported. 'PhysicalDeviceMeshShaderFeaturesEXT' /can/ also be used in
-- the @pNext@ chain of 'Vulkan.Core10.Device.DeviceCreateInfo' to
-- selectively enable these features.
--
-- The corresponding features of the
-- 'Vulkan.Extensions.VK_NV_mesh_shader.PhysicalDeviceMeshShaderFeaturesNV'
-- structure /must/ match those in 'PhysicalDeviceMeshShaderFeaturesEXT'.
--
-- == Valid Usage
--
-- -   #VUID-VkPhysicalDeviceMeshShaderFeaturesEXT-multiviewMeshShader-07032#
--     If @multiviewMeshShader@ is enabled then
--     'Vulkan.Extensions.VK_KHR_multiview.PhysicalDeviceMultiviewFeaturesKHR'::@multiview@
--     /must/ also be enabled
--
-- -   #VUID-VkPhysicalDeviceMeshShaderFeaturesEXT-primitiveFragmentShadingRateMeshShader-07033#
--     If @primitiveFragmentShadingRateMeshShader@ is enabled then
--     'Vulkan.Extensions.VK_KHR_fragment_shading_rate.PhysicalDeviceFragmentShadingRateFeaturesKHR'::@primitiveFragmentShadingRate@
--     /must/ also be enabled
--
-- == Valid Usage (Implicit)
--
-- -   #VUID-VkPhysicalDeviceMeshShaderFeaturesEXT-sType-sType# @sType@
--     /must/ be
--     'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT'
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_mesh_shader VK_EXT_mesh_shader>,
-- 'Vulkan.Core10.FundamentalTypes.Bool32',
-- 'Vulkan.Core10.Enums.StructureType.StructureType'
data PhysicalDeviceMeshShaderFeaturesEXT = PhysicalDeviceMeshShaderFeaturesEXT
  { -- | #features-taskShader# @taskShader@ specifies whether task shaders are
    -- supported. If this feature is not enabled, the
    -- 'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_TASK_BIT_EXT' and
    -- 'Vulkan.Core10.Enums.PipelineStageFlagBits.PIPELINE_STAGE_TASK_SHADER_BIT_EXT'
    -- enum values /must/ not be used.
    taskShader :: Bool
  , -- | #features-meshShader# @meshShader@ specifies whether mesh shaders are
    -- supported. If this feature is not enabled, the
    -- 'Vulkan.Core10.Enums.ShaderStageFlagBits.SHADER_STAGE_MESH_BIT_EXT' and
    -- 'Vulkan.Core10.Enums.PipelineStageFlagBits.PIPELINE_STAGE_MESH_SHADER_BIT_EXT'
    -- enum values /must/ not be used.
    meshShader :: Bool
  , -- | #features-multiview-mesh# @multiviewMeshShader@ specifies whether the
    -- implementation supports
    -- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#features-multiview multiview>
    -- rendering within a render pass, with mesh shaders. If this feature is
    -- not enabled, then a pipeline compiled against a subpass with a non-zero
    -- view mask /must/ not include a mesh shader.
    multiviewMeshShader :: Bool
  , -- | #features-primitiveFragmentShadingRate-mesh#
    -- @primitiveFragmentShadingRateMeshShader@ indicates that the
    -- implementation supports the
    -- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#primsrast-fragment-shading-rate-primitive primitive fragment shading rate>
    -- in mesh shaders.
    primitiveFragmentShadingRateMeshShader :: Bool
  , -- | #features-meshShaderQueries# @meshShaderQueries@ indicates that the
    -- implementation supports creating query pools using the
    -- 'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_MESH_PRIMITIVES_GENERATED_EXT'
    -- query type and statistic queries containing the
    -- 'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QUERY_PIPELINE_STATISTIC_TASK_SHADER_INVOCATIONS_BIT_EXT'
    -- and
    -- 'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QUERY_PIPELINE_STATISTIC_MESH_SHADER_INVOCATIONS_BIT_EXT'
    -- flags
    meshShaderQueries :: Bool
  }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (PhysicalDeviceMeshShaderFeaturesEXT)
#endif
deriving instance Show PhysicalDeviceMeshShaderFeaturesEXT

instance ToCStruct PhysicalDeviceMeshShaderFeaturesEXT where
  withCStruct x f = allocaBytes 40 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p PhysicalDeviceMeshShaderFeaturesEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Bool32)) (boolToBool32 (taskShader))
    poke ((p `plusPtr` 20 :: Ptr Bool32)) (boolToBool32 (meshShader))
    poke ((p `plusPtr` 24 :: Ptr Bool32)) (boolToBool32 (multiviewMeshShader))
    poke ((p `plusPtr` 28 :: Ptr Bool32)) (boolToBool32 (primitiveFragmentShadingRateMeshShader))
    poke ((p `plusPtr` 32 :: Ptr Bool32)) (boolToBool32 (meshShaderQueries))
    f
  cStructSize = 40
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_FEATURES_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 20 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 24 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 28 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 32 :: Ptr Bool32)) (boolToBool32 (zero))
    f

instance FromCStruct PhysicalDeviceMeshShaderFeaturesEXT where
  peekCStruct p = do
    taskShader <- peek @Bool32 ((p `plusPtr` 16 :: Ptr Bool32))
    meshShader <- peek @Bool32 ((p `plusPtr` 20 :: Ptr Bool32))
    multiviewMeshShader <- peek @Bool32 ((p `plusPtr` 24 :: Ptr Bool32))
    primitiveFragmentShadingRateMeshShader <- peek @Bool32 ((p `plusPtr` 28 :: Ptr Bool32))
    meshShaderQueries <- peek @Bool32 ((p `plusPtr` 32 :: Ptr Bool32))
    pure $ PhysicalDeviceMeshShaderFeaturesEXT
             (bool32ToBool taskShader)
             (bool32ToBool meshShader)
             (bool32ToBool multiviewMeshShader)
             (bool32ToBool primitiveFragmentShadingRateMeshShader)
             (bool32ToBool meshShaderQueries)

instance Storable PhysicalDeviceMeshShaderFeaturesEXT where
  sizeOf ~_ = 40
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero PhysicalDeviceMeshShaderFeaturesEXT where
  zero = PhysicalDeviceMeshShaderFeaturesEXT
           zero
           zero
           zero
           zero
           zero


-- | VkPhysicalDeviceMeshShaderPropertiesEXT - Structure describing mesh
-- shading properties
--
-- = Members
--
-- The members of the 'PhysicalDeviceMeshShaderPropertiesEXT' structure
-- describe the following implementation-dependent limits:
--
-- = Description
--
-- If the 'PhysicalDeviceMeshShaderPropertiesEXT' structure is included in
-- the @pNext@ chain of
-- 'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.PhysicalDeviceProperties2',
-- it is filled with the implementation-dependent limits.
--
-- == Valid Usage (Implicit)
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_mesh_shader VK_EXT_mesh_shader>,
-- 'Vulkan.Core10.FundamentalTypes.Bool32',
-- 'Vulkan.Core10.Enums.StructureType.StructureType'
data PhysicalDeviceMeshShaderPropertiesEXT = PhysicalDeviceMeshShaderPropertiesEXT
  { -- | #limits-maxTaskWorkGroupTotalCount# @maxTaskWorkGroupTotalCount@ is the
    -- maximum number of total local workgroups that /can/ be launched by a
    -- single mesh tasks drawing command. See
    -- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#drawing-mesh-shading>.
    maxTaskWorkGroupTotalCount :: Word32
  , -- | #limits-maxTaskWorkGroupCount# @maxTaskWorkGroupCount@[3] is the maximum
    -- number of local workgroups that /can/ be launched by a single mesh tasks
    -- drawing command. These three values represent the maximum number of
    -- local workgroups for the X, Y, and Z dimensions, respectively. The
    -- workgroup count parameters to the drawing commands /must/ be less than
    -- or equal to the corresponding limit. The product of these dimensions
    -- /must/ be less than or equal to @maxTaskWorkGroupTotalCount@.
    maxTaskWorkGroupCount :: (Word32, Word32, Word32)
  , -- | #limits-maxTaskWorkGroupInvocations# @maxTaskWorkGroupInvocations@ is
    -- the maximum total number of task shader invocations in a single local
    -- workgroup. The product of the X, Y, and Z sizes, as specified by the
    -- @LocalSize@ or @LocalSizeId@ execution mode in shader modules or by the
    -- object decorated by the @WorkgroupSize@ decoration, /must/ be less than
    -- or equal to this limit.
    maxTaskWorkGroupInvocations :: Word32
  , -- | #limits-maxTaskWorkGroupSize# @maxTaskWorkGroupSize@[3] is the maximum
    -- size of a local task workgroup, per dimension. These three values
    -- represent the maximum local workgroup size in the X, Y, and Z
    -- dimensions, respectively. The @x@, @y@, and @z@ sizes, as specified by
    -- the @LocalSize@ or @LocalSizeId@ execution mode or by the object
    -- decorated by the @WorkgroupSize@ decoration in shader modules, /must/ be
    -- less than or equal to the corresponding limit.
    maxTaskWorkGroupSize :: (Word32, Word32, Word32)
  , -- | #limits-maxTaskPayloadSize# @maxTaskPayloadSize@ is the maximum total
    -- storage size, in bytes, available for variables declared with the
    -- @TaskPayloadWorkgroupEXT@ storage class in shader modules in the task
    -- shader stage.
    maxTaskPayloadSize :: Word32
  , -- | #limits-maxTaskSharedMemorySize# @maxTaskSharedMemorySize@ is the
    -- maximum total storage size, in bytes, available for variables declared
    -- with the @Workgroup@ storage class in shader modules in the task shader
    -- stage.
    maxTaskSharedMemorySize :: Word32
  , -- | #limits-maxTaskPayloadAndSharedMemorySize#
    -- @maxTaskPayloadAndSharedMemorySize@ is the maximum total storage size,
    -- in bytes, available for variables that are declared with the
    -- @TaskPayloadWorkgroupEXT@ or @Workgroup@ storage class, in shader
    -- modules in the task shader stage.
    maxTaskPayloadAndSharedMemorySize :: Word32
  , -- | #limits-maxMeshWorkGroupTotalCount# @maxMeshWorkGroupTotalCount@ is the
    -- maximum number of local output tasks a single task shader workgroup can
    -- emit.
    maxMeshWorkGroupTotalCount :: Word32
  , -- | #limits-maxMeshWorkGroupCount# @maxMeshWorkGroupCount@[3] is the maximum
    -- number of local output tasks a single task shader workgroup can emit,
    -- per dimension. These three values represent the maximum number of local
    -- output tasks for the X, Y, and Z dimensions, respectively. The workgroup
    -- count parameters to the @OpEmitMeshTasksEXT@ /must/ be less than or
    -- equal to the corresponding limit. The product of these dimensions /must/
    -- be less than or equal to @maxMeshWorkGroupTotalCount@.
    maxMeshWorkGroupCount :: (Word32, Word32, Word32)
  , -- | #limits-maxMeshWorkGroupInvocations# @maxMeshWorkGroupInvocations@ is
    -- the maximum total number of mesh shader invocations in a single local
    -- workgroup. The product of the X, Y, and Z sizes, as specified by the
    -- @LocalSize@ or @LocalSizeId@ execution mode in shader modules or by the
    -- object decorated by the @WorkgroupSize@ decoration, /must/ be less than
    -- or equal to this limit.
    maxMeshWorkGroupInvocations :: Word32
  , -- | #limits-maxMeshWorkGroupSize# @maxMeshWorkGroupSize@[3] is the maximum
    -- size of a local mesh workgroup, per dimension. These three values
    -- represent the maximum local workgroup size in the X, Y, and Z
    -- dimensions, respectively. The @x@, @y@, and @z@ sizes, as specified by
    -- the @LocalSize@ or @LocalSizeId@ execution mode or by the object
    -- decorated by the @WorkgroupSize@ decoration in shader modules, /must/ be
    -- less than or equal to the corresponding limit.
    maxMeshWorkGroupSize :: (Word32, Word32, Word32)
  , -- | #limits-maxMeshSharedMemorySize# @maxMeshSharedMemorySize@ is the
    -- maximum total storage size, in bytes, available for variables declared
    -- with the @Workgroup@ storage class in shader modules in the mesh shader
    -- stage.
    maxMeshSharedMemorySize :: Word32
  , -- | #limits-maxMeshPayloadAndSharedMemorySize#
    -- @maxMeshPayloadAndSharedMemorySize@ is the maximum total storage size,
    -- in bytes, available for variables that are declared with the
    -- @TaskPayloadWorkgroupEXT@ or @Workgroup@ storage class in shader modules
    -- in the mesh shader stage.
    maxMeshPayloadAndSharedMemorySize :: Word32
  , -- | #limits-maxMeshOutputMemorySize# @maxMeshOutputMemorySize@ is the
    -- maximum total storage size, in bytes, available for output variables in
    -- shader modules in the mesh shader stage, according to the formula in
    -- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#mesh-output Mesh Shader Output>.
    maxMeshOutputMemorySize :: Word32
  , -- | #limits-maxMeshPayloadAndOutputMemorySize#
    -- @maxMeshPayloadAndOutputMemorySize@ is the maximum total storage size,
    -- in bytes, available for variables that are declared with the
    -- @TaskPayloadWorkgroupEXT@ storage class, or output variables in shader
    -- modules in the mesh shader stage, according to the formula in
    -- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#mesh-output Mesh Shader Output>.
    maxMeshPayloadAndOutputMemorySize :: Word32
  , -- | #limits-maxMeshOutputComponents# @maxMeshOutputComponents@ is the
    -- maximum number of components of output variables which /can/ be output
    -- from the mesh shader stage.
    maxMeshOutputComponents :: Word32
  , -- | #limits-maxMeshOutputVertices# @maxMeshOutputVertices@ is the maximum
    -- number of vertices which /can/ be emitted by a single mesh shader
    -- workgroup.
    maxMeshOutputVertices :: Word32
  , -- | #limits-maxMeshOutputPrimitives# @maxMeshOutputPrimitives@ is the
    -- maximum number of primitives which /can/ be emitted by a single mesh
    -- shader workgroup.
    maxMeshOutputPrimitives :: Word32
  , -- | #limits-maxMeshOutputLayers# @maxMeshOutputLayers@ is one greater than
    -- the maximum layer index that /can/ be output from the mesh shader stage.
    maxMeshOutputLayers :: Word32
  , -- | #limits-maxMeshMultiviewViewCount# @maxMeshMultiviewViewCount@ is one
    -- greater than the maximum view index that /can/ be used by any mesh
    -- shader.
    maxMeshMultiviewViewCount :: Word32
  , -- | #limits-meshOutputPerVertexGranularity# @meshOutputPerVertexGranularity@
    -- is the granularity of vertex allocation. The number of output vertices
    -- allocated for the mesh shader stage is padded to a multiple of this
    -- number. The value can be used to calculate the required storage size for
    -- output variables in shader modules in the mesh shader stage, which
    -- /must/ be less than or equal to @maxMeshOutputMemorySize@.
    meshOutputPerVertexGranularity :: Word32
  , -- | #limits-meshOutputPerPrimitiveGranularity#
    -- @meshOutputPerPrimitiveGranularity@ is the granularity of primitive
    -- allocation. The number of output primitives allocated for the mesh
    -- shader stage is padded to a multiple of this number. The value can be
    -- used to calculate the required storage size for output variables in
    -- shader modules in the mesh shader stage, which /must/ be less than or
    -- equal to @maxMeshOutputMemorySize@.
    meshOutputPerPrimitiveGranularity :: Word32
  , -- | #limits-maxPreferredTaskWorkGroupInvocations#
    -- @maxPreferredTaskWorkGroupInvocations@ is the maximum number of task
    -- shader invocations in a single workgroup that is preferred by the
    -- implementation for optimal performance. The value is guaranteed to be a
    -- multiple of a supported subgroup size for the task shader stage.
    maxPreferredTaskWorkGroupInvocations :: Word32
  , -- | #limits-maxPreferredMeshWorkGroupInvocations#
    -- @maxPreferredMeshWorkGroupInvocations@ is the maximum number of mesh
    -- shader invocations in a single workgroup that is preferred by the
    -- implementation for optimal performance. The value is guaranteed to be a
    -- multiple of a supported subgroup size for the mesh shader stage.
    maxPreferredMeshWorkGroupInvocations :: Word32
  , -- | #limits-prefersLocalInvocationVertexOutput#
    -- @prefersLocalInvocationVertexOutput@ specifies whether writes to the
    -- vertex output array in a mesh shader yield best performance when the
    -- array index matches @LocalInvocationIndex@.
    prefersLocalInvocationVertexOutput :: Bool
  , -- | #limits-prefersLocalInvocationPrimitiveOutput#
    -- @prefersLocalInvocationPrimitiveOutput@ specifies whether writes to the
    -- primitive output array in a mesh shader yield best performance when the
    -- array index matches @LocalInvocationIndex@.
    prefersLocalInvocationPrimitiveOutput :: Bool
  , -- | #limits-prefersCompactVertexOutput# @prefersCompactVertexOutput@
    -- specifies whether output vertices should be compacted after custom
    -- culling in the mesh shader for best performance, otherwise keeping the
    -- vertices at their original location may be better.
    prefersCompactVertexOutput :: Bool
  , -- | #limits-prefersCompactPrimitiveOutput# @prefersCompactPrimitiveOutput@
    -- specifies whether output primitives should be compacted after custom
    -- culling in the mesh shader for best performance, otherwise the use of
    -- @CullPrimitiveEXT@ may be better.
    prefersCompactPrimitiveOutput :: Bool
  }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (PhysicalDeviceMeshShaderPropertiesEXT)
#endif
deriving instance Show PhysicalDeviceMeshShaderPropertiesEXT

instance ToCStruct PhysicalDeviceMeshShaderPropertiesEXT where
  withCStruct x f = allocaBytes 160 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p PhysicalDeviceMeshShaderPropertiesEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Word32)) (maxTaskWorkGroupTotalCount)
    let pMaxTaskWorkGroupCount' = lowerArrayPtr ((p `plusPtr` 20 :: Ptr (FixedArray 3 Word32)))
    case (maxTaskWorkGroupCount) of
      (e0, e1, e2) -> do
        poke (pMaxTaskWorkGroupCount' :: Ptr Word32) (e0)
        poke (pMaxTaskWorkGroupCount' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxTaskWorkGroupCount' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 32 :: Ptr Word32)) (maxTaskWorkGroupInvocations)
    let pMaxTaskWorkGroupSize' = lowerArrayPtr ((p `plusPtr` 36 :: Ptr (FixedArray 3 Word32)))
    case (maxTaskWorkGroupSize) of
      (e0, e1, e2) -> do
        poke (pMaxTaskWorkGroupSize' :: Ptr Word32) (e0)
        poke (pMaxTaskWorkGroupSize' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxTaskWorkGroupSize' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 48 :: Ptr Word32)) (maxTaskPayloadSize)
    poke ((p `plusPtr` 52 :: Ptr Word32)) (maxTaskSharedMemorySize)
    poke ((p `plusPtr` 56 :: Ptr Word32)) (maxTaskPayloadAndSharedMemorySize)
    poke ((p `plusPtr` 60 :: Ptr Word32)) (maxMeshWorkGroupTotalCount)
    let pMaxMeshWorkGroupCount' = lowerArrayPtr ((p `plusPtr` 64 :: Ptr (FixedArray 3 Word32)))
    case (maxMeshWorkGroupCount) of
      (e0, e1, e2) -> do
        poke (pMaxMeshWorkGroupCount' :: Ptr Word32) (e0)
        poke (pMaxMeshWorkGroupCount' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxMeshWorkGroupCount' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 76 :: Ptr Word32)) (maxMeshWorkGroupInvocations)
    let pMaxMeshWorkGroupSize' = lowerArrayPtr ((p `plusPtr` 80 :: Ptr (FixedArray 3 Word32)))
    case (maxMeshWorkGroupSize) of
      (e0, e1, e2) -> do
        poke (pMaxMeshWorkGroupSize' :: Ptr Word32) (e0)
        poke (pMaxMeshWorkGroupSize' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxMeshWorkGroupSize' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 92 :: Ptr Word32)) (maxMeshSharedMemorySize)
    poke ((p `plusPtr` 96 :: Ptr Word32)) (maxMeshPayloadAndSharedMemorySize)
    poke ((p `plusPtr` 100 :: Ptr Word32)) (maxMeshOutputMemorySize)
    poke ((p `plusPtr` 104 :: Ptr Word32)) (maxMeshPayloadAndOutputMemorySize)
    poke ((p `plusPtr` 108 :: Ptr Word32)) (maxMeshOutputComponents)
    poke ((p `plusPtr` 112 :: Ptr Word32)) (maxMeshOutputVertices)
    poke ((p `plusPtr` 116 :: Ptr Word32)) (maxMeshOutputPrimitives)
    poke ((p `plusPtr` 120 :: Ptr Word32)) (maxMeshOutputLayers)
    poke ((p `plusPtr` 124 :: Ptr Word32)) (maxMeshMultiviewViewCount)
    poke ((p `plusPtr` 128 :: Ptr Word32)) (meshOutputPerVertexGranularity)
    poke ((p `plusPtr` 132 :: Ptr Word32)) (meshOutputPerPrimitiveGranularity)
    poke ((p `plusPtr` 136 :: Ptr Word32)) (maxPreferredTaskWorkGroupInvocations)
    poke ((p `plusPtr` 140 :: Ptr Word32)) (maxPreferredMeshWorkGroupInvocations)
    poke ((p `plusPtr` 144 :: Ptr Bool32)) (boolToBool32 (prefersLocalInvocationVertexOutput))
    poke ((p `plusPtr` 148 :: Ptr Bool32)) (boolToBool32 (prefersLocalInvocationPrimitiveOutput))
    poke ((p `plusPtr` 152 :: Ptr Bool32)) (boolToBool32 (prefersCompactVertexOutput))
    poke ((p `plusPtr` 156 :: Ptr Bool32)) (boolToBool32 (prefersCompactPrimitiveOutput))
    f
  cStructSize = 160
  cStructAlignment = 8
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr StructureType)) (STRUCTURE_TYPE_PHYSICAL_DEVICE_MESH_SHADER_PROPERTIES_EXT)
    poke ((p `plusPtr` 8 :: Ptr (Ptr ()))) (nullPtr)
    poke ((p `plusPtr` 16 :: Ptr Word32)) (zero)
    let pMaxTaskWorkGroupCount' = lowerArrayPtr ((p `plusPtr` 20 :: Ptr (FixedArray 3 Word32)))
    case ((zero, zero, zero)) of
      (e0, e1, e2) -> do
        poke (pMaxTaskWorkGroupCount' :: Ptr Word32) (e0)
        poke (pMaxTaskWorkGroupCount' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxTaskWorkGroupCount' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 32 :: Ptr Word32)) (zero)
    let pMaxTaskWorkGroupSize' = lowerArrayPtr ((p `plusPtr` 36 :: Ptr (FixedArray 3 Word32)))
    case ((zero, zero, zero)) of
      (e0, e1, e2) -> do
        poke (pMaxTaskWorkGroupSize' :: Ptr Word32) (e0)
        poke (pMaxTaskWorkGroupSize' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxTaskWorkGroupSize' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 48 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 52 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 56 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 60 :: Ptr Word32)) (zero)
    let pMaxMeshWorkGroupCount' = lowerArrayPtr ((p `plusPtr` 64 :: Ptr (FixedArray 3 Word32)))
    case ((zero, zero, zero)) of
      (e0, e1, e2) -> do
        poke (pMaxMeshWorkGroupCount' :: Ptr Word32) (e0)
        poke (pMaxMeshWorkGroupCount' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxMeshWorkGroupCount' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 76 :: Ptr Word32)) (zero)
    let pMaxMeshWorkGroupSize' = lowerArrayPtr ((p `plusPtr` 80 :: Ptr (FixedArray 3 Word32)))
    case ((zero, zero, zero)) of
      (e0, e1, e2) -> do
        poke (pMaxMeshWorkGroupSize' :: Ptr Word32) (e0)
        poke (pMaxMeshWorkGroupSize' `plusPtr` 4 :: Ptr Word32) (e1)
        poke (pMaxMeshWorkGroupSize' `plusPtr` 8 :: Ptr Word32) (e2)
    poke ((p `plusPtr` 92 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 96 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 100 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 104 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 108 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 112 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 116 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 120 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 124 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 128 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 132 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 136 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 140 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 144 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 148 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 152 :: Ptr Bool32)) (boolToBool32 (zero))
    poke ((p `plusPtr` 156 :: Ptr Bool32)) (boolToBool32 (zero))
    f

instance FromCStruct PhysicalDeviceMeshShaderPropertiesEXT where
  peekCStruct p = do
    maxTaskWorkGroupTotalCount <- peek @Word32 ((p `plusPtr` 16 :: Ptr Word32))
    let pmaxTaskWorkGroupCount = lowerArrayPtr @Word32 ((p `plusPtr` 20 :: Ptr (FixedArray 3 Word32)))
    maxTaskWorkGroupCount0 <- peek @Word32 ((pmaxTaskWorkGroupCount `advancePtrBytes` 0 :: Ptr Word32))
    maxTaskWorkGroupCount1 <- peek @Word32 ((pmaxTaskWorkGroupCount `advancePtrBytes` 4 :: Ptr Word32))
    maxTaskWorkGroupCount2 <- peek @Word32 ((pmaxTaskWorkGroupCount `advancePtrBytes` 8 :: Ptr Word32))
    maxTaskWorkGroupInvocations <- peek @Word32 ((p `plusPtr` 32 :: Ptr Word32))
    let pmaxTaskWorkGroupSize = lowerArrayPtr @Word32 ((p `plusPtr` 36 :: Ptr (FixedArray 3 Word32)))
    maxTaskWorkGroupSize0 <- peek @Word32 ((pmaxTaskWorkGroupSize `advancePtrBytes` 0 :: Ptr Word32))
    maxTaskWorkGroupSize1 <- peek @Word32 ((pmaxTaskWorkGroupSize `advancePtrBytes` 4 :: Ptr Word32))
    maxTaskWorkGroupSize2 <- peek @Word32 ((pmaxTaskWorkGroupSize `advancePtrBytes` 8 :: Ptr Word32))
    maxTaskPayloadSize <- peek @Word32 ((p `plusPtr` 48 :: Ptr Word32))
    maxTaskSharedMemorySize <- peek @Word32 ((p `plusPtr` 52 :: Ptr Word32))
    maxTaskPayloadAndSharedMemorySize <- peek @Word32 ((p `plusPtr` 56 :: Ptr Word32))
    maxMeshWorkGroupTotalCount <- peek @Word32 ((p `plusPtr` 60 :: Ptr Word32))
    let pmaxMeshWorkGroupCount = lowerArrayPtr @Word32 ((p `plusPtr` 64 :: Ptr (FixedArray 3 Word32)))
    maxMeshWorkGroupCount0 <- peek @Word32 ((pmaxMeshWorkGroupCount `advancePtrBytes` 0 :: Ptr Word32))
    maxMeshWorkGroupCount1 <- peek @Word32 ((pmaxMeshWorkGroupCount `advancePtrBytes` 4 :: Ptr Word32))
    maxMeshWorkGroupCount2 <- peek @Word32 ((pmaxMeshWorkGroupCount `advancePtrBytes` 8 :: Ptr Word32))
    maxMeshWorkGroupInvocations <- peek @Word32 ((p `plusPtr` 76 :: Ptr Word32))
    let pmaxMeshWorkGroupSize = lowerArrayPtr @Word32 ((p `plusPtr` 80 :: Ptr (FixedArray 3 Word32)))
    maxMeshWorkGroupSize0 <- peek @Word32 ((pmaxMeshWorkGroupSize `advancePtrBytes` 0 :: Ptr Word32))
    maxMeshWorkGroupSize1 <- peek @Word32 ((pmaxMeshWorkGroupSize `advancePtrBytes` 4 :: Ptr Word32))
    maxMeshWorkGroupSize2 <- peek @Word32 ((pmaxMeshWorkGroupSize `advancePtrBytes` 8 :: Ptr Word32))
    maxMeshSharedMemorySize <- peek @Word32 ((p `plusPtr` 92 :: Ptr Word32))
    maxMeshPayloadAndSharedMemorySize <- peek @Word32 ((p `plusPtr` 96 :: Ptr Word32))
    maxMeshOutputMemorySize <- peek @Word32 ((p `plusPtr` 100 :: Ptr Word32))
    maxMeshPayloadAndOutputMemorySize <- peek @Word32 ((p `plusPtr` 104 :: Ptr Word32))
    maxMeshOutputComponents <- peek @Word32 ((p `plusPtr` 108 :: Ptr Word32))
    maxMeshOutputVertices <- peek @Word32 ((p `plusPtr` 112 :: Ptr Word32))
    maxMeshOutputPrimitives <- peek @Word32 ((p `plusPtr` 116 :: Ptr Word32))
    maxMeshOutputLayers <- peek @Word32 ((p `plusPtr` 120 :: Ptr Word32))
    maxMeshMultiviewViewCount <- peek @Word32 ((p `plusPtr` 124 :: Ptr Word32))
    meshOutputPerVertexGranularity <- peek @Word32 ((p `plusPtr` 128 :: Ptr Word32))
    meshOutputPerPrimitiveGranularity <- peek @Word32 ((p `plusPtr` 132 :: Ptr Word32))
    maxPreferredTaskWorkGroupInvocations <- peek @Word32 ((p `plusPtr` 136 :: Ptr Word32))
    maxPreferredMeshWorkGroupInvocations <- peek @Word32 ((p `plusPtr` 140 :: Ptr Word32))
    prefersLocalInvocationVertexOutput <- peek @Bool32 ((p `plusPtr` 144 :: Ptr Bool32))
    prefersLocalInvocationPrimitiveOutput <- peek @Bool32 ((p `plusPtr` 148 :: Ptr Bool32))
    prefersCompactVertexOutput <- peek @Bool32 ((p `plusPtr` 152 :: Ptr Bool32))
    prefersCompactPrimitiveOutput <- peek @Bool32 ((p `plusPtr` 156 :: Ptr Bool32))
    pure $ PhysicalDeviceMeshShaderPropertiesEXT
             maxTaskWorkGroupTotalCount
             (( maxTaskWorkGroupCount0
              , maxTaskWorkGroupCount1
              , maxTaskWorkGroupCount2 ))
             maxTaskWorkGroupInvocations
             (( maxTaskWorkGroupSize0
              , maxTaskWorkGroupSize1
              , maxTaskWorkGroupSize2 ))
             maxTaskPayloadSize
             maxTaskSharedMemorySize
             maxTaskPayloadAndSharedMemorySize
             maxMeshWorkGroupTotalCount
             (( maxMeshWorkGroupCount0
              , maxMeshWorkGroupCount1
              , maxMeshWorkGroupCount2 ))
             maxMeshWorkGroupInvocations
             (( maxMeshWorkGroupSize0
              , maxMeshWorkGroupSize1
              , maxMeshWorkGroupSize2 ))
             maxMeshSharedMemorySize
             maxMeshPayloadAndSharedMemorySize
             maxMeshOutputMemorySize
             maxMeshPayloadAndOutputMemorySize
             maxMeshOutputComponents
             maxMeshOutputVertices
             maxMeshOutputPrimitives
             maxMeshOutputLayers
             maxMeshMultiviewViewCount
             meshOutputPerVertexGranularity
             meshOutputPerPrimitiveGranularity
             maxPreferredTaskWorkGroupInvocations
             maxPreferredMeshWorkGroupInvocations
             (bool32ToBool prefersLocalInvocationVertexOutput)
             (bool32ToBool prefersLocalInvocationPrimitiveOutput)
             (bool32ToBool prefersCompactVertexOutput)
             (bool32ToBool prefersCompactPrimitiveOutput)

instance Storable PhysicalDeviceMeshShaderPropertiesEXT where
  sizeOf ~_ = 160
  alignment ~_ = 8
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero PhysicalDeviceMeshShaderPropertiesEXT where
  zero = PhysicalDeviceMeshShaderPropertiesEXT
           zero
           (zero, zero, zero)
           zero
           (zero, zero, zero)
           zero
           zero
           zero
           zero
           (zero, zero, zero)
           zero
           (zero, zero, zero)
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero
           zero


-- | VkDrawMeshTasksIndirectCommandEXT - Structure specifying a mesh tasks
-- draw indirect command
--
-- = Description
--
-- The members of 'DrawMeshTasksIndirectCommandEXT' have the same meaning
-- as the similarly named parameters of 'cmdDrawMeshTasksEXT'.
--
-- == Valid Usage
--
-- -   [[VUID-{refpage}-TaskEXT-07322]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountX@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupCount@[0]
--
-- -   [[VUID-{refpage}-TaskEXT-07323]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountY@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupCount@[1]
--
-- -   [[VUID-{refpage}-TaskEXT-07324]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountZ@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupCount@[2]
--
-- -   [[VUID-{refpage}-TaskEXT-07325]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     contains a shader using the @TaskEXT@ @Execution@ @Model@, The
--     product of @groupCountX@, @groupCountY@ and @groupCountZ@ /must/ be
--     less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxTaskWorkGroupTotalCount@
--
-- -   [[VUID-{refpage}-TaskEXT-07326]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountX@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupCount@[0]
--
-- -   [[VUID-{refpage}-TaskEXT-07327]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountY@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupCount@[1]
--
-- -   [[VUID-{refpage}-TaskEXT-07328]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     @groupCountZ@ /must/ be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupCount@[2]
--
-- -   [[VUID-{refpage}-TaskEXT-07329]] If the current pipeline bound to
--     'Vulkan.Core10.Enums.PipelineBindPoint.PIPELINE_BIND_POINT_GRAPHICS'
--     does not contain a shader using the @TaskEXT@ @Execution@ @Model@,
--     The product of @groupCountX@, @groupCountY@ and @groupCountZ@ /must/
--     be less than or equal to
--     'PhysicalDeviceMeshShaderPropertiesEXT'::@maxMeshWorkGroupTotalCount@
--
-- = See Also
--
-- <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#VK_EXT_mesh_shader VK_EXT_mesh_shader>,
-- 'cmdDrawMeshTasksIndirectEXT'
data DrawMeshTasksIndirectCommandEXT = DrawMeshTasksIndirectCommandEXT
  { -- | @groupCountX@ is the number of local workgroups to dispatch in the X
    -- dimension.
    groupCountX :: Word32
  , -- | @groupCountY@ is the number of local workgroups to dispatch in the Y
    -- dimension.
    groupCountY :: Word32
  , -- | @groupCountZ@ is the number of local workgroups to dispatch in the Z
    -- dimension.
    groupCountZ :: Word32
  }
  deriving (Typeable, Eq)
#if defined(GENERIC_INSTANCES)
deriving instance Generic (DrawMeshTasksIndirectCommandEXT)
#endif
deriving instance Show DrawMeshTasksIndirectCommandEXT

instance ToCStruct DrawMeshTasksIndirectCommandEXT where
  withCStruct x f = allocaBytes 12 $ \p -> pokeCStruct p x (f p)
  pokeCStruct p DrawMeshTasksIndirectCommandEXT{..} f = do
    poke ((p `plusPtr` 0 :: Ptr Word32)) (groupCountX)
    poke ((p `plusPtr` 4 :: Ptr Word32)) (groupCountY)
    poke ((p `plusPtr` 8 :: Ptr Word32)) (groupCountZ)
    f
  cStructSize = 12
  cStructAlignment = 4
  pokeZeroCStruct p f = do
    poke ((p `plusPtr` 0 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 4 :: Ptr Word32)) (zero)
    poke ((p `plusPtr` 8 :: Ptr Word32)) (zero)
    f

instance FromCStruct DrawMeshTasksIndirectCommandEXT where
  peekCStruct p = do
    groupCountX <- peek @Word32 ((p `plusPtr` 0 :: Ptr Word32))
    groupCountY <- peek @Word32 ((p `plusPtr` 4 :: Ptr Word32))
    groupCountZ <- peek @Word32 ((p `plusPtr` 8 :: Ptr Word32))
    pure $ DrawMeshTasksIndirectCommandEXT
             groupCountX groupCountY groupCountZ

instance Storable DrawMeshTasksIndirectCommandEXT where
  sizeOf ~_ = 12
  alignment ~_ = 4
  peek = peekCStruct
  poke ptr poked = pokeCStruct ptr poked (pure ())

instance Zero DrawMeshTasksIndirectCommandEXT where
  zero = DrawMeshTasksIndirectCommandEXT
           zero
           zero
           zero


type EXT_MESH_SHADER_SPEC_VERSION = 1

-- No documentation found for TopLevel "VK_EXT_MESH_SHADER_SPEC_VERSION"
pattern EXT_MESH_SHADER_SPEC_VERSION :: forall a . Integral a => a
pattern EXT_MESH_SHADER_SPEC_VERSION = 1


type EXT_MESH_SHADER_EXTENSION_NAME = "VK_EXT_mesh_shader"

-- No documentation found for TopLevel "VK_EXT_MESH_SHADER_EXTENSION_NAME"
pattern EXT_MESH_SHADER_EXTENSION_NAME :: forall a . (Eq a, IsString a) => a
pattern EXT_MESH_SHADER_EXTENSION_NAME = "VK_EXT_mesh_shader"

