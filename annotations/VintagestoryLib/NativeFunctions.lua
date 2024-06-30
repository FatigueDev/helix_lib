---@meta

---@class NativeFunctions
---@field StdHandle nil
---@field ConsoleMode nil
NativeFunctions = {}


---@param nStdHandle number
---@return IntPtr
function NativeFunctions.GetStdHandle(nStdHandle) end

---@param hConsoleHandle IntPtr
---@param lpMode number
---@return boolean
function NativeFunctions.GetConsoleMode(hConsoleHandle, lpMode) end

---@param hConsoleHandle IntPtr
---@param dwMode number
---@return boolean
function NativeFunctions.SetConsoleMode(hConsoleHandle, dwMode) end

---@return userdata
function NativeFunctions.GetType() end

---@return string
function NativeFunctions.ToString() end

---@param obj userdata
---@return boolean
function NativeFunctions.Equals(obj) end

---@return number
function NativeFunctions.GetHashCode() end


