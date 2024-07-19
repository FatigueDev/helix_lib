---@meta

---@class TrackStarterDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
TrackStarterDelegate = {}

---@param object userdata
---@param method IntPtr
---@return TrackStarterDelegate
function TrackStarterDelegate.ctor(object, method) end

---@param soundLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param priority number
---@param soundType EnumSoundType
---@param onLoaded? function
---@return MusicTrack # Adds a basic music track.
function TrackStarterDelegate.Invoke(soundLocation, priority, soundType, onLoaded) end

---@param soundLocation AssetLocation Defines a complete path to an assets, including it's domain
---@param priority number
---@param soundType EnumSoundType
---@param onLoaded function
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function TrackStarterDelegate.BeginInvoke(soundLocation, priority, soundType, onLoaded, callback, object) end

---@param result IAsyncResult
---@return MusicTrack # Adds a basic music track.
function TrackStarterDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function TrackStarterDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function TrackStarterDelegate.Equals(obj) end

---@return function
function TrackStarterDelegate.GetInvocationList() end

---@return number
function TrackStarterDelegate.GetHashCode() end

---@return userdata
function TrackStarterDelegate.get_Target() end

---@return userdata
function TrackStarterDelegate.Clone() end

---@param args userdata
---@return userdata
function TrackStarterDelegate.DynamicInvoke(args) end

---@return function
function TrackStarterDelegate.get_Method() end

---@return userdata
function TrackStarterDelegate.GetType() end

---@return string
function TrackStarterDelegate.ToString() end


