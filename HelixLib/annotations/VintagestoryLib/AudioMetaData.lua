---@meta

---@class AudioMetaData: AudioData, AudioData
---@field Pcm number
---@field Channels number
---@field Rate number
---@field BitsPerSample number
---@field Asset IAsset
---@field AutoUnload boolean
---@field Loaded number
AudioMetaData = {}

---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioMetaData
function AudioMetaData.ctor(asset) end

function AudioMetaData.Load() end

---@param onCompleted MainThreadAction
---@return number
function AudioMetaData.Load_Async(onCompleted) end

function AudioMetaData.Unload() end

---@return userdata
function AudioMetaData.GetType() end

---@return string
function AudioMetaData.ToString() end

---@param obj userdata
---@return boolean
function AudioMetaData.Equals(obj) end

---@return number
function AudioMetaData.GetHashCode() end


