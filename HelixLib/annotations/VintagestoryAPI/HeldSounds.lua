---@meta

---@class HeldSounds
---@field Idle AssetLocation
---@field Equip AssetLocation
---@field Unequip AssetLocation
---@field Attack AssetLocation
HeldSounds = {}

---@return HeldSounds
function HeldSounds.ctor() end

-- Clones the held sounds.
---@return HeldSounds
function HeldSounds.Clone() end

---@param context StreamingContext
function HeldSounds.OnDeserializedMethod(context) end

---@return userdata
function HeldSounds.GetType() end

---@return string
function HeldSounds.ToString() end

---@param obj userdata
---@return boolean
function HeldSounds.Equals(obj) end

---@return number
function HeldSounds.GetHashCode() end


