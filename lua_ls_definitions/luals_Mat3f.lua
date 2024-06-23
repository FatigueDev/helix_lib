---@meta Mat3f
---@class Mat3f: Object
---@field ctor fun(): Mat3f
---@field Create fun(): Single[]
---@field FromMat4 fun(output: Single[], a: Single[]): Single[]
---@field CloneIt fun(a: Single[]): Single[]
---@field Copy fun(output: Single[], a: Single[]): Single[]
---@field Identity_ fun(output: Single[]): Single[]
---@field Transpose fun(output: Single[], a: Single[]): Single[]
---@field Invert fun(output: Single[], a: Single[]): Single[]
---@field Adjoint fun(output: Single[], a: Single[]): Single[]
---@field Determinant fun(a: Single[]): Single
---@field Multiply fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Mul fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Translate fun(output: Single[], a: Single[], v: Single[]): Single[]
---@field Rotate fun(output: Single[], a: Single[], rad: Single): Single[]
---@field Scale fun(output: Single[], a: Single[], v: Single[]): Single[]
---@field FromMat2d fun(output: Single[], a: Single[]): Single[]
---@field FromQuat fun(output: Single[], q: Single[]): Single[]
---@field NormalFromMat4 fun(output: Single[], a: Single[]): Single[]
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Mat3f = {}
