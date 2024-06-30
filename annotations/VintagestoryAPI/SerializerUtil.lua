---@meta

---@class SerializerUtil
---@field ByteWriteDelegatae nil
---@field ByteReadDelegatae nil
SerializerUtil = {}


---@param data T
---@return number
function SerializerUtil.Serialize(data) end

---@param data number
---@return T
function SerializerUtil.Deserialize(data) end

---@param instance T
---@param data number
---@return T
function SerializerUtil.DeserializeInto(instance, data) end

---@param data number
---@param defaultValue T
---@return T
function SerializerUtil.Deserialize(data, defaultValue) end

---@param toWrite number
---@return number
function SerializerUtil.ToBytes(toWrite) end

---@param data number
---@param toRead number
function SerializerUtil.FromBytes(data, toRead) end

---@return userdata
function SerializerUtil.GetType() end

---@return string
function SerializerUtil.ToString() end

---@param obj userdata
---@return boolean
function SerializerUtil.Equals(obj) end

---@return number
function SerializerUtil.GetHashCode() end


