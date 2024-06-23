---@meta JsonDialogSettings
---@class JsonDialogSettings: Object
---@field ctor fun(): JsonDialogSettings
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
JsonDialogSettings = {}
