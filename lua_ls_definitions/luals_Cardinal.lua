---@meta Cardinal
---@class Cardinal: Object
---@field ctor fun(code: string, initial: string, normali: Vec3i, index: number, oppositeIndex: number, isDiagonal: boolean): Cardinal
---@field get_Normali fun(): Vec3i
---@field get_Normalf fun(): Vec3f
---@field get_Opposite fun(): Cardinal
---@field get_Index fun(): number
---@field get_Initial fun(): string
---@field get_Code fun(): string
---@field get_IsDiagnoal fun(): boolean
---@field get_OppositeIndex fun(): number
---@field FromNormali fun(normali: Vec3i): Cardinal
---@field FromInitial fun(initials: string): Cardinal
---@field FromVector fun(x: Double, y: Double, z: Double): Cardinal
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Normali Vec3i
---@field Normalf Vec3i
---@field Opposite Vec3i
---@field Index Vec3i
---@field Initial Vec3i
---@field Code Vec3i
---@field IsDiagnoal Vec3i
---@field OppositeIndex Vec3i
---@field North Vec3i
---@field NorthEast Vec3i
---@field East Vec3i
---@field SouthEast Vec3i
---@field South Vec3i
---@field SouthWest Vec3i
---@field West Vec3i
---@field NorthWest Vec3i
---@field ALL Vec3i
Cardinal = {}