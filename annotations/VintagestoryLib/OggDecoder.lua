---@meta

---@class OggDecoder
OggDecoder = {}

---@return OggDecoder
function OggDecoder.ctor() end

---@param ogg Stream
---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioMetaData
function OggDecoder.OggToWav(ogg, asset) end

---@return userdata
function OggDecoder.GetType() end

---@return string
function OggDecoder.ToString() end

---@param obj userdata
---@return boolean
function OggDecoder.Equals(obj) end

---@return number
function OggDecoder.GetHashCode() end


