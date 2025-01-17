{-# language CPP #-}
-- | = Name
--
-- VK_EXT_primitives_generated_query - device extension
--
-- == VK_EXT_primitives_generated_query
--
-- [__Name String__]
--     @VK_EXT_primitives_generated_query@
--
-- [__Extension Type__]
--     Device extension
--
-- [__Registered Extension Number__]
--     383
--
-- [__Revision__]
--     1
--
-- [__Extension and Version Dependencies__]
--
--     -   Requires support for Vulkan 1.0
--
--     -   Requires @VK_EXT_transform_feedback@ to be enabled for any
--         device-level functionality
--
-- [__Special Use__]
--
--     -   <https://www.khronos.org/registry/vulkan/specs/1.2-extensions/html/vkspec.html#extendingvulkan-compatibility-specialuse OpenGL \/ ES support>
--
-- [__Contact__]
--
--     -   Shahbaz Youssefi
--         <https://github.com/KhronosGroup/Vulkan-Docs/issues/new?body=[VK_EXT_primitives_generated_query] @syoussefi%0A*Here describe the issue or question you have about the VK_EXT_primitives_generated_query extension* >
--
-- [__Extension Proposal__]
--     <https://github.com/KhronosGroup/Vulkan-Docs/tree/main/proposals/VK_EXT_primitives_generated_query.adoc VK_EXT_primitives_generated_query>
--
-- == Other Extension Metadata
--
-- [__Last Modified Date__]
--     2022-01-24
--
-- [__Contributors__]
--
--     -   Shahbaz Youssefi, Google
--
--     -   Piers Daniell, NVIDIA
--
--     -   Jason Ekstrand, Collabora
--
--     -   Jan-Harald Fredriksen, Arm
--
-- == Description
--
-- This extension adds support for a new query type to match OpenGL’s
-- @GL_PRIMITIVES_GENERATED@ to support layering.
--
-- == New Structures
--
-- -   Extending
--     'Vulkan.Core11.Promoted_From_VK_KHR_get_physical_device_properties2.PhysicalDeviceFeatures2',
--     'Vulkan.Core10.Device.DeviceCreateInfo':
--
--     -   'PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT'
--
-- == New Enum Constants
--
-- -   'EXT_PRIMITIVES_GENERATED_QUERY_EXTENSION_NAME'
--
-- -   'EXT_PRIMITIVES_GENERATED_QUERY_SPEC_VERSION'
--
-- -   Extending 'Vulkan.Core10.Enums.QueryType.QueryType':
--
--     -   'Vulkan.Core10.Enums.QueryType.QUERY_TYPE_PRIMITIVES_GENERATED_EXT'
--
-- -   Extending 'Vulkan.Core10.Enums.StructureType.StructureType':
--
--     -   'Vulkan.Core10.Enums.StructureType.STRUCTURE_TYPE_PHYSICAL_DEVICE_PRIMITIVES_GENERATED_QUERY_FEATURES_EXT'
--
-- == Issues
--
-- 1) Can the query from @VK_EXT_transform_feedback@ be used instead?
--
-- __RESOLVED__: No. While the query from VK_EXT_transform_feedback can
-- produce the same results as in this extension, it is only available
-- while transform feedback is active. The OpenGL @GL_PRIMITIVES_GENERATED@
-- query is independent from transform feedback. Emulation through
-- artificial transform feedback is unnecessarily inefficient.
--
-- 2) Can
-- 'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT'
-- be used instead?
--
-- __RESOLVED__: It could, but we prefer the extension for simplicity.
-- Vulkan requires that only one query be active at a time. If both the
-- @GL_PRIMITIVES_GENERATED@ and the @GL_CLIPPING_INPUT_PRIMITIVES_ARB@
-- queries need to be simultaneously enabled, emulation of both through
-- 'Vulkan.Core10.Enums.QueryPipelineStatisticFlagBits.QUERY_PIPELINE_STATISTIC_CLIPPING_INVOCATIONS_BIT'
-- is inconvenient.
--
-- 3) On some hardware, this query cannot be implemented if
-- 'Vulkan.Core10.Pipeline.PipelineRasterizationStateCreateInfo'::@rasterizerDiscardEnable@
-- is enabled. How will this be handled?
--
-- __RESOLVED__: A feature flag is exposed by this extension for this. On
-- said hardware, the GL implementation disables rasterizer-discard and
-- achieves the same effect through other means. It will not be able to do
-- the same in Vulkan due to lack of state information. A feature flag is
-- exposed by this extension so the OpenGL implementation on top of Vulkan
-- would be able to implement a similar workaround.
--
-- 4) On some hardware, this query cannot be implemented for non-zero query
-- indices. How will this be handled?
--
-- __RESOLVED__: A feature flag is exposed by this extension for this. If
-- this feature is not present, the query from @VK_EXT_transform_feedback@
-- can be used to the same effect.
--
-- 5) How is the interaction of this extension with
-- @transformFeedbackRasterizationStreamSelect@ handled?
--
-- __RESOLVED__: Disallowed for non-zero streams. In OpenGL, the
-- rasterization stream is always stream zero.
--
-- == Version History
--
-- -   Revision 1, 2021-06-23 (Shahbaz Youssefi)
--
--     -   Internal revisions
--
-- == See Also
--
-- 'PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT'
--
-- == Document Notes
--
-- For more information, see the
-- <https://registry.khronos.org/vulkan/specs/1.3-extensions/html/vkspec.html#VK_EXT_primitives_generated_query Vulkan Specification>
--
-- This page is a generated document. Fixes and changes should be made to
-- the generator scripts, not directly.
module Vulkan.Extensions.VK_EXT_primitives_generated_query  (PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT) where

import Vulkan.CStruct (FromCStruct)
import Vulkan.CStruct (ToCStruct)
import Data.Kind (Type)

data PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT

instance ToCStruct PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT
instance Show PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT

instance FromCStruct PhysicalDevicePrimitivesGeneratedQueryFeaturesEXT

