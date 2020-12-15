module OpenXR.VulkanTypes where

import           Data.Kind
import           Data.Word
import           Foreign.C.String
import           Foreign.Ptr
import           Foreign.Storable
import           OpenXR.Zero

data Instance_T
newtype Instance = Instance (Ptr Instance_T)
  deriving stock (Eq, Show)
  deriving newtype (Zero, Storable)

data PhysicalDevice_T
newtype PhysicalDevice = PhysicalDevice (Ptr PhysicalDevice_T)
  deriving stock (Eq, Show)
  deriving newtype (Zero, Storable)

data Device_T
newtype Device = Device (Ptr Device_T)
  deriving stock (Eq, Show)
  deriving newtype (Zero, Storable)

data Image_T
newtype Image = Image (Ptr Image_T)
  deriving stock (Eq, Show)
  deriving newtype (Zero, Storable)

newtype Result = Result Word32
  deriving stock (Eq, Show)
  deriving newtype (Zero, Storable)

newtype Format = Format Word32
  deriving stock (Eq, Show)
  deriving newtype (Zero, Storable)

data InstanceCreateInfo es
data DeviceCreateInfo es

data AllocationCallbacks

type PFN_vkGetInstanceProcAddr = FunPtr (CString -> IO (FunPtr ()))

data SomeStruct (a :: [Type] -> Type) where
  SomeStruct :: forall a es. a es -> SomeStruct a
