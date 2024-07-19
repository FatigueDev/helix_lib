---@meta

---@class FrameProfilerUtil
---@field Enabled boolean
---@field PrintSlowTicks boolean
---@field PrintSlowTicksThreshold number
---@field PrevRootEntry ProfileEntryRange
---@field summary string
---@field OutputPrefix string
---@field offThreadProfiles ConcurrentQueue`1
---@field PrintSlowTicks_Offthreads boolean
---@field PrintSlowTicksThreshold_Offthreads number
FrameProfilerUtil = {}

---@param onLogoutputHandler function
---@return FrameProfilerUtil
function FrameProfilerUtil.ctor(onLogoutputHandler) end
---@param outputPrefix string
---@return FrameProfilerUtil
function FrameProfilerUtil.ctor(outputPrefix) end

-- Called by the game engine for each render frame or server tick
---@param beginText? string
function FrameProfilerUtil.Begin(beginText) end

---@param code string
---@return ProfileEntryRange
function FrameProfilerUtil.Enter(code) end

-- Same as Mark when Enter was called before.
function FrameProfilerUtil.Leave() end

-- Use this method to add a frame profiling marker, will set or add the time ellapsed since the previous mark to the frame profiling reults.
---@param code string
function FrameProfilerUtil.Mark(code) end

-- Called by the game engine at the end of the render frame or server tick
function FrameProfilerUtil.End() end

function FrameProfilerUtil.OffThreadEnd() end

---@return userdata
function FrameProfilerUtil.GetType() end

---@return string
function FrameProfilerUtil.ToString() end

---@param obj userdata
---@return boolean
function FrameProfilerUtil.Equals(obj) end

---@return number
function FrameProfilerUtil.GetHashCode() end


