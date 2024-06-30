---@meta

---@class ModCellEntry: SavegameCellEntry, SavegameCellEntry
---@field Mod ModContainer
---@field Title string The title of the Table Cell.
---@field DetailText string The details of the table cell.
---@field RightTopText string The text displayed in the top right corner of the cell. 
---@field HoverText string
---@field RightTopOffY number The y offset of the right top text
---@field LeftOffY number The y offset of the left title and detail text
---@field DetailTextOffY number
---@field OnClick function The event fired when the tablecell is clicked.
---@field TitleFont CairoFont The font of the cell title.
---@field DetailTextFont CairoFont The font of the detail text.
---@field DrawAsButton boolean
---@field Enabled boolean Whether or not the cell is on.
---@field Selected boolean
ModCellEntry = {}

---@return ModCellEntry
function ModCellEntry.ctor() end

---@return userdata
function ModCellEntry.GetType() end

---@return string
function ModCellEntry.ToString() end

---@param obj userdata
---@return boolean
function ModCellEntry.Equals(obj) end

---@return number
function ModCellEntry.GetHashCode() end


