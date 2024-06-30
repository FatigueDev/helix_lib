---@meta

---@class JsonDialogSettings
---@field Code string
---@field Alignment EnumDialogArea
---@field PosX number
---@field PosY number
---@field Rows DialogRow[]
---@field SizeMultiplier number
---@field Padding number
---@field DisableWorldInteract boolean
---@field OnSet OnValueSetDelegate Called whenever the value of a input field has changed
---@field OnGet OnValueGetDelegate Called when the dialog is opened the first time or when dialog.ReloadValues() is called. Should return the values the input fields should be set to
JsonDialogSettings = {}

---@return JsonDialogSettings
function JsonDialogSettings.ctor() end

-- Writes the content to the writer.
---@param writer BinaryWriter
function JsonDialogSettings.ToBytes(writer) end

-- Reads the content to the dialog.
---@param reader BinaryReader
function JsonDialogSettings.FromBytes(reader) end

---@return userdata
function JsonDialogSettings.GetType() end

---@return string
function JsonDialogSettings.ToString() end

---@param obj userdata
---@return boolean
function JsonDialogSettings.Equals(obj) end

---@return number
function JsonDialogSettings.GetHashCode() end


