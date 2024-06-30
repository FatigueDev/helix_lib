---@meta

-- A collectible object that can be placed on the ground or on shelves or in display cases, but require custom code or rendering for it
---@class ICollectibleDisplayable
ICollectibleDisplayable = {}


-- Return a custom mesh to be used for the collectible. Return null to use default item/block mesh. It is recommended to cache the returned mesh in the ObjectCache for efficieny.
---@param inSlot ItemSlot The default item slot to item stacks
---@param displayType string
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ICollectibleDisplayable.GetMeshDataForDisplay(inSlot, displayType) end

-- This collectible was placed in-world and the chunk is about to get re-tesselated.
---@param byBlockEntity BlockEntity Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
---@param inSlot ItemSlot The default item slot to item stacks
function ICollectibleDisplayable.NowOnDisplay(byBlockEntity, inSlot) end


