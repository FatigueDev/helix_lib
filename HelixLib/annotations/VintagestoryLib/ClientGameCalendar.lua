---@meta

---@class ClientGameCalendar: GameCalendar, GameCalendar, IClientGameCalendar, IGameCalendar
---@field DayLightStrength number
---@field MoonLightStrength number
---@field SunLightStrength number
---@field SunColor Vec3f
---@field ReflectColor Vec3f
---@field SunLightColor Color
---@field TimeSpeedModifiers table
---@field SpeedOfTime number
---@field CalendarSpeedMul number
---@field Timelapse number
---@field DaysPerMonth number
---@field DaysPerYear number
---@field DayOfMonth number
---@field MonthsPerYear number
---@field FullHourOfDay number
---@field HourOfDay number
---@field ElapsedSeconds number
---@field ElapsedHours number
---@field ElapsedDays number
---@field TotalSeconds number
---@field TotalHours number
---@field TotalDays number
---@field DayOfYear number
---@field DayOfYearf number
---@field Year number
---@field Month number
---@field Monthf number
---@field MonthName EnumMonth
---@field YearRel number
---@field MoonPhase EnumMoonPhase
---@field MoonPhaseExact number
---@field Dusk boolean
---@field MoonPhaseBrightness number
---@field MoonSize number
---@field SunsetMod number
---@field IsRunning boolean
---@field OnGetSolarSphericalCoords SolarSphericalCoordsDelegate
---@field OnGetHemisphere HemisphereDelegate
---@field OnGetLatitude GetLatitudeDelegate
---@field SeasonOverride Nullable`1
---@field SunPosition Vec3f
---@field MoonPosition Vec3f
---@field SunPositionNormalized Vec3f
---@field ClientCalendarStartingSeconds number
---@field HoursPerDay number
---@field MoonOrbitDays number
---@field DayLengthInRealLifeSeconds number
---@field LastIngameSecond number
---@field sunLightTextureSize Size2i
---@field sunLightTexture number
ClientGameCalendar = {}


---@return number
function ClientGameCalendar.get_DayLightStrength() end

---@param value number
function ClientGameCalendar.set_DayLightStrength(value) end

---@return number
function ClientGameCalendar.get_MoonLightStrength() end

---@param value number
function ClientGameCalendar.set_MoonLightStrength(value) end

---@return number
function ClientGameCalendar.get_SunLightStrength() end

---@param value number
function ClientGameCalendar.set_SunLightStrength(value) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ClientGameCalendar.get_SunColor() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ClientGameCalendar.get_ReflectColor() end

---@return Color
function ClientGameCalendar.get_SunLightColor() end

function ClientGameCalendar.Update() end

---@return table
function ClientGameCalendar.get_TimeSpeedModifiers() end

---@param value table
function ClientGameCalendar.set_TimeSpeedModifiers(value) end

---@return number
function ClientGameCalendar.get_SpeedOfTime() end

---@return number
function ClientGameCalendar.get_CalendarSpeedMul() end

---@param value number
function ClientGameCalendar.set_CalendarSpeedMul(value) end

---@return number
function ClientGameCalendar.get_Timelapse() end

---@param value number
function ClientGameCalendar.set_Timelapse(value) end

---@return number
function ClientGameCalendar.get_DaysPerMonth() end

---@param value number
function ClientGameCalendar.set_DaysPerMonth(value) end

---@return number
function ClientGameCalendar.get_DaysPerYear() end

---@return number
function ClientGameCalendar.get_DayOfMonth() end

---@return number
function ClientGameCalendar.get_MonthsPerYear() end

---@return number
function ClientGameCalendar.get_FullHourOfDay() end

---@return number
function ClientGameCalendar.get_HourOfDay() end

---@return number
function ClientGameCalendar.get_ElapsedSeconds() end

---@return number
function ClientGameCalendar.get_ElapsedHours() end

---@return number
function ClientGameCalendar.get_ElapsedDays() end

---@return number
function ClientGameCalendar.get_TotalSeconds() end

---@return number
function ClientGameCalendar.get_TotalHours() end

---@return number
function ClientGameCalendar.get_TotalDays() end

---@return number
function ClientGameCalendar.get_DayOfYear() end

---@return number
function ClientGameCalendar.get_DayOfYearf() end

---@return number
function ClientGameCalendar.get_Year() end

---@return number
function ClientGameCalendar.get_Month() end

---@return number
function ClientGameCalendar.get_Monthf() end

---@return EnumMonth
function ClientGameCalendar.get_MonthName() end

---@return number
function ClientGameCalendar.get_YearRel() end

---@return EnumMoonPhase
function ClientGameCalendar.get_MoonPhase() end

---@return number
function ClientGameCalendar.get_MoonPhaseExact() end

---@return boolean
function ClientGameCalendar.get_Dusk() end

---@return number
function ClientGameCalendar.get_MoonPhaseBrightness() end

---@return number
function ClientGameCalendar.get_MoonSize() end

---@return number
function ClientGameCalendar.get_SunsetMod() end

---@return boolean
function ClientGameCalendar.get_IsRunning() end

---@return SolarSphericalCoordsDelegate # Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
function ClientGameCalendar.get_OnGetSolarSphericalCoords() end

---@param value SolarSphericalCoordsDelegate Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
function ClientGameCalendar.set_OnGetSolarSphericalCoords(value) end

---@return HemisphereDelegate
function ClientGameCalendar.get_OnGetHemisphere() end

---@param value HemisphereDelegate
function ClientGameCalendar.set_OnGetHemisphere(value) end

---@return GetLatitudeDelegate
function ClientGameCalendar.get_OnGetLatitude() end

---@param value GetLatitudeDelegate
function ClientGameCalendar.set_OnGetLatitude(value) end

---@return Nullable`1
function ClientGameCalendar.get_SeasonOverride() end

---@param value Nullable`1
function ClientGameCalendar.set_SeasonOverride(value) end

---@param seconds number
---@return number
function ClientGameCalendar.RealSecondsToGameSeconds(seconds) end

---@param seasonRel Nullable`1
function ClientGameCalendar.SetSeasonOverride(seasonRel) end

---@param name string
---@param speed number
function ClientGameCalendar.SetTimeSpeedModifier(name, speed) end

---@param name string
function ClientGameCalendar.RemoveTimeSpeedModifier(name) end

---@param totalSecondsNow number
---@param totalSecondsStart number
function ClientGameCalendar.SetTotalSeconds(totalSecondsNow, totalSecondsStart) end

function ClientGameCalendar.Start() end

function ClientGameCalendar.Stop() end

function ClientGameCalendar.Tick() end

---@param wantHourOfDay number
function ClientGameCalendar.SetDayTime(wantHourOfDay) end

---@param month number
function ClientGameCalendar.SetMonth(month) end

---@param hours number
function ClientGameCalendar.Add(hours) end

---@param x number
---@param z number
---@return number
function ClientGameCalendar.GetDayLightStrength(x, z) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function ClientGameCalendar.GetDayLightStrength(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EnumSeason
function ClientGameCalendar.GetSeason(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function ClientGameCalendar.GetSeasonRel(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EnumHemisphere
function ClientGameCalendar.GetHemisphere(pos) end

---@param relx number
---@param rely number
---@return Color
function ClientGameCalendar.getSunlightPixelRel(relx, rely) end

---@return Packet_Server
function ClientGameCalendar.ToPacket() end

---@return string
function ClientGameCalendar.PrettyDate() end

---@param packet Packet_Server
function ClientGameCalendar.UpdateFromPacket(packet) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return BitmapRef
function ClientGameCalendar.BitmapCreateFromPng(asset) end

---@return userdata
function ClientGameCalendar.GetType() end

---@return string
function ClientGameCalendar.ToString() end

---@param obj userdata
---@return boolean
function ClientGameCalendar.Equals(obj) end

---@return number
function ClientGameCalendar.GetHashCode() end


