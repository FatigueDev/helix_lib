---@meta

---@class EntityTalkUtil
---@field soundName AssetLocation
---@field soundLength number
---@field chordDelayMul number
---@field pitchModifier number
---@field volumneModifier number
---@field idleTalkChance number
---@field AddSoundLengthChordDelay boolean
---@field TalkPacketId number
EntityTalkUtil = {}

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param atEntity Entity The basic class for all entities in the game
---@return EntityTalkUtil
function EntityTalkUtil.ctor(api, atEntity) end

---@param chordDelayMul? number
---@param pitchModifier? number
---@param volumneModifier? number
function EntityTalkUtil.SetModifiers(chordDelayMul, pitchModifier, volumneModifier) end

---@param dt number
function EntityTalkUtil.OnGameTick(dt) end

---@param talkType EnumTalkType
function EntityTalkUtil.Talk(talkType) end

---@return userdata
function EntityTalkUtil.GetType() end

---@return string
function EntityTalkUtil.ToString() end

---@param obj userdata
---@return boolean
function EntityTalkUtil.Equals(obj) end

---@return number
function EntityTalkUtil.GetHashCode() end


