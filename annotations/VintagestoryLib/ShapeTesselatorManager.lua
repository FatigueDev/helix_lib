---@meta

---@class ShapeTesselatorManager: Multithreaded, ITesselatorManager, Multithreaded
---@field Tesselator ShapeTesselator
---@field shapes OrderedDictionary`2
---@field objs OrderedDictionary`2
---@field gltfs OrderedDictionary`2
---@field blockModelDatas MeshData[]
---@field altblockModelDatasLod1 MeshData[][]
---@field altblockModelDatasLod0 MeshData[][]
---@field altblockModelDatasLod2 MeshData[][]
---@field blockModelRefsInventory MultiTextureMeshRef[]
---@field itemModelRefsInventory MultiTextureMeshRef[]
---@field altItemModelRefsInventory MultiTextureMeshRef[][]
---@field unknownItemModelData MeshData
---@field unknownItemModelRef MultiTextureMeshRef
---@field unknownBlockModelData MeshData
---@field unknownBlockModelRef MultiTextureMeshRef
ShapeTesselatorManager = {}

---@param game ClientMain
---@return ShapeTesselatorManager
function ShapeTesselatorManager.ctor(game) end
---@param server ServerMain
---@return ShapeTesselatorManager
function ShapeTesselatorManager.ctor(server) end

---@return ShapeTesselator
function ShapeTesselatorManager.get_Tesselator() end

---@param block Block Basic class for a placeable block
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ShapeTesselatorManager.GetDefaultBlockMesh(block) end

function ShapeTesselatorManager.LoadDone() end

function ShapeTesselatorManager.PrepareToLoadShapes() end

---@param entities function
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ShapeTesselatorManager.LoadEntityShapesAsync(entities, api) end

---@param entities function
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function ShapeTesselatorManager.LoadEntityShapes(entities, api) end

function ShapeTesselatorManager.TesselateBlocks_Pre() end

---@param blocks IList`1
---@param offset number
---@param maxCount number
---@return number
function ShapeTesselatorManager.TesselateBlocksForInventory(blocks, offset, maxCount) end

---@param blocks IList`1
function ShapeTesselatorManager.TesselateBlocksForInventory_ASync(blocks) end

---@param blocks IList`1
function ShapeTesselatorManager.TesselateBlocks_Async(blocks) end

---@param block Block Basic class for a placeable block
function ShapeTesselatorManager.CreateFastTextureAlternates(block) end

---@param itemtypes IList`1
function ShapeTesselatorManager.TesselateItems_Pre(itemtypes) end

---@param itemtypes IList`1
---@param offset number
---@param maxCount number
---@return number
function ShapeTesselatorManager.TesselateItems(itemtypes, offset, maxCount) end

---@param block Block Basic class for a placeable block
---@return MultiTextureMeshRef
function ShapeTesselatorManager.GetDefaultBlockMeshRef(block) end

---@param item Item Represents an in game Item of Vintage Story
---@return MultiTextureMeshRef
function ShapeTesselatorManager.GetDefaultItemMeshRef(item) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return Shape # The base shape for all json objects.
function ShapeTesselatorManager.GetCachedShape(location) end

function ShapeTesselatorManager.ThreadDispose() end

---@return userdata
function ShapeTesselatorManager.GetType() end

---@return string
function ShapeTesselatorManager.ToString() end

---@param obj userdata
---@return boolean
function ShapeTesselatorManager.Equals(obj) end

---@return number
function ShapeTesselatorManager.GetHashCode() end


