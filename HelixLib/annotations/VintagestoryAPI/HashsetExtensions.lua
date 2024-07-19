---@meta

---@class HashsetExtensions
HashsetExtensions = {}


---@param hashset HashSet`1
---@param elements function
function HashsetExtensions.AddRange(hashset, elements) end

---@param hashset HashSet`1
---@param elements HashSet`1
function HashsetExtensions.AddRange(hashset, elements) end

---@param hashset HashSet`1
---@param elements T[]
function HashsetExtensions.AddRange(hashset, elements) end

---@param hashset HashSet`1
---@param seperator? string
---@return string
function HashsetExtensions.Implode(hashset, seperator) end

---@param items ICollection`1
---@return T
function HashsetExtensions.PopOne(items) end

---@return userdata
function HashsetExtensions.GetType() end

---@return string
function HashsetExtensions.ToString() end

---@param obj userdata
---@return boolean
function HashsetExtensions.Equals(obj) end

---@return number
function HashsetExtensions.GetHashCode() end


