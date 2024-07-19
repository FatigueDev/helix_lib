---@meta

---@class FastLargeSetOfLongs:  IEnumerable
---@field Count number
FastLargeSetOfLongs = {}

---@param numbuckets number
---@return FastLargeSetOfLongs
function FastLargeSetOfLongs.ctor(numbuckets) end

---@return number
function FastLargeSetOfLongs.get_Count() end

function FastLargeSetOfLongs.Clear() end

-- Return false if the set already contained this value; return true if the Add was successful
---@param value number
---@return boolean
function FastLargeSetOfLongs.Add(value) end

---@return function
function FastLargeSetOfLongs.GetEnumerator() end

---@return userdata
function FastLargeSetOfLongs.GetType() end

---@return string
function FastLargeSetOfLongs.ToString() end

---@param obj userdata
---@return boolean
function FastLargeSetOfLongs.Equals(obj) end

---@return number
function FastLargeSetOfLongs.GetHashCode() end


