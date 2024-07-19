---@meta

-- Manager interface for Tesselators.
---@class ITesselatorManager
ITesselatorManager = {}


-- Returns the default block mesh that being used by the engine when tesselating a chunk. The alternate and inventory versions are seperate.
---@param block Block Basic class for a placeable block
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ITesselatorManager.GetDefaultBlockMesh(block) end

-- Returns the default block mesh ref that being used by the engine when rendering a block in the inventory. The alternate and inventory versions are seperate.
---@param block Block Basic class for a placeable block
---@return MultiTextureMeshRef
function ITesselatorManager.GetDefaultBlockMeshRef(block) end

-- Returns the default block mesh ref that being used by the engine when rendering an item in the inventory. The alternate and inventory versions are seperate.
---@param block Item Represents an in game Item of Vintage Story
---@return MultiTextureMeshRef
function ITesselatorManager.GetDefaultItemMeshRef(block) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return Shape # The base shape for all json objects.
function ITesselatorManager.GetCachedShape(location) end

function ITesselatorManager.ThreadDispose() end


