---@meta

---@class ClientMapChunk:  IMapChunk
---@field TopRockIdMap number
---@field YMax number
---@field CaveHeightDistort number
---@field SedimentaryThicknessMap number
---@field SnowAccum ConcurrentDictionary`2
ClientMapChunk = {}

---@return ClientMapChunk
function ClientMapChunk.ctor() end

---@return number
function ClientMapChunk.get_TopRockIdMap() end

---@return number
function ClientMapChunk.get_YMax() end

---@param value number
function ClientMapChunk.set_YMax(value) end

---@return number
function ClientMapChunk.get_CaveHeightDistort() end

---@param value number
function ClientMapChunk.set_CaveHeightDistort(value) end

---@return number
function ClientMapChunk.get_SedimentaryThicknessMap() end

---@return ConcurrentDictionary`2
function ClientMapChunk.get_SnowAccum() end

---@param key string
---@param data number
function ClientMapChunk.SetData(key, data) end

---@param key string
---@return number
function ClientMapChunk.GetData(key) end

function ClientMapChunk.MarkFresh() end

function ClientMapChunk.MarkDirty() end

---@param key string
---@param data number
function ClientMapChunk.SetModdata(key, data) end

---@param key string
function ClientMapChunk.RemoveModdata(key) end

---@param key string
---@return number
function ClientMapChunk.GetModdata(key) end

---@param key string
---@param data T
function ClientMapChunk.SetModdata(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ClientMapChunk.GetModdata(key, defaultValue) end

---@return userdata
function ClientMapChunk.GetType() end

---@return string
function ClientMapChunk.ToString() end

---@param obj userdata
---@return boolean
function ClientMapChunk.Equals(obj) end

---@return number
function ClientMapChunk.GetHashCode() end


