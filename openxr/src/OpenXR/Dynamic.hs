{-# language CPP #-}
{-# language NoDuplicateRecordFields #-}
-- No documentation found for Chapter "Dynamic"
module OpenXR.Dynamic  ( InstanceCmds(..)
                       , getInstanceProcAddr'
                       , initInstanceCmds
                       ) where

import OpenXR.CStruct.Utils (FixedArray)
import qualified OpenXR.VulkanTypes (Device_T)
import qualified OpenXR.VulkanTypes (Instance_T)
import qualified OpenXR.VulkanTypes (PhysicalDevice_T)
import qualified OpenXR.VulkanTypes (Result)
import Foreign.Marshal.Alloc (alloca)
import GHC.IO (throwIO)
import Foreign.Ptr (castFunPtr)
import GHC.Ptr (nullFunPtr)
import Foreign.Ptr (nullPtr)
import OpenXR.Zero (Zero(..))
import Foreign.C.Types (CChar)
import Foreign.C.Types (CFloat)
import Foreign.Storable (Storable(..))
import Data.Int (Int64)
import Foreign.Ptr (FunPtr)
import Foreign.Ptr (Ptr)
import GHC.Ptr (Ptr(Ptr))
import Data.Word (Word32)
import Data.Word (Word8)
import OpenXR.NamedType ((:::))
import {-# SOURCE #-} OpenXR.Core10.Input (ActionCreateInfo)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionSetCreateInfo)
import {-# SOURCE #-} OpenXR.Core10.Handles (ActionSet_T)
import {-# SOURCE #-} OpenXR.Core10.Space (ActionSpaceCreateInfo)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionStateBoolean)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionStateFloat)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionStateGetInfo)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionStatePose)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionStateVector2f)
import {-# SOURCE #-} OpenXR.Core10.Handles (Action_T)
import {-# SOURCE #-} OpenXR.Core10.Input (ActionsSyncInfo)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_android_thread_settings (AndroidThreadTypeKHR)
import {-# SOURCE #-} OpenXR.Core10.Input (BoundSourcesForActionEnumerateInfo)
import {-# SOURCE #-} OpenXR.Extensions.XR_FB_color_space (ColorSpaceFB)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_controller_model (ControllerModelKeyMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_controller_model (ControllerModelKeyStateMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_controller_model (ControllerModelPropertiesMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_controller_model (ControllerModelStateMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_debug_utils (DebugUtilsLabelEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_debug_utils (DebugUtilsMessageSeverityFlagsEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_debug_utils (DebugUtilsMessageTypeFlagsEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_debug_utils (DebugUtilsMessengerCallbackDataEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_debug_utils (DebugUtilsMessengerCreateInfoEXT)
import {-# SOURCE #-} OpenXR.Extensions.Handles (DebugUtilsMessengerEXT_T)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_debug_utils (DebugUtilsObjectNameInfoEXT)
import {-# SOURCE #-} OpenXR.Core10.Enums.EnvironmentBlendMode (EnvironmentBlendMode)
import {-# SOURCE #-} OpenXR.Core10.Instance (EventDataBuffer)
import {-# SOURCE #-} OpenXR.Core10.FundamentalTypes (Extent2Df)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (FrameBeginInfo)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (FrameEndInfo)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (FrameState)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (FrameWaitInfo)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_D3D11_enable (GraphicsRequirementsD3D11KHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_D3D12_enable (GraphicsRequirementsD3D12KHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_opengl_es_enable (GraphicsRequirementsOpenGLESKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_opengl_enable (GraphicsRequirementsOpenGLKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_vulkan_enable (GraphicsRequirementsVulkanKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_hand_tracking (HandJointLocationsEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_hand_tracking (HandJointsLocateInfoEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_hand_tracking_mesh (HandMeshMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_hand_tracking_mesh (HandMeshSpaceCreateInfoMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_hand_tracking_mesh (HandMeshUpdateInfoMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_hand_tracking (HandTrackerCreateInfoEXT)
import {-# SOURCE #-} OpenXR.Extensions.Handles (HandTrackerEXT_T)
import {-# SOURCE #-} OpenXR.Core10.Haptics (HapticActionInfo)
import {-# SOURCE #-} OpenXR.Core10.Haptics (HapticBaseHeader)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_perception_anchor_interop (IUnknown)
import {-# SOURCE #-} OpenXR.Core10.Input (InputSourceLocalizedNameGetInfo)
import {-# SOURCE #-} OpenXR.Core10.Instance (InstanceProperties)
import {-# SOURCE #-} OpenXR.Core10.Handles (Instance_T)
import {-# SOURCE #-} OpenXR.Core10.Input (InteractionProfileState)
import {-# SOURCE #-} OpenXR.Core10.Input (InteractionProfileSuggestedBinding)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_android_surface_swapchain (Jobject)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_win32_convert_performance_counter_time (LARGE_INTEGER)
import {-# SOURCE #-} OpenXR.Core10.APIConstants (MAX_RESULT_STRING_SIZE)
import {-# SOURCE #-} OpenXR.Core10.APIConstants (MAX_STRUCTURE_NAME_SIZE)
import OpenXR.Exception (OpenXrException(..))
import {-# SOURCE #-} OpenXR.Core10.FuncPointers (PFN_xrVoidFunction)
import {-# SOURCE #-} OpenXR.Core10.SemanticPaths (Path)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_performance_settings (PerfSettingsDomainEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_performance_settings (PerfSettingsLevelEXT)
import {-# SOURCE #-} OpenXR.Extensions.XR_EXT_performance_settings (PerfSettingsNotificationLevelEXT)
import {-# SOURCE #-} OpenXR.Core10.Space (ReferenceSpaceCreateInfo)
import {-# SOURCE #-} OpenXR.Core10.Enums.ReferenceSpaceType (ReferenceSpaceType)
import {-# SOURCE #-} OpenXR.Core10.Enums.Result (Result)
import OpenXR.Core10.Enums.Result (Result(..))
import {-# SOURCE #-} OpenXR.Core10.Input (SessionActionSetsAttachInfo)
import {-# SOURCE #-} OpenXR.Core10.Session (SessionBeginInfo)
import {-# SOURCE #-} OpenXR.Core10.Device (SessionCreateInfo)
import {-# SOURCE #-} OpenXR.Core10.Handles (Session_T)
import OpenXR.CStruct.Extends (SomeChild)
import OpenXR.CStruct.Extends (SomeStruct)
import {-# SOURCE #-} OpenXR.Core10.Space (SpaceLocation)
import {-# SOURCE #-} OpenXR.Core10.Handles (Space_T)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_spatial_anchor (SpatialAnchorCreateInfoMSFT)
import {-# SOURCE #-} OpenXR.Extensions.Handles (SpatialAnchorMSFT_T)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_spatial_anchor (SpatialAnchorSpaceCreateInfoMSFT)
import {-# SOURCE #-} OpenXR.Extensions.XR_MSFT_spatial_graph_bridge (SpatialGraphNodeSpaceCreateInfoMSFT)
import {-# SOURCE #-} OpenXR.Core10.Enums.StructureType (StructureType)
import {-# SOURCE #-} OpenXR.Core10.Image (SwapchainCreateInfo)
import {-# SOURCE #-} OpenXR.Core10.Image (SwapchainImageAcquireInfo)
import {-# SOURCE #-} OpenXR.Core10.Image (SwapchainImageBaseHeader)
import {-# SOURCE #-} OpenXR.Core10.Image (SwapchainImageReleaseInfo)
import {-# SOURCE #-} OpenXR.Core10.Image (SwapchainImageWaitInfo)
import {-# SOURCE #-} OpenXR.Core10.Handles (Swapchain_T)
import {-# SOURCE #-} OpenXR.Core10.Device (SystemGetInfo)
import {-# SOURCE #-} OpenXR.Core10.Device (SystemId)
import {-# SOURCE #-} OpenXR.Core10.Device (SystemProperties)
import {-# SOURCE #-} OpenXR.Core10.FundamentalTypes (Time)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_convert_timespec_time (Timespec)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (View)
import {-# SOURCE #-} OpenXR.Core10.ViewConfigurations (ViewConfigurationProperties)
import {-# SOURCE #-} OpenXR.Core10.Enums.ViewConfigurationType (ViewConfigurationType)
import {-# SOURCE #-} OpenXR.Core10.ViewConfigurations (ViewConfigurationView)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (ViewLocateInfo)
import {-# SOURCE #-} OpenXR.Core10.DisplayTiming (ViewState)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_visibility_mask (VisibilityMaskKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_visibility_mask (VisibilityMaskTypeKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_vulkan_enable2 (VulkanDeviceCreateInfoKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_vulkan_enable2 (VulkanGraphicsDeviceGetInfoKHR)
import {-# SOURCE #-} OpenXR.Extensions.XR_KHR_vulkan_enable2 (VulkanInstanceCreateInfoKHR)
import OpenXR.Core10.Enums.Result (Result(ERROR_FUNCTION_UNSUPPORTED))
import OpenXR.Core10.Enums.Result (pattern FAILED)
import OpenXR.Core10.Enums.Result (pattern SUCCEEDED)
data InstanceCmds = InstanceCmds
  { instanceCmdsHandle :: Ptr Instance_T
  , pXrGetInstanceProcAddr :: FunPtr (Ptr Instance_T -> ("name" ::: Ptr CChar) -> Ptr PFN_xrVoidFunction -> IO Result)
  , pXrDestroyInstance :: FunPtr (Ptr Instance_T -> IO Result)
  , pXrResultToString :: FunPtr (Ptr Instance_T -> ("value" ::: Result) -> ("buffer" ::: Ptr (FixedArray MAX_RESULT_STRING_SIZE CChar)) -> IO Result)
  , pXrStructureTypeToString :: FunPtr (Ptr Instance_T -> ("value" ::: StructureType) -> ("buffer" ::: Ptr (FixedArray MAX_STRUCTURE_NAME_SIZE CChar)) -> IO Result)
  , pXrGetInstanceProperties :: FunPtr (Ptr Instance_T -> Ptr InstanceProperties -> IO Result)
  , pXrGetSystem :: FunPtr (Ptr Instance_T -> Ptr SystemGetInfo -> Ptr SystemId -> IO Result)
  , pXrGetSystemProperties :: FunPtr (Ptr Instance_T -> SystemId -> ("properties" ::: Ptr (SomeStruct SystemProperties)) -> IO Result)
  , pXrCreateSession :: FunPtr (Ptr Instance_T -> ("createInfo" ::: Ptr (SomeStruct SessionCreateInfo)) -> ("session" ::: Ptr (Ptr Session_T)) -> IO Result)
  , pXrDestroySession :: FunPtr (Ptr Session_T -> IO Result)
  , pXrDestroySpace :: FunPtr (Ptr Space_T -> IO Result)
  , pXrEnumerateSwapchainFormats :: FunPtr (Ptr Session_T -> ("formatCapacityInput" ::: Word32) -> ("formatCountOutput" ::: Ptr Word32) -> ("formats" ::: Ptr Int64) -> IO Result)
  , pXrCreateSwapchain :: FunPtr (Ptr Session_T -> ("createInfo" ::: Ptr (SomeStruct SwapchainCreateInfo)) -> ("swapchain" ::: Ptr (Ptr Swapchain_T)) -> IO Result)
  , pXrDestroySwapchain :: FunPtr (Ptr Swapchain_T -> IO Result)
  , pXrEnumerateSwapchainImages :: FunPtr (Ptr Swapchain_T -> ("imageCapacityInput" ::: Word32) -> ("imageCountOutput" ::: Ptr Word32) -> ("images" ::: Ptr (SomeChild SwapchainImageBaseHeader)) -> IO Result)
  , pXrAcquireSwapchainImage :: FunPtr (Ptr Swapchain_T -> Ptr SwapchainImageAcquireInfo -> ("index" ::: Ptr Word32) -> IO Result)
  , pXrWaitSwapchainImage :: FunPtr (Ptr Swapchain_T -> Ptr SwapchainImageWaitInfo -> IO Result)
  , pXrReleaseSwapchainImage :: FunPtr (Ptr Swapchain_T -> Ptr SwapchainImageReleaseInfo -> IO Result)
  , pXrBeginSession :: FunPtr (Ptr Session_T -> ("beginInfo" ::: Ptr (SomeStruct SessionBeginInfo)) -> IO Result)
  , pXrEndSession :: FunPtr (Ptr Session_T -> IO Result)
  , pXrRequestExitSession :: FunPtr (Ptr Session_T -> IO Result)
  , pXrEnumerateReferenceSpaces :: FunPtr (Ptr Session_T -> ("spaceCapacityInput" ::: Word32) -> ("spaceCountOutput" ::: Ptr Word32) -> ("spaces" ::: Ptr ReferenceSpaceType) -> IO Result)
  , pXrCreateReferenceSpace :: FunPtr (Ptr Session_T -> Ptr ReferenceSpaceCreateInfo -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result)
  , pXrCreateActionSpace :: FunPtr (Ptr Session_T -> Ptr ActionSpaceCreateInfo -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result)
  , pXrLocateSpace :: FunPtr (Ptr Space_T -> ("baseSpace" ::: Ptr Space_T) -> Time -> ("location" ::: Ptr (SomeStruct SpaceLocation)) -> IO Result)
  , pXrEnumerateViewConfigurations :: FunPtr (Ptr Instance_T -> SystemId -> ("viewConfigurationTypeCapacityInput" ::: Word32) -> ("viewConfigurationTypeCountOutput" ::: Ptr Word32) -> ("viewConfigurationTypes" ::: Ptr ViewConfigurationType) -> IO Result)
  , pXrEnumerateEnvironmentBlendModes :: FunPtr (Ptr Instance_T -> SystemId -> ViewConfigurationType -> ("environmentBlendModeCapacityInput" ::: Word32) -> ("environmentBlendModeCountOutput" ::: Ptr Word32) -> ("environmentBlendModes" ::: Ptr EnvironmentBlendMode) -> IO Result)
  , pXrGetViewConfigurationProperties :: FunPtr (Ptr Instance_T -> SystemId -> ViewConfigurationType -> Ptr ViewConfigurationProperties -> IO Result)
  , pXrEnumerateViewConfigurationViews :: FunPtr (Ptr Instance_T -> SystemId -> ViewConfigurationType -> ("viewCapacityInput" ::: Word32) -> ("viewCountOutput" ::: Ptr Word32) -> ("views" ::: Ptr (SomeStruct ViewConfigurationView)) -> IO Result)
  , pXrBeginFrame :: FunPtr (Ptr Session_T -> Ptr FrameBeginInfo -> IO Result)
  , pXrLocateViews :: FunPtr (Ptr Session_T -> Ptr ViewLocateInfo -> Ptr ViewState -> ("viewCapacityInput" ::: Word32) -> ("viewCountOutput" ::: Ptr Word32) -> ("views" ::: Ptr View) -> IO Result)
  , pXrEndFrame :: FunPtr (Ptr Session_T -> ("frameEndInfo" ::: Ptr (SomeStruct FrameEndInfo)) -> IO Result)
  , pXrWaitFrame :: FunPtr (Ptr Session_T -> Ptr FrameWaitInfo -> ("frameState" ::: Ptr (SomeStruct FrameState)) -> IO Result)
  , pXrApplyHapticFeedback :: FunPtr (Ptr Session_T -> Ptr HapticActionInfo -> ("hapticFeedback" ::: Ptr (SomeChild HapticBaseHeader)) -> IO Result)
  , pXrStopHapticFeedback :: FunPtr (Ptr Session_T -> Ptr HapticActionInfo -> IO Result)
  , pXrPollEvent :: FunPtr (Ptr Instance_T -> Ptr EventDataBuffer -> IO Result)
  , pXrStringToPath :: FunPtr (Ptr Instance_T -> ("pathString" ::: Ptr CChar) -> Ptr Path -> IO Result)
  , pXrPathToString :: FunPtr (Ptr Instance_T -> Path -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result)
  , pXrGetReferenceSpaceBoundsRect :: FunPtr (Ptr Session_T -> ReferenceSpaceType -> ("bounds" ::: Ptr Extent2Df) -> IO Result)
  , pXrSetAndroidApplicationThreadKHR :: FunPtr (Ptr Session_T -> AndroidThreadTypeKHR -> ("threadId" ::: Word32) -> IO Result)
  , pXrCreateSwapchainAndroidSurfaceKHR :: FunPtr (Ptr Session_T -> ("info" ::: Ptr (SomeStruct SwapchainCreateInfo)) -> ("swapchain" ::: Ptr (Ptr Swapchain_T)) -> ("surface" ::: Ptr Jobject) -> IO Result)
  , pXrGetActionStateBoolean :: FunPtr (Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStateBoolean -> IO Result)
  , pXrGetActionStateFloat :: FunPtr (Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStateFloat -> IO Result)
  , pXrGetActionStateVector2f :: FunPtr (Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStateVector2f -> IO Result)
  , pXrGetActionStatePose :: FunPtr (Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStatePose -> IO Result)
  , pXrCreateActionSet :: FunPtr (Ptr Instance_T -> Ptr ActionSetCreateInfo -> ("actionSet" ::: Ptr (Ptr ActionSet_T)) -> IO Result)
  , pXrDestroyActionSet :: FunPtr (Ptr ActionSet_T -> IO Result)
  , pXrCreateAction :: FunPtr (Ptr ActionSet_T -> Ptr ActionCreateInfo -> ("action" ::: Ptr (Ptr Action_T)) -> IO Result)
  , pXrDestroyAction :: FunPtr (Ptr Action_T -> IO Result)
  , pXrSuggestInteractionProfileBindings :: FunPtr (Ptr Instance_T -> ("suggestedBindings" ::: Ptr (SomeStruct InteractionProfileSuggestedBinding)) -> IO Result)
  , pXrAttachSessionActionSets :: FunPtr (Ptr Session_T -> Ptr SessionActionSetsAttachInfo -> IO Result)
  , pXrGetCurrentInteractionProfile :: FunPtr (Ptr Session_T -> ("topLevelUserPath" ::: Path) -> Ptr InteractionProfileState -> IO Result)
  , pXrSyncActions :: FunPtr (Ptr Session_T -> Ptr ActionsSyncInfo -> IO Result)
  , pXrEnumerateBoundSourcesForAction :: FunPtr (Ptr Session_T -> Ptr BoundSourcesForActionEnumerateInfo -> ("sourceCapacityInput" ::: Word32) -> ("sourceCountOutput" ::: Ptr Word32) -> ("sources" ::: Ptr Path) -> IO Result)
  , pXrGetInputSourceLocalizedName :: FunPtr (Ptr Session_T -> Ptr InputSourceLocalizedNameGetInfo -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result)
  , pXrGetVulkanInstanceExtensionsKHR :: FunPtr (Ptr Instance_T -> SystemId -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result)
  , pXrGetVulkanDeviceExtensionsKHR :: FunPtr (Ptr Instance_T -> SystemId -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result)
  , pXrGetVulkanGraphicsDeviceKHR :: FunPtr (Ptr Instance_T -> SystemId -> ("vkInstance" ::: Ptr OpenXR.VulkanTypes.Instance_T) -> ("vkPhysicalDevice" ::: Ptr (Ptr OpenXR.VulkanTypes.PhysicalDevice_T)) -> IO Result)
  , pXrGetOpenGLGraphicsRequirementsKHR :: FunPtr (Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsOpenGLKHR -> IO Result)
  , pXrGetOpenGLESGraphicsRequirementsKHR :: FunPtr (Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsOpenGLESKHR -> IO Result)
  , pXrGetVulkanGraphicsRequirementsKHR :: FunPtr (Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsVulkanKHR -> IO Result)
  , pXrGetD3D11GraphicsRequirementsKHR :: FunPtr (Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsD3D11KHR -> IO Result)
  , pXrGetD3D12GraphicsRequirementsKHR :: FunPtr (Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsD3D12KHR -> IO Result)
  , pXrPerfSettingsSetPerformanceLevelEXT :: FunPtr (Ptr Session_T -> PerfSettingsDomainEXT -> PerfSettingsLevelEXT -> IO Result)
  , pXrThermalGetTemperatureTrendEXT :: FunPtr (Ptr Session_T -> PerfSettingsDomainEXT -> Ptr PerfSettingsNotificationLevelEXT -> ("tempHeadroom" ::: Ptr CFloat) -> ("tempSlope" ::: Ptr CFloat) -> IO Result)
  , pXrSetDebugUtilsObjectNameEXT :: FunPtr (Ptr Instance_T -> Ptr DebugUtilsObjectNameInfoEXT -> IO Result)
  , pXrCreateDebugUtilsMessengerEXT :: FunPtr (Ptr Instance_T -> Ptr DebugUtilsMessengerCreateInfoEXT -> ("messenger" ::: Ptr (Ptr DebugUtilsMessengerEXT_T)) -> IO Result)
  , pXrDestroyDebugUtilsMessengerEXT :: FunPtr (Ptr DebugUtilsMessengerEXT_T -> IO Result)
  , pXrSubmitDebugUtilsMessageEXT :: FunPtr (Ptr Instance_T -> DebugUtilsMessageSeverityFlagsEXT -> ("messageTypes" ::: DebugUtilsMessageTypeFlagsEXT) -> Ptr DebugUtilsMessengerCallbackDataEXT -> IO Result)
  , pXrSessionBeginDebugUtilsLabelRegionEXT :: FunPtr (Ptr Session_T -> ("labelInfo" ::: Ptr DebugUtilsLabelEXT) -> IO Result)
  , pXrSessionEndDebugUtilsLabelRegionEXT :: FunPtr (Ptr Session_T -> IO Result)
  , pXrSessionInsertDebugUtilsLabelEXT :: FunPtr (Ptr Session_T -> ("labelInfo" ::: Ptr DebugUtilsLabelEXT) -> IO Result)
  , pXrConvertTimeToWin32PerformanceCounterKHR :: FunPtr (Ptr Instance_T -> Time -> ("performanceCounter" ::: Ptr LARGE_INTEGER) -> IO Result)
  , pXrConvertWin32PerformanceCounterToTimeKHR :: FunPtr (Ptr Instance_T -> ("performanceCounter" ::: Ptr LARGE_INTEGER) -> Ptr Time -> IO Result)
  , pXrCreateVulkanInstanceKHR :: FunPtr (Ptr Instance_T -> Ptr VulkanInstanceCreateInfoKHR -> ("vulkanInstance" ::: Ptr (Ptr OpenXR.VulkanTypes.Instance_T)) -> ("vulkanResult" ::: Ptr OpenXR.VulkanTypes.Result) -> IO Result)
  , pXrCreateVulkanDeviceKHR :: FunPtr (Ptr Instance_T -> Ptr VulkanDeviceCreateInfoKHR -> ("vulkanDevice" ::: Ptr (Ptr OpenXR.VulkanTypes.Device_T)) -> ("vulkanResult" ::: Ptr OpenXR.VulkanTypes.Result) -> IO Result)
  , pXrGetVulkanGraphicsDevice2KHR :: FunPtr (Ptr Instance_T -> Ptr VulkanGraphicsDeviceGetInfoKHR -> ("vulkanPhysicalDevice" ::: Ptr (Ptr OpenXR.VulkanTypes.PhysicalDevice_T)) -> IO Result)
  , pXrConvertTimeToTimespecTimeKHR :: FunPtr (Ptr Instance_T -> Time -> ("timespecTime" ::: Ptr Timespec) -> IO Result)
  , pXrConvertTimespecTimeToTimeKHR :: FunPtr (Ptr Instance_T -> ("timespecTime" ::: Ptr Timespec) -> Ptr Time -> IO Result)
  , pXrGetVisibilityMaskKHR :: FunPtr (Ptr Session_T -> ViewConfigurationType -> ("viewIndex" ::: Word32) -> VisibilityMaskTypeKHR -> Ptr VisibilityMaskKHR -> IO Result)
  , pXrCreateSpatialAnchorMSFT :: FunPtr (Ptr Session_T -> Ptr SpatialAnchorCreateInfoMSFT -> ("anchor" ::: Ptr (Ptr SpatialAnchorMSFT_T)) -> IO Result)
  , pXrCreateSpatialAnchorSpaceMSFT :: FunPtr (Ptr Session_T -> Ptr SpatialAnchorSpaceCreateInfoMSFT -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result)
  , pXrDestroySpatialAnchorMSFT :: FunPtr (Ptr SpatialAnchorMSFT_T -> IO Result)
  , pXrCreateSpatialGraphNodeSpaceMSFT :: FunPtr (Ptr Session_T -> Ptr SpatialGraphNodeSpaceCreateInfoMSFT -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result)
  , pXrCreateHandTrackerEXT :: FunPtr (Ptr Session_T -> ("createInfo" ::: Ptr (SomeStruct HandTrackerCreateInfoEXT)) -> ("handTracker" ::: Ptr (Ptr HandTrackerEXT_T)) -> IO Result)
  , pXrDestroyHandTrackerEXT :: FunPtr (Ptr HandTrackerEXT_T -> IO Result)
  , pXrLocateHandJointsEXT :: FunPtr (Ptr HandTrackerEXT_T -> Ptr HandJointsLocateInfoEXT -> ("locations" ::: Ptr (SomeStruct HandJointLocationsEXT)) -> IO Result)
  , pXrCreateHandMeshSpaceMSFT :: FunPtr (Ptr HandTrackerEXT_T -> Ptr HandMeshSpaceCreateInfoMSFT -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result)
  , pXrUpdateHandMeshMSFT :: FunPtr (Ptr HandTrackerEXT_T -> Ptr HandMeshUpdateInfoMSFT -> Ptr HandMeshMSFT -> IO Result)
  , pXrGetControllerModelKeyMSFT :: FunPtr (Ptr Session_T -> ("topLevelUserPath" ::: Path) -> Ptr ControllerModelKeyStateMSFT -> IO Result)
  , pXrLoadControllerModelMSFT :: FunPtr (Ptr Session_T -> ControllerModelKeyMSFT -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr Word8) -> IO Result)
  , pXrGetControllerModelPropertiesMSFT :: FunPtr (Ptr Session_T -> ControllerModelKeyMSFT -> Ptr ControllerModelPropertiesMSFT -> IO Result)
  , pXrGetControllerModelStateMSFT :: FunPtr (Ptr Session_T -> ControllerModelKeyMSFT -> Ptr ControllerModelStateMSFT -> IO Result)
  , pXrEnumerateDisplayRefreshRatesFB :: FunPtr (Ptr Session_T -> ("displayRefreshRateCapacityInput" ::: Word32) -> ("displayRefreshRateCountOutput" ::: Ptr Word32) -> ("displayRefreshRates" ::: Ptr CFloat) -> IO Result)
  , pXrGetDisplayRefreshRateFB :: FunPtr (Ptr Session_T -> ("displayRefreshRate" ::: Ptr CFloat) -> IO Result)
  , pXrRequestDisplayRefreshRateFB :: FunPtr (Ptr Session_T -> ("displayRefreshRate" ::: CFloat) -> IO Result)
  , pXrCreateSpatialAnchorFromPerceptionAnchorMSFT :: FunPtr (Ptr Session_T -> ("perceptionAnchor" ::: Ptr IUnknown) -> ("anchor" ::: Ptr (Ptr SpatialAnchorMSFT_T)) -> IO Result)
  , pXrTryGetPerceptionAnchorFromSpatialAnchorMSFT :: FunPtr (Ptr Session_T -> Ptr SpatialAnchorMSFT_T -> ("perceptionAnchor" ::: Ptr (Ptr IUnknown)) -> IO Result)
  , pXrEnumerateColorSpacesFB :: FunPtr (Ptr Session_T -> ("colorSpaceCapacityInput" ::: Word32) -> ("colorSpaceCountOutput" ::: Ptr Word32) -> ("colorSpaces" ::: Ptr ColorSpaceFB) -> IO Result)
  , pXrSetColorSpaceFB :: FunPtr (Ptr Session_T -> ColorSpaceFB -> IO Result)
  }

deriving instance Eq InstanceCmds
deriving instance Show InstanceCmds
instance Zero InstanceCmds where
  zero = InstanceCmds
    nullPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr
    nullFunPtr nullFunPtr nullFunPtr nullFunPtr

foreign import ccall
#if !defined(SAFE_FOREIGN_CALLS)
  unsafe
#endif
  "xrGetInstanceProcAddr" getInstanceProcAddr'' :: Ptr Instance_T -> ("name" ::: Ptr CChar) -> Ptr PFN_xrVoidFunction -> IO Result

-- | A version of 'getInstanceProcAddr' which can be called
-- with a null pointer for the instance.
getInstanceProcAddr'
  :: Ptr Instance_T -> ("name" ::: Ptr CChar) -> IO PFN_xrVoidFunction
getInstanceProcAddr' inst name = do
  alloca $ \r -> getInstanceProcAddr'' inst name r >>= \case
    SUCCEEDED                  -> peek r
    ERROR_FUNCTION_UNSUPPORTED                -> pure nullFunPtr
    e@FAILED                   -> throwIO (OpenXrException e)


initInstanceCmds :: Ptr Instance_T -> IO InstanceCmds
initInstanceCmds handle = do
  let getFirstInstanceProcAddr = \case
        []   -> pure nullFunPtr
        x:xs -> do
          p <- getInstanceProcAddr' handle x
          if p /= nullFunPtr
            then pure p
            else getFirstInstanceProcAddr xs
  xrGetInstanceProcAddr <- getInstanceProcAddr' handle (Ptr "xrGetInstanceProcAddr"#)
  xrDestroyInstance <- getInstanceProcAddr' handle (Ptr "xrDestroyInstance"#)
  xrResultToString <- getInstanceProcAddr' handle (Ptr "xrResultToString"#)
  xrStructureTypeToString <- getInstanceProcAddr' handle (Ptr "xrStructureTypeToString"#)
  xrGetInstanceProperties <- getInstanceProcAddr' handle (Ptr "xrGetInstanceProperties"#)
  xrGetSystem <- getInstanceProcAddr' handle (Ptr "xrGetSystem"#)
  xrGetSystemProperties <- getInstanceProcAddr' handle (Ptr "xrGetSystemProperties"#)
  xrCreateSession <- getInstanceProcAddr' handle (Ptr "xrCreateSession"#)
  xrDestroySession <- getInstanceProcAddr' handle (Ptr "xrDestroySession"#)
  xrDestroySpace <- getInstanceProcAddr' handle (Ptr "xrDestroySpace"#)
  xrEnumerateSwapchainFormats <- getInstanceProcAddr' handle (Ptr "xrEnumerateSwapchainFormats"#)
  xrCreateSwapchain <- getInstanceProcAddr' handle (Ptr "xrCreateSwapchain"#)
  xrDestroySwapchain <- getInstanceProcAddr' handle (Ptr "xrDestroySwapchain"#)
  xrEnumerateSwapchainImages <- getInstanceProcAddr' handle (Ptr "xrEnumerateSwapchainImages"#)
  xrAcquireSwapchainImage <- getInstanceProcAddr' handle (Ptr "xrAcquireSwapchainImage"#)
  xrWaitSwapchainImage <- getInstanceProcAddr' handle (Ptr "xrWaitSwapchainImage"#)
  xrReleaseSwapchainImage <- getInstanceProcAddr' handle (Ptr "xrReleaseSwapchainImage"#)
  xrBeginSession <- getInstanceProcAddr' handle (Ptr "xrBeginSession"#)
  xrEndSession <- getInstanceProcAddr' handle (Ptr "xrEndSession"#)
  xrRequestExitSession <- getInstanceProcAddr' handle (Ptr "xrRequestExitSession"#)
  xrEnumerateReferenceSpaces <- getInstanceProcAddr' handle (Ptr "xrEnumerateReferenceSpaces"#)
  xrCreateReferenceSpace <- getInstanceProcAddr' handle (Ptr "xrCreateReferenceSpace"#)
  xrCreateActionSpace <- getInstanceProcAddr' handle (Ptr "xrCreateActionSpace"#)
  xrLocateSpace <- getInstanceProcAddr' handle (Ptr "xrLocateSpace"#)
  xrEnumerateViewConfigurations <- getInstanceProcAddr' handle (Ptr "xrEnumerateViewConfigurations"#)
  xrEnumerateEnvironmentBlendModes <- getInstanceProcAddr' handle (Ptr "xrEnumerateEnvironmentBlendModes"#)
  xrGetViewConfigurationProperties <- getInstanceProcAddr' handle (Ptr "xrGetViewConfigurationProperties"#)
  xrEnumerateViewConfigurationViews <- getInstanceProcAddr' handle (Ptr "xrEnumerateViewConfigurationViews"#)
  xrBeginFrame <- getInstanceProcAddr' handle (Ptr "xrBeginFrame"#)
  xrLocateViews <- getInstanceProcAddr' handle (Ptr "xrLocateViews"#)
  xrEndFrame <- getInstanceProcAddr' handle (Ptr "xrEndFrame"#)
  xrWaitFrame <- getInstanceProcAddr' handle (Ptr "xrWaitFrame"#)
  xrApplyHapticFeedback <- getInstanceProcAddr' handle (Ptr "xrApplyHapticFeedback"#)
  xrStopHapticFeedback <- getInstanceProcAddr' handle (Ptr "xrStopHapticFeedback"#)
  xrPollEvent <- getInstanceProcAddr' handle (Ptr "xrPollEvent"#)
  xrStringToPath <- getInstanceProcAddr' handle (Ptr "xrStringToPath"#)
  xrPathToString <- getInstanceProcAddr' handle (Ptr "xrPathToString"#)
  xrGetReferenceSpaceBoundsRect <- getInstanceProcAddr' handle (Ptr "xrGetReferenceSpaceBoundsRect"#)
  xrSetAndroidApplicationThreadKHR <- getInstanceProcAddr' handle (Ptr "xrSetAndroidApplicationThreadKHR"#)
  xrCreateSwapchainAndroidSurfaceKHR <- getInstanceProcAddr' handle (Ptr "xrCreateSwapchainAndroidSurfaceKHR"#)
  xrGetActionStateBoolean <- getInstanceProcAddr' handle (Ptr "xrGetActionStateBoolean"#)
  xrGetActionStateFloat <- getInstanceProcAddr' handle (Ptr "xrGetActionStateFloat"#)
  xrGetActionStateVector2f <- getInstanceProcAddr' handle (Ptr "xrGetActionStateVector2f"#)
  xrGetActionStatePose <- getInstanceProcAddr' handle (Ptr "xrGetActionStatePose"#)
  xrCreateActionSet <- getInstanceProcAddr' handle (Ptr "xrCreateActionSet"#)
  xrDestroyActionSet <- getInstanceProcAddr' handle (Ptr "xrDestroyActionSet"#)
  xrCreateAction <- getInstanceProcAddr' handle (Ptr "xrCreateAction"#)
  xrDestroyAction <- getInstanceProcAddr' handle (Ptr "xrDestroyAction"#)
  xrSuggestInteractionProfileBindings <- getInstanceProcAddr' handle (Ptr "xrSuggestInteractionProfileBindings"#)
  xrAttachSessionActionSets <- getInstanceProcAddr' handle (Ptr "xrAttachSessionActionSets"#)
  xrGetCurrentInteractionProfile <- getInstanceProcAddr' handle (Ptr "xrGetCurrentInteractionProfile"#)
  xrSyncActions <- getInstanceProcAddr' handle (Ptr "xrSyncActions"#)
  xrEnumerateBoundSourcesForAction <- getInstanceProcAddr' handle (Ptr "xrEnumerateBoundSourcesForAction"#)
  xrGetInputSourceLocalizedName <- getInstanceProcAddr' handle (Ptr "xrGetInputSourceLocalizedName"#)
  xrGetVulkanInstanceExtensionsKHR <- getInstanceProcAddr' handle (Ptr "xrGetVulkanInstanceExtensionsKHR"#)
  xrGetVulkanDeviceExtensionsKHR <- getInstanceProcAddr' handle (Ptr "xrGetVulkanDeviceExtensionsKHR"#)
  xrGetVulkanGraphicsDeviceKHR <- getInstanceProcAddr' handle (Ptr "xrGetVulkanGraphicsDeviceKHR"#)
  xrGetOpenGLGraphicsRequirementsKHR <- getInstanceProcAddr' handle (Ptr "xrGetOpenGLGraphicsRequirementsKHR"#)
  xrGetOpenGLESGraphicsRequirementsKHR <- getInstanceProcAddr' handle (Ptr "xrGetOpenGLESGraphicsRequirementsKHR"#)
  xrGetVulkanGraphicsRequirementsKHR <- getFirstInstanceProcAddr [ (Ptr "xrGetVulkanGraphicsRequirements2KHR"#)
                                                                 , (Ptr "xrGetVulkanGraphicsRequirementsKHR"#) ]
  xrGetD3D11GraphicsRequirementsKHR <- getInstanceProcAddr' handle (Ptr "xrGetD3D11GraphicsRequirementsKHR"#)
  xrGetD3D12GraphicsRequirementsKHR <- getInstanceProcAddr' handle (Ptr "xrGetD3D12GraphicsRequirementsKHR"#)
  xrPerfSettingsSetPerformanceLevelEXT <- getInstanceProcAddr' handle (Ptr "xrPerfSettingsSetPerformanceLevelEXT"#)
  xrThermalGetTemperatureTrendEXT <- getInstanceProcAddr' handle (Ptr "xrThermalGetTemperatureTrendEXT"#)
  xrSetDebugUtilsObjectNameEXT <- getInstanceProcAddr' handle (Ptr "xrSetDebugUtilsObjectNameEXT"#)
  xrCreateDebugUtilsMessengerEXT <- getInstanceProcAddr' handle (Ptr "xrCreateDebugUtilsMessengerEXT"#)
  xrDestroyDebugUtilsMessengerEXT <- getInstanceProcAddr' handle (Ptr "xrDestroyDebugUtilsMessengerEXT"#)
  xrSubmitDebugUtilsMessageEXT <- getInstanceProcAddr' handle (Ptr "xrSubmitDebugUtilsMessageEXT"#)
  xrSessionBeginDebugUtilsLabelRegionEXT <- getInstanceProcAddr' handle (Ptr "xrSessionBeginDebugUtilsLabelRegionEXT"#)
  xrSessionEndDebugUtilsLabelRegionEXT <- getInstanceProcAddr' handle (Ptr "xrSessionEndDebugUtilsLabelRegionEXT"#)
  xrSessionInsertDebugUtilsLabelEXT <- getInstanceProcAddr' handle (Ptr "xrSessionInsertDebugUtilsLabelEXT"#)
  xrConvertTimeToWin32PerformanceCounterKHR <- getInstanceProcAddr' handle (Ptr "xrConvertTimeToWin32PerformanceCounterKHR"#)
  xrConvertWin32PerformanceCounterToTimeKHR <- getInstanceProcAddr' handle (Ptr "xrConvertWin32PerformanceCounterToTimeKHR"#)
  xrCreateVulkanInstanceKHR <- getInstanceProcAddr' handle (Ptr "xrCreateVulkanInstanceKHR"#)
  xrCreateVulkanDeviceKHR <- getInstanceProcAddr' handle (Ptr "xrCreateVulkanDeviceKHR"#)
  xrGetVulkanGraphicsDevice2KHR <- getInstanceProcAddr' handle (Ptr "xrGetVulkanGraphicsDevice2KHR"#)
  xrConvertTimeToTimespecTimeKHR <- getInstanceProcAddr' handle (Ptr "xrConvertTimeToTimespecTimeKHR"#)
  xrConvertTimespecTimeToTimeKHR <- getInstanceProcAddr' handle (Ptr "xrConvertTimespecTimeToTimeKHR"#)
  xrGetVisibilityMaskKHR <- getInstanceProcAddr' handle (Ptr "xrGetVisibilityMaskKHR"#)
  xrCreateSpatialAnchorMSFT <- getInstanceProcAddr' handle (Ptr "xrCreateSpatialAnchorMSFT"#)
  xrCreateSpatialAnchorSpaceMSFT <- getInstanceProcAddr' handle (Ptr "xrCreateSpatialAnchorSpaceMSFT"#)
  xrDestroySpatialAnchorMSFT <- getInstanceProcAddr' handle (Ptr "xrDestroySpatialAnchorMSFT"#)
  xrCreateSpatialGraphNodeSpaceMSFT <- getInstanceProcAddr' handle (Ptr "xrCreateSpatialGraphNodeSpaceMSFT"#)
  xrCreateHandTrackerEXT <- getInstanceProcAddr' handle (Ptr "xrCreateHandTrackerEXT"#)
  xrDestroyHandTrackerEXT <- getInstanceProcAddr' handle (Ptr "xrDestroyHandTrackerEXT"#)
  xrLocateHandJointsEXT <- getInstanceProcAddr' handle (Ptr "xrLocateHandJointsEXT"#)
  xrCreateHandMeshSpaceMSFT <- getInstanceProcAddr' handle (Ptr "xrCreateHandMeshSpaceMSFT"#)
  xrUpdateHandMeshMSFT <- getInstanceProcAddr' handle (Ptr "xrUpdateHandMeshMSFT"#)
  xrGetControllerModelKeyMSFT <- getInstanceProcAddr' handle (Ptr "xrGetControllerModelKeyMSFT"#)
  xrLoadControllerModelMSFT <- getInstanceProcAddr' handle (Ptr "xrLoadControllerModelMSFT"#)
  xrGetControllerModelPropertiesMSFT <- getInstanceProcAddr' handle (Ptr "xrGetControllerModelPropertiesMSFT"#)
  xrGetControllerModelStateMSFT <- getInstanceProcAddr' handle (Ptr "xrGetControllerModelStateMSFT"#)
  xrEnumerateDisplayRefreshRatesFB <- getInstanceProcAddr' handle (Ptr "xrEnumerateDisplayRefreshRatesFB"#)
  xrGetDisplayRefreshRateFB <- getInstanceProcAddr' handle (Ptr "xrGetDisplayRefreshRateFB"#)
  xrRequestDisplayRefreshRateFB <- getInstanceProcAddr' handle (Ptr "xrRequestDisplayRefreshRateFB"#)
  xrCreateSpatialAnchorFromPerceptionAnchorMSFT <- getInstanceProcAddr' handle (Ptr "xrCreateSpatialAnchorFromPerceptionAnchorMSFT"#)
  xrTryGetPerceptionAnchorFromSpatialAnchorMSFT <- getInstanceProcAddr' handle (Ptr "xrTryGetPerceptionAnchorFromSpatialAnchorMSFT"#)
  xrEnumerateColorSpacesFB <- getInstanceProcAddr' handle (Ptr "xrEnumerateColorSpacesFB"#)
  xrSetColorSpaceFB <- getInstanceProcAddr' handle (Ptr "xrSetColorSpaceFB"#)
  pure $ InstanceCmds handle
    (castFunPtr @_ @(Ptr Instance_T -> ("name" ::: Ptr CChar) -> Ptr PFN_xrVoidFunction -> IO Result) xrGetInstanceProcAddr)
    (castFunPtr @_ @(Ptr Instance_T -> IO Result) xrDestroyInstance)
    (castFunPtr @_ @(Ptr Instance_T -> ("value" ::: Result) -> ("buffer" ::: Ptr (FixedArray MAX_RESULT_STRING_SIZE CChar)) -> IO Result) xrResultToString)
    (castFunPtr @_ @(Ptr Instance_T -> ("value" ::: StructureType) -> ("buffer" ::: Ptr (FixedArray MAX_STRUCTURE_NAME_SIZE CChar)) -> IO Result) xrStructureTypeToString)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr InstanceProperties -> IO Result) xrGetInstanceProperties)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr SystemGetInfo -> Ptr SystemId -> IO Result) xrGetSystem)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ("properties" ::: Ptr (SomeStruct SystemProperties)) -> IO Result) xrGetSystemProperties)
    (castFunPtr @_ @(Ptr Instance_T -> ("createInfo" ::: Ptr (SomeStruct SessionCreateInfo)) -> ("session" ::: Ptr (Ptr Session_T)) -> IO Result) xrCreateSession)
    (castFunPtr @_ @(Ptr Session_T -> IO Result) xrDestroySession)
    (castFunPtr @_ @(Ptr Space_T -> IO Result) xrDestroySpace)
    (castFunPtr @_ @(Ptr Session_T -> ("formatCapacityInput" ::: Word32) -> ("formatCountOutput" ::: Ptr Word32) -> ("formats" ::: Ptr Int64) -> IO Result) xrEnumerateSwapchainFormats)
    (castFunPtr @_ @(Ptr Session_T -> ("createInfo" ::: Ptr (SomeStruct SwapchainCreateInfo)) -> ("swapchain" ::: Ptr (Ptr Swapchain_T)) -> IO Result) xrCreateSwapchain)
    (castFunPtr @_ @(Ptr Swapchain_T -> IO Result) xrDestroySwapchain)
    (castFunPtr @_ @(Ptr Swapchain_T -> ("imageCapacityInput" ::: Word32) -> ("imageCountOutput" ::: Ptr Word32) -> ("images" ::: Ptr (SomeChild SwapchainImageBaseHeader)) -> IO Result) xrEnumerateSwapchainImages)
    (castFunPtr @_ @(Ptr Swapchain_T -> Ptr SwapchainImageAcquireInfo -> ("index" ::: Ptr Word32) -> IO Result) xrAcquireSwapchainImage)
    (castFunPtr @_ @(Ptr Swapchain_T -> Ptr SwapchainImageWaitInfo -> IO Result) xrWaitSwapchainImage)
    (castFunPtr @_ @(Ptr Swapchain_T -> Ptr SwapchainImageReleaseInfo -> IO Result) xrReleaseSwapchainImage)
    (castFunPtr @_ @(Ptr Session_T -> ("beginInfo" ::: Ptr (SomeStruct SessionBeginInfo)) -> IO Result) xrBeginSession)
    (castFunPtr @_ @(Ptr Session_T -> IO Result) xrEndSession)
    (castFunPtr @_ @(Ptr Session_T -> IO Result) xrRequestExitSession)
    (castFunPtr @_ @(Ptr Session_T -> ("spaceCapacityInput" ::: Word32) -> ("spaceCountOutput" ::: Ptr Word32) -> ("spaces" ::: Ptr ReferenceSpaceType) -> IO Result) xrEnumerateReferenceSpaces)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ReferenceSpaceCreateInfo -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result) xrCreateReferenceSpace)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ActionSpaceCreateInfo -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result) xrCreateActionSpace)
    (castFunPtr @_ @(Ptr Space_T -> ("baseSpace" ::: Ptr Space_T) -> Time -> ("location" ::: Ptr (SomeStruct SpaceLocation)) -> IO Result) xrLocateSpace)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ("viewConfigurationTypeCapacityInput" ::: Word32) -> ("viewConfigurationTypeCountOutput" ::: Ptr Word32) -> ("viewConfigurationTypes" ::: Ptr ViewConfigurationType) -> IO Result) xrEnumerateViewConfigurations)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ViewConfigurationType -> ("environmentBlendModeCapacityInput" ::: Word32) -> ("environmentBlendModeCountOutput" ::: Ptr Word32) -> ("environmentBlendModes" ::: Ptr EnvironmentBlendMode) -> IO Result) xrEnumerateEnvironmentBlendModes)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ViewConfigurationType -> Ptr ViewConfigurationProperties -> IO Result) xrGetViewConfigurationProperties)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ViewConfigurationType -> ("viewCapacityInput" ::: Word32) -> ("viewCountOutput" ::: Ptr Word32) -> ("views" ::: Ptr (SomeStruct ViewConfigurationView)) -> IO Result) xrEnumerateViewConfigurationViews)
    (castFunPtr @_ @(Ptr Session_T -> Ptr FrameBeginInfo -> IO Result) xrBeginFrame)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ViewLocateInfo -> Ptr ViewState -> ("viewCapacityInput" ::: Word32) -> ("viewCountOutput" ::: Ptr Word32) -> ("views" ::: Ptr View) -> IO Result) xrLocateViews)
    (castFunPtr @_ @(Ptr Session_T -> ("frameEndInfo" ::: Ptr (SomeStruct FrameEndInfo)) -> IO Result) xrEndFrame)
    (castFunPtr @_ @(Ptr Session_T -> Ptr FrameWaitInfo -> ("frameState" ::: Ptr (SomeStruct FrameState)) -> IO Result) xrWaitFrame)
    (castFunPtr @_ @(Ptr Session_T -> Ptr HapticActionInfo -> ("hapticFeedback" ::: Ptr (SomeChild HapticBaseHeader)) -> IO Result) xrApplyHapticFeedback)
    (castFunPtr @_ @(Ptr Session_T -> Ptr HapticActionInfo -> IO Result) xrStopHapticFeedback)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr EventDataBuffer -> IO Result) xrPollEvent)
    (castFunPtr @_ @(Ptr Instance_T -> ("pathString" ::: Ptr CChar) -> Ptr Path -> IO Result) xrStringToPath)
    (castFunPtr @_ @(Ptr Instance_T -> Path -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result) xrPathToString)
    (castFunPtr @_ @(Ptr Session_T -> ReferenceSpaceType -> ("bounds" ::: Ptr Extent2Df) -> IO Result) xrGetReferenceSpaceBoundsRect)
    (castFunPtr @_ @(Ptr Session_T -> AndroidThreadTypeKHR -> ("threadId" ::: Word32) -> IO Result) xrSetAndroidApplicationThreadKHR)
    (castFunPtr @_ @(Ptr Session_T -> ("info" ::: Ptr (SomeStruct SwapchainCreateInfo)) -> ("swapchain" ::: Ptr (Ptr Swapchain_T)) -> ("surface" ::: Ptr Jobject) -> IO Result) xrCreateSwapchainAndroidSurfaceKHR)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStateBoolean -> IO Result) xrGetActionStateBoolean)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStateFloat -> IO Result) xrGetActionStateFloat)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStateVector2f -> IO Result) xrGetActionStateVector2f)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ActionStateGetInfo -> Ptr ActionStatePose -> IO Result) xrGetActionStatePose)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr ActionSetCreateInfo -> ("actionSet" ::: Ptr (Ptr ActionSet_T)) -> IO Result) xrCreateActionSet)
    (castFunPtr @_ @(Ptr ActionSet_T -> IO Result) xrDestroyActionSet)
    (castFunPtr @_ @(Ptr ActionSet_T -> Ptr ActionCreateInfo -> ("action" ::: Ptr (Ptr Action_T)) -> IO Result) xrCreateAction)
    (castFunPtr @_ @(Ptr Action_T -> IO Result) xrDestroyAction)
    (castFunPtr @_ @(Ptr Instance_T -> ("suggestedBindings" ::: Ptr (SomeStruct InteractionProfileSuggestedBinding)) -> IO Result) xrSuggestInteractionProfileBindings)
    (castFunPtr @_ @(Ptr Session_T -> Ptr SessionActionSetsAttachInfo -> IO Result) xrAttachSessionActionSets)
    (castFunPtr @_ @(Ptr Session_T -> ("topLevelUserPath" ::: Path) -> Ptr InteractionProfileState -> IO Result) xrGetCurrentInteractionProfile)
    (castFunPtr @_ @(Ptr Session_T -> Ptr ActionsSyncInfo -> IO Result) xrSyncActions)
    (castFunPtr @_ @(Ptr Session_T -> Ptr BoundSourcesForActionEnumerateInfo -> ("sourceCapacityInput" ::: Word32) -> ("sourceCountOutput" ::: Ptr Word32) -> ("sources" ::: Ptr Path) -> IO Result) xrEnumerateBoundSourcesForAction)
    (castFunPtr @_ @(Ptr Session_T -> Ptr InputSourceLocalizedNameGetInfo -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result) xrGetInputSourceLocalizedName)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result) xrGetVulkanInstanceExtensionsKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr CChar) -> IO Result) xrGetVulkanDeviceExtensionsKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> ("vkInstance" ::: Ptr OpenXR.VulkanTypes.Instance_T) -> ("vkPhysicalDevice" ::: Ptr (Ptr OpenXR.VulkanTypes.PhysicalDevice_T)) -> IO Result) xrGetVulkanGraphicsDeviceKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsOpenGLKHR -> IO Result) xrGetOpenGLGraphicsRequirementsKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsOpenGLESKHR -> IO Result) xrGetOpenGLESGraphicsRequirementsKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsVulkanKHR -> IO Result) xrGetVulkanGraphicsRequirementsKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsD3D11KHR -> IO Result) xrGetD3D11GraphicsRequirementsKHR)
    (castFunPtr @_ @(Ptr Instance_T -> SystemId -> Ptr GraphicsRequirementsD3D12KHR -> IO Result) xrGetD3D12GraphicsRequirementsKHR)
    (castFunPtr @_ @(Ptr Session_T -> PerfSettingsDomainEXT -> PerfSettingsLevelEXT -> IO Result) xrPerfSettingsSetPerformanceLevelEXT)
    (castFunPtr @_ @(Ptr Session_T -> PerfSettingsDomainEXT -> Ptr PerfSettingsNotificationLevelEXT -> ("tempHeadroom" ::: Ptr CFloat) -> ("tempSlope" ::: Ptr CFloat) -> IO Result) xrThermalGetTemperatureTrendEXT)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr DebugUtilsObjectNameInfoEXT -> IO Result) xrSetDebugUtilsObjectNameEXT)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr DebugUtilsMessengerCreateInfoEXT -> ("messenger" ::: Ptr (Ptr DebugUtilsMessengerEXT_T)) -> IO Result) xrCreateDebugUtilsMessengerEXT)
    (castFunPtr @_ @(Ptr DebugUtilsMessengerEXT_T -> IO Result) xrDestroyDebugUtilsMessengerEXT)
    (castFunPtr @_ @(Ptr Instance_T -> DebugUtilsMessageSeverityFlagsEXT -> ("messageTypes" ::: DebugUtilsMessageTypeFlagsEXT) -> Ptr DebugUtilsMessengerCallbackDataEXT -> IO Result) xrSubmitDebugUtilsMessageEXT)
    (castFunPtr @_ @(Ptr Session_T -> ("labelInfo" ::: Ptr DebugUtilsLabelEXT) -> IO Result) xrSessionBeginDebugUtilsLabelRegionEXT)
    (castFunPtr @_ @(Ptr Session_T -> IO Result) xrSessionEndDebugUtilsLabelRegionEXT)
    (castFunPtr @_ @(Ptr Session_T -> ("labelInfo" ::: Ptr DebugUtilsLabelEXT) -> IO Result) xrSessionInsertDebugUtilsLabelEXT)
    (castFunPtr @_ @(Ptr Instance_T -> Time -> ("performanceCounter" ::: Ptr LARGE_INTEGER) -> IO Result) xrConvertTimeToWin32PerformanceCounterKHR)
    (castFunPtr @_ @(Ptr Instance_T -> ("performanceCounter" ::: Ptr LARGE_INTEGER) -> Ptr Time -> IO Result) xrConvertWin32PerformanceCounterToTimeKHR)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr VulkanInstanceCreateInfoKHR -> ("vulkanInstance" ::: Ptr (Ptr OpenXR.VulkanTypes.Instance_T)) -> ("vulkanResult" ::: Ptr OpenXR.VulkanTypes.Result) -> IO Result) xrCreateVulkanInstanceKHR)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr VulkanDeviceCreateInfoKHR -> ("vulkanDevice" ::: Ptr (Ptr OpenXR.VulkanTypes.Device_T)) -> ("vulkanResult" ::: Ptr OpenXR.VulkanTypes.Result) -> IO Result) xrCreateVulkanDeviceKHR)
    (castFunPtr @_ @(Ptr Instance_T -> Ptr VulkanGraphicsDeviceGetInfoKHR -> ("vulkanPhysicalDevice" ::: Ptr (Ptr OpenXR.VulkanTypes.PhysicalDevice_T)) -> IO Result) xrGetVulkanGraphicsDevice2KHR)
    (castFunPtr @_ @(Ptr Instance_T -> Time -> ("timespecTime" ::: Ptr Timespec) -> IO Result) xrConvertTimeToTimespecTimeKHR)
    (castFunPtr @_ @(Ptr Instance_T -> ("timespecTime" ::: Ptr Timespec) -> Ptr Time -> IO Result) xrConvertTimespecTimeToTimeKHR)
    (castFunPtr @_ @(Ptr Session_T -> ViewConfigurationType -> ("viewIndex" ::: Word32) -> VisibilityMaskTypeKHR -> Ptr VisibilityMaskKHR -> IO Result) xrGetVisibilityMaskKHR)
    (castFunPtr @_ @(Ptr Session_T -> Ptr SpatialAnchorCreateInfoMSFT -> ("anchor" ::: Ptr (Ptr SpatialAnchorMSFT_T)) -> IO Result) xrCreateSpatialAnchorMSFT)
    (castFunPtr @_ @(Ptr Session_T -> Ptr SpatialAnchorSpaceCreateInfoMSFT -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result) xrCreateSpatialAnchorSpaceMSFT)
    (castFunPtr @_ @(Ptr SpatialAnchorMSFT_T -> IO Result) xrDestroySpatialAnchorMSFT)
    (castFunPtr @_ @(Ptr Session_T -> Ptr SpatialGraphNodeSpaceCreateInfoMSFT -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result) xrCreateSpatialGraphNodeSpaceMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ("createInfo" ::: Ptr (SomeStruct HandTrackerCreateInfoEXT)) -> ("handTracker" ::: Ptr (Ptr HandTrackerEXT_T)) -> IO Result) xrCreateHandTrackerEXT)
    (castFunPtr @_ @(Ptr HandTrackerEXT_T -> IO Result) xrDestroyHandTrackerEXT)
    (castFunPtr @_ @(Ptr HandTrackerEXT_T -> Ptr HandJointsLocateInfoEXT -> ("locations" ::: Ptr (SomeStruct HandJointLocationsEXT)) -> IO Result) xrLocateHandJointsEXT)
    (castFunPtr @_ @(Ptr HandTrackerEXT_T -> Ptr HandMeshSpaceCreateInfoMSFT -> ("space" ::: Ptr (Ptr Space_T)) -> IO Result) xrCreateHandMeshSpaceMSFT)
    (castFunPtr @_ @(Ptr HandTrackerEXT_T -> Ptr HandMeshUpdateInfoMSFT -> Ptr HandMeshMSFT -> IO Result) xrUpdateHandMeshMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ("topLevelUserPath" ::: Path) -> Ptr ControllerModelKeyStateMSFT -> IO Result) xrGetControllerModelKeyMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ControllerModelKeyMSFT -> ("bufferCapacityInput" ::: Word32) -> ("bufferCountOutput" ::: Ptr Word32) -> ("buffer" ::: Ptr Word8) -> IO Result) xrLoadControllerModelMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ControllerModelKeyMSFT -> Ptr ControllerModelPropertiesMSFT -> IO Result) xrGetControllerModelPropertiesMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ControllerModelKeyMSFT -> Ptr ControllerModelStateMSFT -> IO Result) xrGetControllerModelStateMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ("displayRefreshRateCapacityInput" ::: Word32) -> ("displayRefreshRateCountOutput" ::: Ptr Word32) -> ("displayRefreshRates" ::: Ptr CFloat) -> IO Result) xrEnumerateDisplayRefreshRatesFB)
    (castFunPtr @_ @(Ptr Session_T -> ("displayRefreshRate" ::: Ptr CFloat) -> IO Result) xrGetDisplayRefreshRateFB)
    (castFunPtr @_ @(Ptr Session_T -> ("displayRefreshRate" ::: CFloat) -> IO Result) xrRequestDisplayRefreshRateFB)
    (castFunPtr @_ @(Ptr Session_T -> ("perceptionAnchor" ::: Ptr IUnknown) -> ("anchor" ::: Ptr (Ptr SpatialAnchorMSFT_T)) -> IO Result) xrCreateSpatialAnchorFromPerceptionAnchorMSFT)
    (castFunPtr @_ @(Ptr Session_T -> Ptr SpatialAnchorMSFT_T -> ("perceptionAnchor" ::: Ptr (Ptr IUnknown)) -> IO Result) xrTryGetPerceptionAnchorFromSpatialAnchorMSFT)
    (castFunPtr @_ @(Ptr Session_T -> ("colorSpaceCapacityInput" ::: Word32) -> ("colorSpaceCountOutput" ::: Ptr Word32) -> ("colorSpaces" ::: Ptr ColorSpaceFB) -> IO Result) xrEnumerateColorSpacesFB)
    (castFunPtr @_ @(Ptr Session_T -> ColorSpaceFB -> IO Result) xrSetColorSpaceFB)

