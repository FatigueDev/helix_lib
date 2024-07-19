---@meta

-- Information about the runningtime environment
---@class RuntimeEnv
---@field DebugTextureDispose boolean If TEXTURE_DEBUG_DISPOSE is set, the initial value set here will be overridden
---@field DebugVAODispose boolean If VAO_DEBUG_DISPOSE is set, the initial value set here will be overridden
---@field DebugSoundDispose boolean Debug sound memory leaks. No ENV var
---@field DebugOutOfRangeBlockAccess boolean If true, will print the stack trace on some of the blockaccessor if something attempts to get or set blocks outside of its available chunks
---@field DebugThreadPool boolean If true, will print allocation trace whenever a new task was enqueued to the thread pool
---@field MainThreadId number
---@field ServerMainThreadId number
---@field GUIScale number
---@field OS OS The current operating system
---@field EnvSearchPathName string The Env variable which contains the OS specific search paths for libarires
---@field IsDevEnvironment boolean Whether we are in a dev environment or not
RuntimeEnv = {}


---@return string
function RuntimeEnv.GetLocalIpAddress() end

---@return string
function RuntimeEnv.GetOsString() end

---@return userdata
function RuntimeEnv.GetType() end

---@return string
function RuntimeEnv.ToString() end

---@param obj userdata
---@return boolean
function RuntimeEnv.Equals(obj) end

---@return number
function RuntimeEnv.GetHashCode() end


