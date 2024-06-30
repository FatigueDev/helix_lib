---@meta

---@class Packet_Cube
---@field Minx number
---@field Miny number
---@field Minz number
---@field Maxx number
---@field Maxy number
---@field Maxz number
---@field MinxFieldID number
---@field MinyFieldID number
---@field MinzFieldID number
---@field MaxxFieldID number
---@field MaxyFieldID number
---@field MaxzFieldID number
Packet_Cube = {}

---@return Packet_Cube
function Packet_Cube.ctor() end

---@param value number
function Packet_Cube.SetMinx(value) end

---@param value number
function Packet_Cube.SetMiny(value) end

---@param value number
function Packet_Cube.SetMinz(value) end

---@param value number
function Packet_Cube.SetMaxx(value) end

---@param value number
function Packet_Cube.SetMaxy(value) end

---@param value number
function Packet_Cube.SetMaxz(value) end

---@return userdata
function Packet_Cube.GetType() end

---@return string
function Packet_Cube.ToString() end

---@param obj userdata
---@return boolean
function Packet_Cube.Equals(obj) end

---@return number
function Packet_Cube.GetHashCode() end


