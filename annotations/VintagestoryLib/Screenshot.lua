---@meta

---@class Screenshot
---@field d_GameWindow GameWindow
Screenshot = {}

---@return Screenshot
function Screenshot.ctor() end

---@param platform ClientPlatformAbstract
---@param size Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param path? string
---@param filename? string
---@param withAlpha? boolean
---@param flip? boolean
---@param metadataStr? string
---@return string
function Screenshot.SaveScreenshot(platform, size, path, filename, withAlpha, flip, metadataStr) end

---@param size Size2i Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
---@param scaleScreenshot boolean
---@param flip boolean
---@param withAlpha boolean
---@return SKBitmap
function Screenshot.GrabScreenshot(size, scaleScreenshot, flip, withAlpha) end

---@return userdata
function Screenshot.GetType() end

---@return string
function Screenshot.ToString() end

---@param obj userdata
---@return boolean
function Screenshot.Equals(obj) end

---@return number
function Screenshot.GetHashCode() end


