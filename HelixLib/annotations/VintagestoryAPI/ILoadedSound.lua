---@meta

-- Represents a loaded game sound 
---@class ILoadedSound:  IDisposable
---@field SoundLengthSeconds number Length of the sound in seconds
---@field PlaybackPosition number Get the current playback position or set it (in seconds)
---@field IsDisposed boolean Is the sound disposed of?
---@field IsPlaying boolean Is sound currently playing
---@field IsFadingIn boolean True if the track is fading to a higher volume
---@field IsFadingOut boolean True if the track is fading to a lower volume
---@field HasStopped boolean Is the sound finished with playing? (false when only paused)
---@field Channels number Amount of audio channels this sound has
---@field Params SoundParams The params the sound was created with.
ILoadedSound = {}


---@return number
function ILoadedSound.get_SoundLengthSeconds() end

---@return number
function ILoadedSound.get_PlaybackPosition() end

---@param value number
function ILoadedSound.set_PlaybackPosition(value) end

---@return boolean
function ILoadedSound.get_IsDisposed() end

---@return boolean
function ILoadedSound.get_IsPlaying() end

---@return boolean
function ILoadedSound.get_IsFadingIn() end

---@return boolean
function ILoadedSound.get_IsFadingOut() end

---@return boolean
function ILoadedSound.get_HasStopped() end

---@return number
function ILoadedSound.get_Channels() end

---@return SoundParams # The sound paramaters used for loading sounds on the client side
function ILoadedSound.get_Params() end

-- Starts the sound
function ILoadedSound.Start() end

-- Stops the sound
function ILoadedSound.Stop() end

-- Pauses the sound
function ILoadedSound.Pause() end

-- True for Starting, False for Stopping the sound
---@param on boolean
function ILoadedSound.Toggle(on) end

-- Allows you to modify the pitch of the sound. May also be called while the sound is currently playing.
---@param val number
function ILoadedSound.SetPitch(val) end

-- Allows you to modify the pitch of the sound. May also be called while the sound is currently playing. This value is added together with the normal pitch level. This method is currently used to distort sound during low temporal stability
---@param val number
function ILoadedSound.SetPitchOffset(val) end

-- Allows you to modify the volumne of the sound. May also be called while the sound is currently playing.
---@param val number
function ILoadedSound.SetVolume(val) end

-- Sets the current volumne again. Use this to update the sounds volumne after the global sound level has changed
function ILoadedSound.SetVolume() end

-- Sets the position from where the sound is originating from
---@param position Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ILoadedSound.SetPosition(position) end

---@param x number
---@param y number
---@param z number
function ILoadedSound.SetPosition(x, y, z) end

---@param on boolean
function ILoadedSound.SetLooping(on) end

-- Fades the sounds volumne to given value
---@param newVolume number
---@param duration number
---@param onFaded function
function ILoadedSound.FadeTo(newVolume, duration, onFaded) end

-- Causes the sound to fade out
---@param seconds number
---@param onFadedOut function
function ILoadedSound.FadeOut(seconds, onFadedOut) end

-- Causes the sound to fade in
---@param seconds number
---@param onFadedIn function
function ILoadedSound.FadeIn(seconds, onFadedIn) end

-- Causes the sound to fade out and stop the track
---@param seconds number
function ILoadedSound.FadeOutAndStop(seconds) end


