---@meta

---@class MeshUtil
MeshUtil = {}


-- Sets given flag if vertex y > WaveFlagMinY, otherwise it clears all wind mode bits
---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param waveFlagMinY? number
---@param flag? number
function MeshUtil.SetWindFlag(sourceMesh, waveFlagMinY, flag) end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshUtil.ClearWindFlags(sourceMesh) end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param leavesNoShearTileSide number
---@param enableWind boolean
---@param groundOffsetTop number
function MeshUtil.ToggleWindModeSetWindData(sourceMesh, leavesNoShearTileSide, enableWind, groundOffsetTop) end

---@return userdata
function MeshUtil.GetType() end

---@return string
function MeshUtil.ToString() end

---@param obj userdata
---@return boolean
function MeshUtil.Equals(obj) end

---@return number
function MeshUtil.GetHashCode() end


