---@meta

---@class BlockSounds
---@field Walk AssetLocation
---@field Inside AssetLocation
---@field Break AssetLocation
---@field Place AssetLocation
---@field Hit AssetLocation
---@field ByTool table Gets the sound that occurs when a specific tool hits a block.
---@field Ambient AssetLocation
---@field AmbientBlockCount number
BlockSounds = {}

---@return BlockSounds
function BlockSounds.ctor() end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.get_Walk() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function BlockSounds.set_Walk(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.get_Inside() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function BlockSounds.set_Inside(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.get_Break() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function BlockSounds.set_Break(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.get_Place() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function BlockSounds.set_Place(value) end

---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.get_Hit() end

---@param value AssetLocation Defines a complete path to an assets, including it's domain
function BlockSounds.set_Hit(value) end

---@return table
function BlockSounds.get_ByTool() end

---@param value table
function BlockSounds.set_ByTool(value) end

-- Clones the block sounds.
---@return BlockSounds
function BlockSounds.Clone() end

-- Gets the breaking sound, either provided by the tool or by this sound.
---@param byPlayer IPlayer Represents a player
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.GetBreakSound(byPlayer) end

-- Gets the hit sound either provided by the tool or by the block.
---@param byPlayer IPlayer Represents a player
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.GetHitSound(byPlayer) end

-- Gets the break sound either by the tool or by the block if the tool does not have a break sound.
---@param tool EnumTool
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.GetBreakSound(tool) end

-- Gets the hit sound either by the tool or by the block if the tool does not have a hit sound.
---@param tool EnumTool
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function BlockSounds.GetHitSound(tool) end

---@param context StreamingContext
function BlockSounds.OnDeserializedMethod(context) end

---@return userdata
function BlockSounds.GetType() end

---@return string
function BlockSounds.ToString() end

---@param obj userdata
---@return boolean
function BlockSounds.Equals(obj) end

---@return number
function BlockSounds.GetHashCode() end


