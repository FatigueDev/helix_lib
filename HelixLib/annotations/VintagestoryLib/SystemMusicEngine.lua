---@meta

---@class SystemMusicEngine: ClientSystem, ClientSystem, IMusicEngine
---@field Name string
---@field CurrentActive boolean
---@field CurrentTrack IMusicTrack
---@field LastPlayedTrack IMusicTrack
---@field MillisecondsSinceLastTrack number
---@field TracksToLoad ConcurrentQueue`1
SystemMusicEngine = {}

---@param game ClientMain
---@param token CancellationToken
---@return SystemMusicEngine
function SystemMusicEngine.ctor(game, token) end

---@return string
function SystemMusicEngine.get_Name() end

---@return boolean
function SystemMusicEngine.get_CurrentActive() end

---@return IMusicTrack
function SystemMusicEngine.get_CurrentTrack() end

---@return IMusicTrack
function SystemMusicEngine.get_LastPlayedTrack() end

---@return number
function SystemMusicEngine.get_MillisecondsSinceLastTrack() end

function SystemMusicEngine.OnBlockTexturesLoaded() end

---@param soundLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param priority number
---@param soundType EnumSoundType
---@param onLoaded? function
---@return MusicTrack # Adds a basic music track.
function SystemMusicEngine.StartTrack(soundLocation, priority, soundType, onLoaded) end

---@param location AssetLocation Defines a complete path to an assets, including it's domain
---@param onLoaded function
---@param volume? number
---@param pitch? number
function SystemMusicEngine.LoadTrack(location, onLoaded, volume, pitch) end

---@return EnumClientSystemType
function SystemMusicEngine.GetSystemType() end

---@param musicTrack IMusicTrack
function SystemMusicEngine.StopTrack(musicTrack) end

---@param deltaTime number
function SystemMusicEngine.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemMusicEngine.OnKeyDown(args) end

---@param args KeyEvent
function SystemMusicEngine.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemMusicEngine.OnMouseUp(args) end

---@param args KeyEvent
function SystemMusicEngine.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemMusicEngine.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemMusicEngine.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemMusicEngine.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemMusicEngine.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemMusicEngine.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemMusicEngine.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemMusicEngine.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemMusicEngine.OnHitEntity(e) end

function SystemMusicEngine.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemMusicEngine.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemMusicEngine.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemMusicEngine.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemMusicEngine.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemMusicEngine.OnMouseClickSlot(itemSlot) end

function SystemMusicEngine.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemMusicEngine.Dispose(game) end

---@return boolean
function SystemMusicEngine.CaptureAllInputs() end

---@return boolean
function SystemMusicEngine.CaptureRawMouse() end

---@return userdata
function SystemMusicEngine.GetType() end

---@return string
function SystemMusicEngine.ToString() end

---@param obj userdata
---@return boolean
function SystemMusicEngine.Equals(obj) end

---@return number
function SystemMusicEngine.GetHashCode() end


