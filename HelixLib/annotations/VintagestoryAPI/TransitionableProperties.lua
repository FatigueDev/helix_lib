---@meta

---@class TransitionableProperties
---@field Type EnumTransitionType What kind of transition can it make?
---@field FreshHours NatFloat The amount of hours this item stays fresh / untransitioned
---@field TransitionHours NatFloat The amount of hours it takes for the item to transition
---@field TransitionedStack JsonItemStack The itemstack the item/block turns into upon transitioning
---@field TransitionRatio number Conversion ratio of fresh stacksize to transitioned stack size
TransitionableProperties = {}

---@return TransitionableProperties
function TransitionableProperties.ctor() end

-- Duplicates the properties, which includes cloning the stack that was eaten.
---@return TransitionableProperties
function TransitionableProperties.Clone() end

---@param writer BinaryWriter
function TransitionableProperties.ToBytes(writer) end

---@param reader BinaryReader
---@param instancer IClassRegistryAPI Interface for creating instances
function TransitionableProperties.FromBytes(reader, instancer) end

---@return userdata
function TransitionableProperties.GetType() end

---@return string
function TransitionableProperties.ToString() end

---@param obj userdata
---@return boolean
function TransitionableProperties.Equals(obj) end

---@return number
function TransitionableProperties.GetHashCode() end


