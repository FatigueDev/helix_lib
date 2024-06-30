---@meta

---@class CreativeTabAndStackList
---@field Tabs string
---@field Stacks JsonItemStack[]
CreativeTabAndStackList = {}

---@return CreativeTabAndStackList
function CreativeTabAndStackList.ctor() end

-- Reads the blocks and items from the Json files and converts them to an array of tabs which contain those blocks and items.
---@param reader BinaryReader
---@param registry IClassRegistryAPI Interface for creating instances
function CreativeTabAndStackList.FromBytes(reader, registry) end

-- Writes all the data to the BinaryWriter.
---@param writer BinaryWriter
---@param registry IClassRegistryAPI Interface for creating instances
function CreativeTabAndStackList.ToBytes(writer, registry) end

---@return userdata
function CreativeTabAndStackList.GetType() end

---@return string
function CreativeTabAndStackList.ToString() end

---@param obj userdata
---@return boolean
function CreativeTabAndStackList.Equals(obj) end

---@return number
function CreativeTabAndStackList.GetHashCode() end


