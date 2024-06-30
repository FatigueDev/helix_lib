---@meta

---@class BoxedArray
---@field buffer number
BoxedArray = {}

---@return BoxedArray
function BoxedArray.ctor() end

---@return BoxedArray
function BoxedArray.CheckCreated() end

---@return userdata
function BoxedArray.GetType() end

---@return string
function BoxedArray.ToString() end

---@param obj userdata
---@return boolean
function BoxedArray.Equals(obj) end

---@return number
function BoxedArray.GetHashCode() end


