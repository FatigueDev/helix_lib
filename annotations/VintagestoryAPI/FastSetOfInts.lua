---@meta

---@class FastSetOfInts:  IEnumerable
---@field Count number
FastSetOfInts = {}

---@return FastSetOfInts
function FastSetOfInts.ctor() end

---@return number
function FastSetOfInts.get_Count() end

function FastSetOfInts.Clear() end

-- Add four separate components, assumed to be signed int in the range -128 to +127
---@param a number
---@param b number
---@param c number
---@param d number
---@return boolean
function FastSetOfInts.Add(a, b, c, d) end

-- Return false if the set already contained this value; return true if the Add was successful
---@param value number
---@return boolean
function FastSetOfInts.Add(value) end

---@param a number
---@param b number
---@param c number
---@param d number
function FastSetOfInts.RemoveIfMatches(a, b, c, d) end

---@return function
function FastSetOfInts.GetEnumerator() end

---@return userdata
function FastSetOfInts.GetType() end

---@return string
function FastSetOfInts.ToString() end

---@param obj userdata
---@return boolean
function FastSetOfInts.Equals(obj) end

---@return number
function FastSetOfInts.GetHashCode() end


