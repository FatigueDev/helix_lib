---@meta

-- This is a modeldata pool, which can hold 400k vertices, 300k indices but not more than 900 chunks
---@class MeshDataPool
---@field MaxPartsPerPool number The maximum parts for this pool.
---@field VerticesPoolSize number The current vertices for this pool.
---@field IndicesPoolSize number the amount of indicies for this pool.
---@field indicesStartsByte number The starting byte for each index.
---@field indicesSizes number The size of each index.
---@field indicesGroupsCount number How many index groups are there.
---@field indicesPosition number the position of the indices.
---@field verticesPosition number the position of the vertices.
---@field CurrentFragmentation number The current fragmentaton.
---@field UsedVertices number How many of the vertices are used.
---@field RenderedTriangles number How many triangles are rendered.
---@field AllocatedTris number How many triangles are allocated.
MeshDataPool = {}


-- Allocates a new pool for mesh data.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param verticesPoolSize number
---@param indicesPoolSize number
---@param maxPartsPerPool number
---@param customFloats? CustomMeshDataPartFloat Holds arbitrary float data for meshes to be used in the shader
---@param customShorts? CustomMeshDataPartShort Holds arbitrary short data for meshes to be used in the shader
---@param customBytes? CustomMeshDataPartByte Holds arbitrary byte data for meshes to be used in the shader
---@param customInts? CustomMeshDataPartInt Holds arbitrary int data for meshes to be used in the shader
---@return MeshDataPool # This is a modeldata pool, which can hold 400k vertices, 300k indices but not more than 900 chunks
function MeshDataPool.AllocateNewPool(capi, verticesPoolSize, indicesPoolSize, maxPartsPerPool, customFloats, customShorts, customBytes, customInts) end

-- Attempts to add the new model.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param modeldata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param modelOrigin Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param dimension number
---@param frustumCullSphere Sphere Not really a sphere, actually now an AABB centred on x,y,z, but we keep the name for API consistency
---@return ModelDataPoolLocation # Contains all the data for the given model pool.
function MeshDataPool.TryAdd(capi, modeldata, modelOrigin, dimension, frustumCullSphere) end

-- Attempts to remove the model from the pool if the model exists.  Will throw an invalid call or an InvalidOperationException if used improperly.
---@param location ModelDataPoolLocation Contains all the data for the given model pool.
function MeshDataPool.RemoveLocation(location) end

-- Draw the model.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param frustumCuller FrustumCulling
---@param frustumCullMode EnumFrustumCullMode
function MeshDataPool.Draw(capi, frustumCuller, frustumCullMode) end

-- Cleans up the rendering view of the models.
---@param frustumCuller FrustumCulling
---@param frustumCullMode EnumFrustumCullMode
function MeshDataPool.FrustumCull(frustumCuller, frustumCullMode) end

function MeshDataPool.SetFullyVisible() end

-- Is this an empty pool.
---@return boolean
function MeshDataPool.IsEmpty() end

-- Disposes of the current mesh pool.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function MeshDataPool.Dispose(capi) end

-- Calculates the current fragmentation of the mesh.
function MeshDataPool.CalcFragmentation() end

-- Gets the current fragmentation of the pool.
---@return number
function MeshDataPool.GetFragmentation() end

---@param render IRenderAPI The main api component to assist you in rendering pretty stuff onto the screen
function MeshDataPool.RenderMesh(render) end

---@return userdata
function MeshDataPool.GetType() end

---@return string
function MeshDataPool.ToString() end

---@param obj userdata
---@return boolean
function MeshDataPool.Equals(obj) end

---@return number
function MeshDataPool.GetHashCode() end


