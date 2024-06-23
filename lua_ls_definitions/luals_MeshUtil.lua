---@meta MeshUtil
---@class MeshUtil: Object
---@field SetWindFlag fun(sourceMesh: MeshData, waveFlagMinY: Single, flag: number): nil
---@field ClearWindFlags fun(sourceMesh: MeshData): nil
---@field ToggleWindModeSetWindData fun(sourceMesh: MeshData, leavesNoShearTileSide: number, enableWind: boolean, groundOffsetTop: number): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
MeshUtil = {}
