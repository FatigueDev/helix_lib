---@meta

---@class DrawWireframeCube
DrawWireframeCube = {}

---@param game ClientMain
---@param color? number
---@return DrawWireframeCube
function DrawWireframeCube.ctor(game, color) end

---@param game ClientMain
---@param posx number
---@param posy number
---@param posz number
---@param scalex number
---@param scaley number
---@param scalez number
---@param lineWidth? number
---@param color? Vec4f
function DrawWireframeCube.Render(game, posx, posy, posz, scalex, scaley, scalez, lineWidth, color) end

---@return userdata
function DrawWireframeCube.GetType() end

---@return string
function DrawWireframeCube.ToString() end

---@param obj userdata
---@return boolean
function DrawWireframeCube.Equals(obj) end

---@return number
function DrawWireframeCube.GetHashCode() end


