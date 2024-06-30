---@meta

---@class GameCalendar:  IGameCalendar
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
---@field HoursPerDay number
---@field MoonOrbitDays number
---@field DayLengthInRealLifeSeconds number
---@field LastIngameSecond number
---@field sunLightTextureSize Size2i
---@field sunLightTexture number
---@field MoonBrightnesByPhase number
---@field MoonSizeByPhase number
GameCalendar = {}


---@return table
function GameCalendar.get_TimeSpeedModifiers() end

---@param value table
function GameCalendar.set_TimeSpeedModifiers(value) end

---@return number
function GameCalendar.get_SpeedOfTime() end

---@return number
function GameCalendar.get_CalendarSpeedMul() end

---@param value number
function GameCalendar.set_CalendarSpeedMul(value) end

---@return number
function GameCalendar.get_Timelapse() end

---@param value number
function GameCalendar.set_Timelapse(value) end

---@return number
function GameCalendar.get_DaysPerMonth() end

---@param value number
function GameCalendar.set_DaysPerMonth(value) end

---@return number
function GameCalendar.get_DaysPerYear() end

---@return number
function GameCalendar.get_DayOfMonth() end

---@return number
function GameCalendar.get_MonthsPerYear() end

---@return number
function GameCalendar.get_FullHourOfDay() end

---@return number
function GameCalendar.get_HourOfDay() end

---@return number
function GameCalendar.get_ElapsedSeconds() end

---@return number
function GameCalendar.get_ElapsedHours() end

---@return number
function GameCalendar.get_ElapsedDays() end

---@return number
function GameCalendar.get_TotalSeconds() end

---@return number
function GameCalendar.get_TotalHours() end

---@return number
function GameCalendar.get_TotalDays() end

---@return number
function GameCalendar.get_DayOfYear() end

---@return number
function GameCalendar.get_DayOfYearf() end

---@return number
function GameCalendar.get_Year() end

---@return number
function GameCalendar.get_Month() end

---@return number
function GameCalendar.get_Monthf() end

---@return EnumMonth
function GameCalendar.get_MonthName() end

---@return number
function GameCalendar.get_YearRel() end

---@return EnumMoonPhase
function GameCalendar.get_MoonPhase() end

---@return number
function GameCalendar.get_MoonPhaseExact() end

---@return boolean
function GameCalendar.get_Dusk() end

---@return number
function GameCalendar.get_MoonPhaseBrightness() end

---@return number
function GameCalendar.get_MoonSize() end

---@return number
function GameCalendar.get_SunsetMod() end

---@return boolean
function GameCalendar.get_IsRunning() end

---@return SolarSphericalCoordsDelegate # Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
function GameCalendar.get_OnGetSolarSphericalCoords() end

---@param value SolarSphericalCoordsDelegate Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
function GameCalendar.set_OnGetSolarSphericalCoords(value) end

---@return HemisphereDelegate
function GameCalendar.get_OnGetHemisphere() end

---@param value HemisphereDelegate
function GameCalendar.set_OnGetHemisphere(value) end

---@return GetLatitudeDelegate
function GameCalendar.get_OnGetLatitude() end

---@param value GetLatitudeDelegate
function GameCalendar.set_OnGetLatitude(value) end

---@return Nullable`1
function GameCalendar.get_SeasonOverride() end

---@param value Nullable`1
function GameCalendar.set_SeasonOverride(value) end

---@param seconds number
---@return number
function GameCalendar.RealSecondsToGameSeconds(seconds) end

---@param seasonRel Nullable`1
function GameCalendar.SetSeasonOverride(seasonRel) end

---@param name string
---@param speed number
function GameCalendar.SetTimeSpeedModifier(name, speed) end

---@param name string
function GameCalendar.RemoveTimeSpeedModifier(name) end

---@param totalSecondsNow number
---@param totalSecondsStart number
function GameCalendar.SetTotalSeconds(totalSecondsNow, totalSecondsStart) end

function GameCalendar.Start() end

function GameCalendar.Stop() end

function GameCalendar.Tick() end

function GameCalendar.Update() end

---@param wantHourOfDay number
function GameCalendar.SetDayTime(wantHourOfDay) end

---@param month number
function GameCalendar.SetMonth(month) end

---@param hours number
function GameCalendar.Add(hours) end

---@param x number
---@param z number
---@return number
function GameCalendar.GetDayLightStrength(x, z) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function GameCalendar.GetDayLightStrength(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EnumSeason
function GameCalendar.GetSeason(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function GameCalendar.GetSeasonRel(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EnumHemisphere
function GameCalendar.GetHemisphere(pos) end

---@param relx number
---@param rely number
---@return Color
function GameCalendar.getSunlightPixelRel(relx, rely) end

---@return Packet_Server
function GameCalendar.ToPacket() end

---@return string
function GameCalendar.PrettyDate() end

---@param packet Packet_Server
function GameCalendar.UpdateFromPacket(packet) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return BitmapRef
function GameCalendar.BitmapCreateFromPng(asset) end

---@return userdata
function GameCalendar.GetType() end

---@return string
function GameCalendar.ToString() end

---@param obj userdata
---@return boolean
function GameCalendar.Equals(obj) end

---@return number
function GameCalendar.GetHashCode() end


