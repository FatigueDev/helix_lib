---@meta

---@class Packet_ClientHandInteraction
---@field UseType number
---@field MouseButton number
---@field InventoryId string
---@field SlotId number
---@field X number
---@field Y number
---@field Z number
---@field OnBlockFace number
---@field HitX number
---@field HitY number
---@field HitZ number
---@field OnEntityId number
---@field EnumHandInteract number
---@field UsingCount number
---@field SelectionBoxIndex number
---@field CancelReason number
---@field FirstEvent number
---@field UseTypeFieldID number
---@field MouseButtonFieldID number
---@field InventoryIdFieldID number
---@field SlotIdFieldID number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field OnBlockFaceFieldID number
---@field HitXFieldID number
---@field HitYFieldID number
---@field HitZFieldID number
---@field OnEntityIdFieldID number
---@field EnumHandInteractFieldID number
---@field UsingCountFieldID number
---@field SelectionBoxIndexFieldID number
---@field CancelReasonFieldID number
---@field FirstEventFieldID number
Packet_ClientHandInteraction = {}

---@return Packet_ClientHandInteraction
function Packet_ClientHandInteraction.ctor() end

---@param value number
function Packet_ClientHandInteraction.SetUseType(value) end

---@param value number
function Packet_ClientHandInteraction.SetMouseButton(value) end

---@param value string
function Packet_ClientHandInteraction.SetInventoryId(value) end

---@param value number
function Packet_ClientHandInteraction.SetSlotId(value) end

---@param value number
function Packet_ClientHandInteraction.SetX(value) end

---@param value number
function Packet_ClientHandInteraction.SetY(value) end

---@param value number
function Packet_ClientHandInteraction.SetZ(value) end

---@param value number
function Packet_ClientHandInteraction.SetOnBlockFace(value) end

---@param value number
function Packet_ClientHandInteraction.SetHitX(value) end

---@param value number
function Packet_ClientHandInteraction.SetHitY(value) end

---@param value number
function Packet_ClientHandInteraction.SetHitZ(value) end

---@param value number
function Packet_ClientHandInteraction.SetOnEntityId(value) end

---@param value number
function Packet_ClientHandInteraction.SetEnumHandInteract(value) end

---@param value number
function Packet_ClientHandInteraction.SetUsingCount(value) end

---@param value number
function Packet_ClientHandInteraction.SetSelectionBoxIndex(value) end

---@param value number
function Packet_ClientHandInteraction.SetCancelReason(value) end

---@param value number
function Packet_ClientHandInteraction.SetFirstEvent(value) end

---@return userdata
function Packet_ClientHandInteraction.GetType() end

---@return string
function Packet_ClientHandInteraction.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientHandInteraction.Equals(obj) end

---@return number
function Packet_ClientHandInteraction.GetHashCode() end


