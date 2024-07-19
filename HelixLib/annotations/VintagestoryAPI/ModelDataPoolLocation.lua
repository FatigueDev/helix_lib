---@meta

-- Contains all the data for the given model pool.
---@class ModelDataPoolLocation
---@field PoolId number The ID of the pool model.
---@field IndicesStart number Where the indices of the model start.
---@field IndicesEnd number Where the indices of the model end.
---@field VerticesStart number Where the vertices start.
---@field VerticesEnd number Where the vertices end.
---@field FrustumCullSphere Sphere The culling sphere.
---@field FrustumVisible boolean Whether this model is visible or not.
---@field CullVisible Bools
---@field LodLevel number
---@field Hide boolean
---@field TransitionCounter number Used for models with movements (like a door).
---@field VisibleBufIndex number
ModelDataPoolLocation = {}

---@return ModelDataPoolLocation
function ModelDataPoolLocation.ctor() end

---@param mode EnumFrustumCullMode
---@param culler FrustumCulling
---@return boolean
function ModelDataPoolLocation.IsVisible(mode, culler) end

---@return userdata
function ModelDataPoolLocation.GetType() end

---@return string
function ModelDataPoolLocation.ToString() end

---@param obj userdata
---@return boolean
function ModelDataPoolLocation.Equals(obj) end

---@return number
function ModelDataPoolLocation.GetHashCode() end


