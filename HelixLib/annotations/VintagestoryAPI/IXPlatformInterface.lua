---@meta

-- The platform interface for various controls.  Used by the game to handle various properties.
---@class IXPlatformInterface
---@field Window GameWindow
IXPlatformInterface = {}


---@return GameWindow
function IXPlatformInterface.get_Window() end

---@param value GameWindow
function IXPlatformInterface.set_Window(value) end

---@param text string
function IXPlatformInterface.SetClipboardText(text) end

---@return string
function IXPlatformInterface.GetClipboardText() end

---@param title string
---@param text string
function IXPlatformInterface.ShowMessageBox(title, text) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function IXPlatformInterface.GetScreenSize() end

---@param recordingBufferSize number
---@param framerate number
---@param codeccode string
---@return IAviWriter
function IXPlatformInterface.GetAviWriter(recordingBufferSize, framerate, codeccode) end

---@return AvailableCodec[]
function IXPlatformInterface.AvailableCodecs() end

---@param filepath string
function IXPlatformInterface.MoveFileToRecyclebin(filepath) end

-- Total disk space in bytes
---@param filepath string
---@return number
function IXPlatformInterface.GetFreeDiskSpace(filepath) end

-- Total system ram in bytes
---@return number
function IXPlatformInterface.GetRamCapacity() end

function IXPlatformInterface.FocusWindow() end


