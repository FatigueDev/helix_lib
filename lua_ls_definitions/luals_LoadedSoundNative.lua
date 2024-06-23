---@meta LoadedSoundNative
---@class LoadedSoundNative: Object
---@field ctor fun(soundParams: SoundParams, sample: AudioMetaData): LoadedSoundNative
---@field get_Params fun(): SoundParams
---@field get_IsDisposed fun(): boolean
---@field get_Channels fun(): number
---@field get_IsPlaying fun(): boolean
---@field get_HasStopped fun(): boolean
---@field get_PlaybackPosition fun(): Single
---@field set_PlaybackPosition fun(value: Single): nil
---@field get_SoundLengthSeconds fun(): Single
---@field get_IsFadingIn fun(): boolean
---@field get_IsFadingOut fun(): boolean
---@field ChangeOutputDevice fun(changeCallback: Action): nil
---@field SetPosition fun(x: Single, y: Single, z: Single): nil
---@overload fun(position: Vec3f): nil
---@field SetPitch fun(val: Single): nil
---@field SetPitchOffset fun(val: Single): nil
---@field SetVolume fun(): nil
---@overload fun(val: Single): nil
---@field Toggle fun(on: boolean): nil
---@field Start fun(): nil
---@field Stop fun(): nil
---@field Pause fun(): nil
---@field Dispose fun(): nil
---@field FadeTo fun(newVolume: Double, duration: Single, onFaded: any`1): nil
---@field FadeOut fun(duration: Single, onFadedOut: any`1): nil
---@field FadeIn fun(duration: Single, onFadedIn: any`1): nil
---@field FadeOutAndStop fun(duration: Single): nil
---@field SetLooping fun(on: boolean): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Params SoundParams
---@field IsDisposed SoundParams
---@field Channels SoundParams
---@field IsPlaying SoundParams
---@field HasStopped SoundParams
---@field PlaybackPosition SoundParams
---@field SoundLengthSeconds SoundParams
---@field IsFadingIn SoundParams
---@field IsFadingOut SoundParams
LoadedSoundNative = {}
