---@meta

---@class TagItem
---@field ByteCount number
---@field TagId ExifTagId
---@field TagType ExifTagType
---@field ValueCount number
---@field ValueData number
---@field ValueIndex number
---@field AllocatedByteCount number
---@field OriginalDataOffset number
TagItem = {}

---@param TagSpec ExifTag
---@param _TagType ExifTagType
---@param _ValueCount number
---@return TagItem
function TagItem.ctor(TagSpec, _TagType, _ValueCount) end
---@param _TagId ExifTagId
---@param _TagType ExifTagType
---@param _ValueCount number
---@return TagItem
function TagItem.ctor(_TagId, _TagType, _ValueCount) end
---@param _TagId ExifTagId
---@param _TagType ExifTagType
---@param _ValueCount number
---@param _ValueArray number
---@param _ValueIndex number
---@param _AllocatedByteCount number
---@param _OriginalDataOffset? number
---@return TagItem
function TagItem.ctor(_TagId, _TagType, _ValueCount, _ValueArray, _ValueIndex, _AllocatedByteCount, _OriginalDataOffset) end

---@return number
function TagItem.get_ByteCount() end

---@param RequiredByteCount number
---@return number
function TagItem.AllocTagMemory(RequiredByteCount) end

---@param _TagType ExifTagType
---@param _ValueCount number
---@param KeepExistingData boolean
function TagItem.SetTagTypeAndValueCount(_TagType, _ValueCount, KeepExistingData) end

---@return userdata
function TagItem.GetType() end

---@return string
function TagItem.ToString() end

---@param obj userdata
---@return boolean
function TagItem.Equals(obj) end

---@return number
function TagItem.GetHashCode() end


