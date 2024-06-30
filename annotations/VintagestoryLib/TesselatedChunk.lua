---@meta

---@class TesselatedChunk
TesselatedChunk = {}

---@return TesselatedChunk
function TesselatedChunk.ctor() end

---@param obj TesselatedChunk
---@return number
function TesselatedChunk.CompareTo(obj) end

---@param otc TesselatedChunk
---@return boolean
function TesselatedChunk.MergeIfEqual(otc) end

---@return userdata
function TesselatedChunk.GetType() end

---@return string
function TesselatedChunk.ToString() end

---@param obj userdata
---@return boolean
function TesselatedChunk.Equals(obj) end

---@return number
function TesselatedChunk.GetHashCode() end


