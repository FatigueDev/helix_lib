---@meta

---@class StackConverter
StackConverter = {}


---@param fromPacket Packet_ItemStack
---@param resolver IWorldAccessor Important interface to access the game world.
---@return ItemStack
function StackConverter.FromPacket(fromPacket, resolver) end

---@param stack ItemStack
---@return Packet_ItemStack
function StackConverter.ToPacket(stack) end

---@return userdata
function StackConverter.GetType() end

---@return string
function StackConverter.ToString() end

---@param obj userdata
---@return boolean
function StackConverter.Equals(obj) end

---@return number
function StackConverter.GetHashCode() end


