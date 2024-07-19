---@meta

---@class AudioOpenAl:  IDisposable
---@field Devices IList`1
---@field CurrentDevice string
---@field d_GameExit GameExit
---@field UseHrtf boolean
---@field AL_REMIX_UNMATCHED_SOFT number
---@field AL_DIRECT_CHANNELS_SOFT number
AudioOpenAl = {}

---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return AudioOpenAl
function AudioOpenAl.ctor(logger) end

---@return IList`1
function AudioOpenAl.get_Devices() end

---@return string
function AudioOpenAl.get_CurrentDevice() end

function AudioOpenAl.Dispose() end

---@param str string
function AudioOpenAl.CheckALError(str) end

---@param stream Stream
---@param channels number
---@param bits number
---@param rate number
---@return number
function AudioOpenAl.LoadWave(stream, channels, bits, rate) end

---@param channels number
---@param bits number
---@return ALFormat
function AudioOpenAl.GetSoundFormat(channels, bits) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioMetaData
function AudioOpenAl.GetSampleFromArray(asset) end

---@param position Vector3
---@param orientation Vector3
function AudioOpenAl.UpdateListener(position, orientation) end

---@return userdata
function AudioOpenAl.GetType() end

---@return string
function AudioOpenAl.ToString() end

---@param obj userdata
---@return boolean
function AudioOpenAl.Equals(obj) end

---@return number
function AudioOpenAl.GetHashCode() end


