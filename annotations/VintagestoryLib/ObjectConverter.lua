---@meta

---@class ObjectConverter
ObjectConverter = {}


---@param utf8Text string
---@return T
function ObjectConverter.FromJson(utf8Text) end

---@param data number
---@return T
function ObjectConverter.FromJson(data) end

---@param data number
---@return T
function ObjectConverter.FromBinary(data) end

---@param obj T
---@return number
function ObjectConverter.ToBinary(obj) end

---@return userdata
function ObjectConverter.GetType() end

---@return string
function ObjectConverter.ToString() end

---@param obj userdata
---@return boolean
function ObjectConverter.Equals(obj) end

---@return number
function ObjectConverter.GetHashCode() end


