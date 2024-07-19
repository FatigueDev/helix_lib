---@meta

---@class NvidiaGPUFix64
---@field RESULT_NO_CHANGE number
---@field RESULT_CHANGE number
---@field RESULT_ERROR number
NvidiaGPUFix64 = {}


---@param profileName string
---@return boolean
function NvidiaGPUFix64.SOP_CheckProfile(profileName) end

---@param profileName string
---@return number
function NvidiaGPUFix64.SOP_RemoveProfile(profileName) end

---@param profileName string
---@param applicationName string
---@return number
function NvidiaGPUFix64.SOP_SetProfile(profileName, applicationName) end

---@return userdata
function NvidiaGPUFix64.GetType() end

---@return string
function NvidiaGPUFix64.ToString() end

---@param obj userdata
---@return boolean
function NvidiaGPUFix64.Equals(obj) end

---@return number
function NvidiaGPUFix64.GetHashCode() end


