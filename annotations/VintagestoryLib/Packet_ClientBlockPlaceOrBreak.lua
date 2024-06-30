---@meta

---@class Packet_ClientBlockPlaceOrBreak
---@field X number
---@field Y number
---@field Z number
---@field Mode number
---@field BlockType number
---@field OnBlockFace number
---@field HitX number
---@field HitY number
---@field HitZ number
---@field SelectionBoxIndex number
---@field DidOffset number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field ModeFieldID number
---@field BlockTypeFieldID number
---@field OnBlockFaceFieldID number
---@field HitXFieldID number
---@field HitYFieldID number
---@field HitZFieldID number
---@field SelectionBoxIndexFieldID number
---@field DidOffsetFieldID number
Packet_ClientBlockPlaceOrBreak = {}

---@return Packet_ClientBlockPlaceOrBreak
function Packet_ClientBlockPlaceOrBreak.ctor() end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetX(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetY(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetZ(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetMode(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetBlockType(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetOnBlockFace(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetHitX(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetHitY(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetHitZ(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetSelectionBoxIndex(value) end

---@param value number
function Packet_ClientBlockPlaceOrBreak.SetDidOffset(value) end

---@return userdata
function Packet_ClientBlockPlaceOrBreak.GetType() end

---@return string
function Packet_ClientBlockPlaceOrBreak.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientBlockPlaceOrBreak.Equals(obj) end

---@return number
function Packet_ClientBlockPlaceOrBreak.GetHashCode() end


