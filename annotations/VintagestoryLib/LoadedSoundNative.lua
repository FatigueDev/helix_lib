---@meta

---@class LoadedSoundNative:  IDisposable, ILoadedSound
---@field Params SoundParams
---@field IsDisposed boolean
---@field Channels number
---@field IsPlaying boolean
---@field HasStopped boolean
---@field PlaybackPosition number
---@field SoundLengthSeconds number
---@field IsFadingIn boolean
---@field IsFadingOut boolean
LoadedSoundNative = {}

---@param soundParams SoundParams The sound paramaters used for loading sounds on the client side
---@param sample AudioMetaData
---@return LoadedSoundNative
function LoadedSoundNative.ctor(soundParams, sample) end

---@return SoundParams # The sound paramaters used for loading sounds on the client side
function LoadedSoundNative.get_Params() end

---@return boolean
function LoadedSoundNative.get_IsDisposed() end

---@return number
function LoadedSoundNative.get_Channels() end

---@return boolean
function LoadedSoundNative.get_IsPlaying() end

---@return boolean
function LoadedSoundNative.get_HasStopped() end

---@return number
function LoadedSoundNative.get_PlaybackPosition() end

---@param value number
function LoadedSoundNative.set_PlaybackPosition(value) end

---@return number
function LoadedSoundNative.get_SoundLengthSeconds() end

---@return boolean
function LoadedSoundNative.get_IsFadingIn() end

---@return boolean
function LoadedSoundNative.get_IsFadingOut() end

---@param changeCallback function
function LoadedSoundNative.ChangeOutputDevice(changeCallback) end

---@param x number
---@param y number
---@param z number
function LoadedSoundNative.SetPosition(x, y, z) end

---@param position Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function LoadedSoundNative.SetPosition(position) end

---@param val number
function LoadedSoundNative.SetPitch(val) end

---@param val number
function LoadedSoundNative.SetPitchOffset(val) end

function LoadedSoundNative.SetVolume() end

---@param val number
function LoadedSoundNative.SetVolume(val) end

---@param on boolean
function LoadedSoundNative.Toggle(on) end

function LoadedSoundNative.Start() end

function LoadedSoundNative.Stop() end

function LoadedSoundNative.Pause() end

function LoadedSoundNative.Dispose() end

---@param newVolume number
---@param duration number
---@param onFaded function
function LoadedSoundNative.FadeTo(newVolume, duration, onFaded) end

---@param duration number
---@param onFadedOut function
function LoadedSoundNative.FadeOut(duration, onFadedOut) end

---@param duration number
---@param onFadedIn function
function LoadedSoundNative.FadeIn(duration, onFadedIn) end

---@param duration number
function LoadedSoundNative.FadeOutAndStop(duration) end

---@param on boolean
function LoadedSoundNative.SetLooping(on) end

---@return userdata
function LoadedSoundNative.GetType() end

---@return string
function LoadedSoundNative.ToString() end

---@param obj userdata
---@return boolean
function LoadedSoundNative.Equals(obj) end

---@return number
function LoadedSoundNative.GetHashCode() end


