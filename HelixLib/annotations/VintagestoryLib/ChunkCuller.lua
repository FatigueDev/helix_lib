---@meta

---@class ChunkCuller
---@field ray Ray
---@field curpos Vec3i
ChunkCuller = {}

---@param game ClientMain
---@return ChunkCuller
function ChunkCuller.ctor(game) end

function ChunkCuller.CullInvisibleChunks() end

---@return userdata
function ChunkCuller.GetType() end

---@return string
function ChunkCuller.ToString() end

---@param obj userdata
---@return boolean
function ChunkCuller.Equals(obj) end

---@return number
function ChunkCuller.GetHashCode() end


