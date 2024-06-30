---@meta

---@class DummyRenderer:  IDisposable, IRenderer
---@field RenderOrder number
---@field RenderRange number
---@field action function
DummyRenderer = {}

---@return DummyRenderer
function DummyRenderer.ctor() end

---@return number
function DummyRenderer.get_RenderOrder() end

---@param value number
function DummyRenderer.set_RenderOrder(value) end

---@return number
function DummyRenderer.get_RenderRange() end

---@param value number
function DummyRenderer.set_RenderRange(value) end

function DummyRenderer.Dispose() end

---@param deltaTime number
---@param stage EnumRenderStage
function DummyRenderer.OnRenderFrame(deltaTime, stage) end

---@return userdata
function DummyRenderer.GetType() end

---@return string
function DummyRenderer.ToString() end

---@param obj userdata
---@return boolean
function DummyRenderer.Equals(obj) end

---@return number
function DummyRenderer.GetHashCode() end


