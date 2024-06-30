---@meta

---@class CropBehavior
---@field block Block
CropBehavior = {}

---@param block Block Basic class for a placeable block
---@return CropBehavior
function CropBehavior.ctor(block) end

-- Initializes the crop with additional properties.
---@param properties JsonObject Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function CropBehavior.Initialize(properties) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param farmland IFarmlandBlockEntity
---@param currentTotalHours number
---@param newGrowthStage number
---@param handling EnumHandling&
---@return boolean
function CropBehavior.TryGrowCrop(api, farmland, currentTotalHours, newGrowthStage, handling) end

-- The event fired when the crop is planted.
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CropBehavior.OnPlanted(api) end

---@return userdata
function CropBehavior.GetType() end

---@return string
function CropBehavior.ToString() end

---@param obj userdata
---@return boolean
function CropBehavior.Equals(obj) end

---@return number
function CropBehavior.GetHashCode() end


