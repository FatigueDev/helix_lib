---@meta

-- The sound paramaters used for loading sounds on the client side
---@class SoundParams
---@field Volume number The sounds initial volumne (0f - 1f)
---@field Location AssetLocation The specific sound to be played
---@field Position Vec3f The position of the sound
---@field RelativePosition boolean If true then Position is added relative to the players current position
---@field ShouldLoop boolean If the sound should start again when finished
---@field DisposeOnFinish boolean Probably want to set this to false on looping sounds. But remember to dispose it yourself when you no longer need it
---@field Pitch number The sounds intial pitch. 
---@field ReferenceDistance number The range in which the sound does not attenuate at all
---@field Range number The sounds initial range (default is 32)
---@field SoundType EnumSoundType Determines whether to apply the music or sound volumne level to the Volume
SoundParams = {}

---@return SoundParams
function SoundParams.ctor() end
---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@return SoundParams
function SoundParams.ctor(location) end

---@return number
function SoundParams.get_Volume() end

---@param value number
function SoundParams.set_Volume(value) end

---@return userdata
function SoundParams.GetType() end

---@return string
function SoundParams.ToString() end

---@param obj userdata
---@return boolean
function SoundParams.Equals(obj) end

---@return number
function SoundParams.GetHashCode() end


