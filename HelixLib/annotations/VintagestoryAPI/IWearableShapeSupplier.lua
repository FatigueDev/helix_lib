---@meta

---@class IWearableShapeSupplier
IWearableShapeSupplier = {}


---@param stack ItemStack
---@param forEntity EntityAgent A goal-directed entity which observes and acts upon an environment
---@param texturePrefixCode string
---@return Shape # The base shape for all json objects.
function IWearableShapeSupplier.GetShape(stack, forEntity, texturePrefixCode) end


