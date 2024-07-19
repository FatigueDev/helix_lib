---@meta

---@class IClientGameCalendar:  IGameCalendar
---@field SunPositionNormalized Vec3f Returns a normalized vector of the sun position at the players current location
---@field SunPosition Vec3f Returns a vector of the sun position at the players current location
---@field MoonPosition Vec3f Returns a vector of the moon position at the players current location
---@field SunColor Vec3f Returns a normalized color of the sun at the players current location
---@field ReflectColor Vec3f
---@field SunsetMod number A horizontal offset that is applied when reading the sky glow color at the players current location. Creates a greater variety of sunsets. Changes to a different value once per day (during midnight)
---@field DayLightStrength number Returns a value between 0 (no sunlight) and 1 (full sunlight) at the players current location
---@field MoonLightStrength number Returns a value between 0 (no sunlight) and 1 (full sunlight) at the players current location
---@field SunLightStrength number
---@field Dusk boolean If true, its currently dusk at the players current location
IClientGameCalendar = {}


---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IClientGameCalendar.get_SunPositionNormalized() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IClientGameCalendar.get_SunPosition() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IClientGameCalendar.get_MoonPosition() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IClientGameCalendar.get_SunColor() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IClientGameCalendar.get_ReflectColor() end

---@return number
function IClientGameCalendar.get_SunsetMod() end

---@return number
function IClientGameCalendar.get_DayLightStrength() end

---@return number
function IClientGameCalendar.get_MoonLightStrength() end

---@return number
function IClientGameCalendar.get_SunLightStrength() end

---@return boolean
function IClientGameCalendar.get_Dusk() end


