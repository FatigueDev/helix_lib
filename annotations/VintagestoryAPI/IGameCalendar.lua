---@meta

-- Main API for retrieving anything calender or astronomy related
---@class IGameCalendar
---@field OnGetHemisphere HemisphereDelegate Assigned by the survival mod. Must return the hemisphere at give location
---@field OnGetSolarSphericalCoords SolarSphericalCoordsDelegate Assigned by the survival mod. The calendar uses this method to determine the solar altitude at given location and time. If not set, the calendar uses a default value of about 0.75
---@field OnGetLatitude GetLatitudeDelegate Assigned by the survival mod. Must return the latitude for given position. If not set, the calendar uses a default value of 0.5 -1 for south pole, 0 for equater, 1 for north pole
---@field SpeedOfTime number This acts as a multiplier on how much faster an ingame second passes by compared to a real life second. Affects physics, like the motion speed of waving grass. The default is 60, hence per default a day lasts 24 minutes, but it's also multiplied by CalendarSpeedMul which is 0.5 by default so the end result is 48 minutes per day This is the sum of all modifiers
---@field ElapsedSeconds number Amount of in-game seconds that have passed since the game started
---@field ElapsedHours number Amount of in-game hours that have passed since the game started
---@field ElapsedDays number Amount of in-game days that have passed since the game started
---@field CalendarSpeedMul number A multiplier thats applied to the progression of the calendar. Set this to 0.1 and a day will last 10 times longer, does not affect physics.
---@field HoursPerDay number Amount of hours per day
---@field DaysPerYear number Amount of days per year
---@field DaysPerMonth number Amount of days per month
---@field Month number
---@field MonthName EnumMonth
---@field FullHourOfDay number The current hour of the day as integer
---@field HourOfDay number The current hour of the day as decimal 
---@field TotalHours number Total passed hours since the game has started
---@field TotalDays number Total passed days since the game has started
---@field DayOfYear number The current day of the year (goes from 0 to DaysPerYear)
---@field DayOfYearf number The current day of the year (goes from 0 to DaysPerYear)
---@field Year number Returns the year. Every game begins with 1386
---@field YearRel number Returns the current season in a value of 0 to 1
---@field MoonPhase EnumMoonPhase The current moonphase
---@field MoonPhaseExact number The current moonphase represented by number from 0..8
---@field MoonPhaseBrightness number The moons current brightness (higher during full moon)
---@field MoonSize number The moons current size (larger during full moon)
---@field SeasonOverride Nullable`1
---@field Timelapse number Can be used to adjust apparent time of day and season for rendering, e.g. to create a series of timelapse images; restore to 0 when done
IGameCalendar = {}


---@return HemisphereDelegate
function IGameCalendar.get_OnGetHemisphere() end

---@param value HemisphereDelegate
function IGameCalendar.set_OnGetHemisphere(value) end

---@return SolarSphericalCoordsDelegate # Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
function IGameCalendar.get_OnGetSolarSphericalCoords() end

---@param value SolarSphericalCoordsDelegate Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
function IGameCalendar.set_OnGetSolarSphericalCoords(value) end

---@return GetLatitudeDelegate
function IGameCalendar.get_OnGetLatitude() end

---@param value GetLatitudeDelegate
function IGameCalendar.set_OnGetLatitude(value) end

-- Retrieve the current daylight strength at given coordinates, the values are roughly beween 0 and 1.2f
---@param x number
---@param z number
---@return number
function IGameCalendar.GetDayLightStrength(x, z) end

-- Retrieve the current daylight strength at given coordinates. The Y-Component is ignored
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function IGameCalendar.GetDayLightStrength(pos) end

-- The worlds current date, nicely formatted
---@return string
function IGameCalendar.PrettyDate() end

---@return number
function IGameCalendar.get_SpeedOfTime() end

-- If you want to modify the time speed, set a value here
---@param name string
---@param speed number
function IGameCalendar.SetTimeSpeedModifier(name, speed) end

-- To remove a previously added time speed modifier
---@param name string
function IGameCalendar.RemoveTimeSpeedModifier(name) end

---@return number
function IGameCalendar.get_ElapsedSeconds() end

---@return number
function IGameCalendar.get_ElapsedHours() end

---@return number
function IGameCalendar.get_ElapsedDays() end

---@return number
function IGameCalendar.get_CalendarSpeedMul() end

---@param value number
function IGameCalendar.set_CalendarSpeedMul(value) end

---@return number
function IGameCalendar.get_HoursPerDay() end

---@return number
function IGameCalendar.get_DaysPerYear() end

---@return number
function IGameCalendar.get_DaysPerMonth() end

---@return number
function IGameCalendar.get_Month() end

---@return EnumMonth
function IGameCalendar.get_MonthName() end

---@return number
function IGameCalendar.get_FullHourOfDay() end

---@return number
function IGameCalendar.get_HourOfDay() end

---@return number
function IGameCalendar.get_TotalHours() end

---@return number
function IGameCalendar.get_TotalDays() end

---@return number
function IGameCalendar.get_DayOfYear() end

---@return number
function IGameCalendar.get_DayOfYearf() end

---@return number
function IGameCalendar.get_Year() end

-- Returns the season at given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EnumSeason
function IGameCalendar.GetSeason(pos) end

-- Returns the season at given position between 0..1, respects hemisphere
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return number
function IGameCalendar.GetSeasonRel(pos) end

-- Returns the hemisphere at given position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EnumHemisphere
function IGameCalendar.GetHemisphere(pos) end

---@return number
function IGameCalendar.get_YearRel() end

-- Adds given time to the calendar
---@param hours number
function IGameCalendar.Add(hours) end

---@return EnumMoonPhase
function IGameCalendar.get_MoonPhase() end

---@return number
function IGameCalendar.get_MoonPhaseExact() end

---@return number
function IGameCalendar.get_MoonPhaseBrightness() end

---@return number
function IGameCalendar.get_MoonSize() end

---@return Nullable`1
function IGameCalendar.get_SeasonOverride() end

---@param value Nullable`1
function IGameCalendar.set_SeasonOverride(value) end

-- If non-null, will override the value retrieved by GetSeason(). Set to null to have seasons progress normally again.
---@param seasonRel Nullable`1
function IGameCalendar.SetSeasonOverride(seasonRel) end

---@return number
function IGameCalendar.get_Timelapse() end

---@param value number
function IGameCalendar.set_Timelapse(value) end


