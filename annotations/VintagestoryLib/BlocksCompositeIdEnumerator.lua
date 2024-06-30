---@meta

---@class BlocksCompositeIdEnumerator:  IDisposable, IEnumerator
---@field Current number
---@field inst ChunkData
BlocksCompositeIdEnumerator = {}

---@param inst ChunkData
---@return BlocksCompositeIdEnumerator
function BlocksCompositeIdEnumerator.ctor(inst) end

---@return number
function BlocksCompositeIdEnumerator.get_Current() end

function BlocksCompositeIdEnumerator.Dispose() end

---@return boolean
function BlocksCompositeIdEnumerator.MoveNext() end

function BlocksCompositeIdEnumerator.Reset() end

---@return userdata
function BlocksCompositeIdEnumerator.GetType() end

---@return string
function BlocksCompositeIdEnumerator.ToString() end

---@param obj userdata
---@return boolean
function BlocksCompositeIdEnumerator.Equals(obj) end

---@return number
function BlocksCompositeIdEnumerator.GetHashCode() end


