---@meta

-- Holds a collection of pools, usually for 1 render pass 
---@class MeshDataPoolManager
MeshDataPoolManager = {}

---@param masterPool MeshDataPoolMasterManager Holds all chunk mesh pools of the current running game
---@param frustumCuller FrustumCulling
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param defaultVertexPoolSize number
---@param defaultIndexPoolSize number
---@param maxPartsPerPool number
---@param customFloats? CustomMeshDataPartFloat Holds arbitrary float data for meshes to be used in the shader
---@param customShorts? CustomMeshDataPartShort Holds arbitrary short data for meshes to be used in the shader
---@param customBytes? CustomMeshDataPartByte Holds arbitrary byte data for meshes to be used in the shader
---@param customInts? CustomMeshDataPartInt Holds arbitrary int data for meshes to be used in the shader
---@return MeshDataPoolManager
function MeshDataPoolManager.ctor(masterPool, frustumCuller, capi, defaultVertexPoolSize, defaultIndexPoolSize, maxPartsPerPool, customFloats, customShorts, customBytes, customInts) end

-- Adds a model to the mesh pool.
---@param modeldata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param modelOrigin Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param dimension number
---@param frustumCullSphere Sphere Not really a sphere, actually now an AABB centred on x,y,z, but we keep the name for API consistency
---@return ModelDataPoolLocation # Contains all the data for the given model pool.
function MeshDataPoolManager.AddModel(modeldata, modelOrigin, dimension, frustumCullSphere) end

-- Renders the chunk models to the GPU.  One of the most important methods in the entire game!
---@param playerpos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param originUniformName string
---@param frustumCullMode? EnumFrustumCullMode
function MeshDataPoolManager.Render(playerpos, originUniformName, frustumCullMode) end

---@param usedVideoMemory number
---@param renderedTris number
---@param allocatedTris number
function MeshDataPoolManager.GetStats(usedVideoMemory, renderedTris, allocatedTris) end

---@return userdata
function MeshDataPoolManager.GetType() end

---@return string
function MeshDataPoolManager.ToString() end

---@param obj userdata
---@return boolean
function MeshDataPoolManager.Equals(obj) end

---@return number
function MeshDataPoolManager.GetHashCode() end


