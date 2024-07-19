---@meta

---@class ScreenshotLocationMetaData
---@field Type string
---@field Pos Vec3d
---@field RollYawPitch Vec3f
---@field WorldSeed number
---@field WorldConfig string
ScreenshotLocationMetaData = {}

---@return ScreenshotLocationMetaData
function ScreenshotLocationMetaData.ctor() end

---@return userdata
function ScreenshotLocationMetaData.GetType() end

---@return string
function ScreenshotLocationMetaData.ToString() end

---@param obj userdata
---@return boolean
function ScreenshotLocationMetaData.Equals(obj) end

---@return number
function ScreenshotLocationMetaData.GetHashCode() end


