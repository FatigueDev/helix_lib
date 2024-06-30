---@meta

-- Holds all chunk mesh pools of the current running game
---@class MeshDataPoolMasterManager
---@field currentDt number
---@field currentModelViewMatrix number
---@field shadowMVPMatrix number
---@field DelayedPoolLocationRemoval boolean If true, RemoveLocation() only actually removes the location after 3 frames. Need to call OnFrame() to achieve that
MeshDataPoolMasterManager = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@return MeshDataPoolMasterManager
function MeshDataPoolMasterManager.ctor(capi) end

-- Removes the models with the given locations.
---@param locations ModelDataPoolLocation[] Contains all the data for the given model pool.
function MeshDataPoolMasterManager.RemoveDataPoolLocations(locations) end

---@param dt number
---@param modelviewMatrix number
---@param shadowMVPMatrix number
function MeshDataPoolMasterManager.OnFrame(dt, modelviewMatrix, shadowMVPMatrix) end

-- Adds a new pool to the master pool.
---@param pool MeshDataPool This is a modeldata pool, which can hold 400k vertices, 300k indices but not more than 900 chunks
function MeshDataPoolMasterManager.AddModelDataPool(pool) end

-- Cleans up and gets rid of all the pools.
---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function MeshDataPoolMasterManager.DisposeAllPools(capi) end

-- Calculates the fragmentation.
---@return number
function MeshDataPoolMasterManager.CalcFragmentation() end

-- The number of model pools in this master manager.
---@return number
function MeshDataPoolMasterManager.QuantityModelDataPools() end

---@return userdata
function MeshDataPoolMasterManager.GetType() end

---@return string
function MeshDataPoolMasterManager.ToString() end

---@param obj userdata
---@return boolean
function MeshDataPoolMasterManager.Equals(obj) end

---@return number
function MeshDataPoolMasterManager.GetHashCode() end


