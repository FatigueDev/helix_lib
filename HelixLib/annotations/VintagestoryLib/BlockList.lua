---@meta

---@class BlockList:  IEnumerable
---@field BlocksFast Block[]
---@field Item Block
---@field Count number
---@field IsReadOnly boolean
BlockList = {}

---@param game GameMain
---@param initialSize? number
---@return BlockList
function BlockList.ctor(game, initialSize) end
---@param game GameMain
---@param fromBlocks Block[] Basic class for a placeable block
---@return BlockList
function BlockList.ctor(game, fromBlocks) end

---@return Block[] # Basic class for a placeable block
function BlockList.get_BlocksFast() end

---@param index number
---@return Block # Basic class for a placeable block
function BlockList.get_Item(index) end

---@param index number
---@param value Block Basic class for a placeable block
function BlockList.set_Item(index, value) end

---@return number
function BlockList.get_Count() end

---@return boolean
function BlockList.get_IsReadOnly() end

---@param count number
function BlockList.PreAlloc(count) end

---@param block Block Basic class for a placeable block
function BlockList.Add(block) end

function BlockList.Clear() end

---@param item Block Basic class for a placeable block
---@return boolean
function BlockList.Contains(item) end

---@param array Block[] Basic class for a placeable block
---@param arrayIndex number
function BlockList.CopyTo(array, arrayIndex) end

---@return function
function BlockList.GetEnumerator() end

---@param item Block Basic class for a placeable block
---@return number
function BlockList.IndexOf(item) end

---@param index number
---@param item Block Basic class for a placeable block
function BlockList.Insert(index, item) end

---@param item Block Basic class for a placeable block
---@return boolean
function BlockList.Remove(item) end

---@param index number
function BlockList.RemoveAt(index) end

---@param id number
---@param Api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return Block # Basic class for a placeable block
function BlockList.getNoBlock(id, Api) end

---@return userdata
function BlockList.GetType() end

---@return string
function BlockList.ToString() end

---@param obj userdata
---@return boolean
function BlockList.Equals(obj) end

---@return number
function BlockList.GetHashCode() end


