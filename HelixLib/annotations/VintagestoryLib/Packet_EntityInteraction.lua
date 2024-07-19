---@meta

---@class Packet_EntityInteraction
---@field MouseButton number
---@field EntityId number
---@field OnBlockFace number
---@field HitX number
---@field HitY number
---@field HitZ number
---@field SelectionBoxIndex number
---@field MouseButtonFieldID number
---@field EntityIdFieldID number
---@field OnBlockFaceFieldID number
---@field HitXFieldID number
---@field HitYFieldID number
---@field HitZFieldID number
---@field SelectionBoxIndexFieldID number
Packet_EntityInteraction = {}

---@return Packet_EntityInteraction
function Packet_EntityInteraction.ctor() end

---@param value number
function Packet_EntityInteraction.SetMouseButton(value) end

---@param value number
function Packet_EntityInteraction.SetEntityId(value) end

---@param value number
function Packet_EntityInteraction.SetOnBlockFace(value) end

---@param value number
function Packet_EntityInteraction.SetHitX(value) end

---@param value number
function Packet_EntityInteraction.SetHitY(value) end

---@param value number
function Packet_EntityInteraction.SetHitZ(value) end

---@param value number
function Packet_EntityInteraction.SetSelectionBoxIndex(value) end

---@return userdata
function Packet_EntityInteraction.GetType() end

---@return string
function Packet_EntityInteraction.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityInteraction.Equals(obj) end

---@return number
function Packet_EntityInteraction.GetHashCode() end


