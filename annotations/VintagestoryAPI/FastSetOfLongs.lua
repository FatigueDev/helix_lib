---@meta

---@class FastSetOfLongs:  IEnumerable
---@field Count number
FastSetOfLongs = {}

---@return FastSetOfLongs
function FastSetOfLongs.ctor() end

---@return number
function FastSetOfLongs.get_Count() end

function FastSetOfLongs.Clear() end

-- Return false if the set already contained this value; return true if the Add was successful
---@param value number
---@return boolean
function FastSetOfLongs.Add(value) end

---@return function
function FastSetOfLongs.GetEnumerator() end

---@return userdata
function FastSetOfLongs.GetType() end

---@return string
function FastSetOfLongs.ToString() end

---@param obj userdata
---@return boolean
function FastSetOfLongs.Equals(obj) end

---@return number
function FastSetOfLongs.GetHashCode() end


