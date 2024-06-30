---@meta

-- This is a recycling system for MeshData objects, so that they can be re-used: helps performance by easing memory allocation pressure, at the cost of holding typically around 300-400MB of memory for these recycled objects
---@class MeshDataRecycler
---@field MinimumSizeForRecycling number
---@field TTL number
MeshDataRecycler = {}

---@param clientMain IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@return MeshDataRecycler
function MeshDataRecycler.ctor(clientMain) end

-- Gets or creates a MeshData with basic data fields already allocated (may contain junk data) and capacity (VerticesMax) at least equal to minimumVertices; in MeshData created/recycled using this system, IndicesMax will be fixed equal to VerticesMax * 6 / 4
---@param minimumVertices number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshDataRecycler.GetOrCreateMesh(minimumVertices) end

-- Call this periodically on the same thread which will call GetOrCreateMesh, this is required to ensure the Recycling system is up to date
function MeshDataRecycler.DoRecycling() end

-- Offer this MeshData to the recycling system: it will first be queued for recycling, and later processed to be either recycled or disposed of
---@param meshData MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshDataRecycler.Recycle(meshData) end

-- Dispose of the MeshDataRecycler (normally on game exit, but can also be used to disable further use of it)
function MeshDataRecycler.Dispose() end

---@return userdata
function MeshDataRecycler.GetType() end

---@return string
function MeshDataRecycler.ToString() end

---@param obj userdata
---@return boolean
function MeshDataRecycler.Equals(obj) end

---@return number
function MeshDataRecycler.GetHashCode() end


