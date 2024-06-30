---@meta

---@class IChunkLight
IChunkLight = {}


---@param index3d number
---@return number
function IChunkLight.GetSunlight(index3d) end

---@param index3d number
---@param sunlevel number
function IChunkLight.SetSunlight(index3d, sunlevel) end

---@param index3d number
---@param sunlevel number
function IChunkLight.SetSunlight_Buffered(index3d, sunlevel) end

---@param index3d number
---@return number
function IChunkLight.GetBlocklight(index3d) end

---@param index3d number
---@param lightlevel number
function IChunkLight.SetBlocklight(index3d, lightlevel) end

---@param index3d number
---@param lightlevel number
function IChunkLight.SetBlocklight_Buffered(index3d, lightlevel) end

---@param sunLight number
function IChunkLight.ClearWithSunlight(sunLight) end

---@param sunLight number
function IChunkLight.FloodWithSunlight(sunLight) end

function IChunkLight.ClearLight() end

function IChunkLight.ClearAllSunlight() end


