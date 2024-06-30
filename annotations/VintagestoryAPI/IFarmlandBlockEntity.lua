---@meta

---@class IFarmlandBlockEntity
---@field TotalHoursForNextStage number Total game hours from where on it can enter the next growth stage 
---@field TotalHoursFertilityCheck number The last time fertility increase was checked
---@field Nutrients number Farmland has 3 nutrient levels N, P and K located in this array in that order.  Each nutrient level has a range of 0-100.
---@field MoistureLevel number The farmlands moisture level
---@field IsVisiblyMoist boolean
---@field OriginalFertility number The fertility the soil will recover to (the soil from which the farmland was made of)
---@field Pos BlockPos The position of the farmland
---@field UpPos BlockPos The position directly above the farmland
---@field CropAttributes ITreeAttribute
IFarmlandBlockEntity = {}


---@return number
function IFarmlandBlockEntity.get_TotalHoursForNextStage() end

---@return number
function IFarmlandBlockEntity.get_TotalHoursFertilityCheck() end

---@return number
function IFarmlandBlockEntity.get_Nutrients() end

---@return number
function IFarmlandBlockEntity.get_MoistureLevel() end

---@return boolean
function IFarmlandBlockEntity.get_IsVisiblyMoist() end

---@return number
function IFarmlandBlockEntity.get_OriginalFertility() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IFarmlandBlockEntity.get_Pos() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function IFarmlandBlockEntity.get_UpPos() end

---@return ITreeAttribute # Represents a List of nestable Attributes
function IFarmlandBlockEntity.get_CropAttributes() end


