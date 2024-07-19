---@meta

---@class OggPage: Page, Page
---@field header_base number
---@field header number
---@field header_len number
---@field body_base number
---@field body number
---@field body_len number
OggPage = {}

---@return OggPage
function OggPage.ctor() end

---@return number
function OggPage.bos() end

---@return number
function OggPage.eos() end

---@return number
function OggPage.granulepos() end

---@return number
function OggPage.serialno() end

---@return number
function OggPage.bos() end

---@return number
function OggPage.eos() end

---@return number
function OggPage.granulepos() end

---@return number
function OggPage.serialno() end

---@return userdata
function OggPage.GetType() end

---@return string
function OggPage.ToString() end

---@param obj userdata
---@return boolean
function OggPage.Equals(obj) end

---@return number
function OggPage.GetHashCode() end


