---@meta UriHandler
---@class UriHandler: Object
---@field get_Instance fun(): UriHandler
---@field StartPipeServer fun(): nil
---@field TryConnectClientPipe fun(): boolean
---@field Dispose fun(): nil
---@field SendModInstall fun(argsInstallModId: string): nil
---@field SendConnect fun(argsConnectServerAddress: string): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Instance UriHandler
UriHandler = {}
