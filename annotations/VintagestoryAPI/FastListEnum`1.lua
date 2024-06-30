---@meta

---@class FastListEnum`1:  IEnumerator
---@field Current userdata
FastListEnum`1 = {}

---@param list FastList`1
---@return FastListEnum`1
function FastListEnum`1.ctor(list) end

---@return userdata
function FastListEnum`1.get_Current() end

---@return boolean
function FastListEnum`1.MoveNext() end

function FastListEnum`1.Reset() end

---@return userdata
function FastListEnum`1.GetType() end

---@return string
function FastListEnum`1.ToString() end

---@param obj userdata
---@return boolean
function FastListEnum`1.Equals(obj) end

---@return number
function FastListEnum`1.GetHashCode() end


