---@meta ServerConnectData
---@class ServerConnectData: Object
---@field ctor fun(): ServerConnectData
---@field get_PlayerUID fun(): string
---@field get_PlayerName fun(): string
---@field get_MpToken fun(): string
---@field FromHost fun(host: string): ServerConnectData
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field PlayerUID string
---@field PlayerName string
---@field MpToken string
---@field HostRaw string
---@field Host string
---@field Port string
---@field ServerPassword string
---@field IsServePasswordProtected string
---@field ErrorMessage string
---@field Connected string
ServerConnectData = {}
