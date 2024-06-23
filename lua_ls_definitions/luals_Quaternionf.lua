---@meta Quaternionf
---@class Quaternionf: Object
---@field ctor fun(): Quaternionf
---@field Create fun(): Single[]
---@field RotationTo fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field SetAxes fun(output: Single[], view: Single[], right: Single[], up: Single[]): Single[]
---@field CloneIt fun(a: Single[]): Single[]
---@field FromValues fun(x: Single, y: Single, z: Single, w: Single): Single[]
---@field Copy fun(output: Single[], a: Single[]): Single[]
---@field Set fun(output: Single[], x: Single, y: Single, z: Single, w: Single): Single[]
---@field Identity_ fun(output: Single[]): Single[]
---@field SetAxisAngle fun(output: Single[], axis: Single[], rad: Single): Single[]
---@field Add fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Multiply fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Mul fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Scale fun(output: Single[], a: Single[], b: Single): Single[]
---@field RotateX fun(output: Single[], a: Single[], rad: Single): Single[]
---@field RotateY fun(output: Single[], a: Single[], rad: Single): Single[]
---@field RotateZ fun(output: Single[], a: Single[], rad: Single): Single[]
---@field CalculateW fun(output: Single[], a: Single[]): Single[]
---@field Dot fun(a: Single[], b: Single[]): Single
---@field ToEulerAngles fun(quat: Single[]): Single[]
---@field Lerp fun(output: Single[], a: Single[], b: Single[], t: Single): Single[]
---@field Slerp fun(output: Single[], a: Single[], b: Single[], t: Single): Single[]
---@field Invert fun(output: Single[], a: Single[]): Single[]
---@field Conjugate fun(output: Single[], a: Single[]): Single[]
---@field Length_ fun(a: Single[]): Single
---@field Len fun(a: Single[]): Single
---@field SquaredLength fun(a: Single[]): Single
---@field SqrLen fun(a: Single[]): Single
---@field Normalize fun(output: Single[], a: Single[]): Single[]
---@field FromMat3 fun(output: Single[], m: Single[]): Single[]
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Quaternionf = {}