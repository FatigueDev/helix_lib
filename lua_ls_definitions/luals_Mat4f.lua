---@meta Mat4f
---@class Mat4f: Object
---@field ctor fun(): Mat4f
---@field Create fun(): Single[]
---@field CloneIt fun(a: Single[]): Single[]
---@field Copy fun(output: Single[], a: Single[]): Single[]
---@field Identity fun(output: Single[]): Single[]
---@field Identity_Scaled fun(output: Single[], scale: Single): Single[]
---@field Transpose fun(output: Single[], a: Single[]): Single[]
---@field Invert fun(output: Single[], a: Single[]): Single[]
---@field Adjoint fun(output: Single[], a: Single[]): Single[]
---@field Determinant fun(a: Single[]): Single
---@field Multiply fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Mul fun(output: Single[], a: Single[], b: Single[]): Single[]
---@field Translate fun(output: Single[], input: Single[], x: Single, y: Single, z: Single): Single[]
---@overload fun(output: Single[], input: Single[], translate: Single[]): Single[]
---@field Scale fun(output: Single[], a: Single[], v: Single[]): Single[]
---@field SimpleScaleMatrix fun(matrix: Span`1, x: Single, y: Single, z: Single): nil
---@field Scale fun(output: Single[], a: Single[], xScale: Single, yScale: Single, zScale: Single): Single[]
---@field Rotate fun(output: Single[], a: Single[], rad: Single, axis: Single[]): Single[]
---@field RotateX fun(output: Single[], a: Single[], rad: Single): Single[]
---@field RotateY fun(output: Single[], a: Single[], rad: Single): Single[]
---@field RotateZ fun(output: Single[], a: Single[], rad: Single): Single[]
---@field RotateXYZ fun(matrix: Span`1, radX: Single, radY: Single, radZ: Single): nil
---@field FromRotationTranslation fun(output: Single[], q: Single[], v: Single[]): Single[]
---@field FromQuat fun(output: Single[], q: Single[]): Single[]
---@field Frustum fun(output: Single[], left: Single, right: Single, bottom: Single, top: Single, near: Single, far: Single): Single[]
---@field Perspective fun(output: Single[], fovy: Single, aspect: Single, near: Single, far: Single): Single[]
---@field Ortho fun(output: Single[], left: Single, right: Single, bottom: Single, top: Single, near: Single, far: Single): Single[]
---@field LookAt fun(output: Single[], eye: Single[], center: Single[], up: Single[]): Single[]
---@field MulWithVec4 fun(matrix: Single[], vec4: Single[]): Single[]
---@overload fun(matrix: Single[], v1: Single, v2: Single, v3: Single, v4: Single): Single[]
---@overload fun(matrix: Single[], vec: Single[], output: Single[]): nil
---@overload fun(matrix: Span`1, vec: Single[], output: Single[]): nil
---@field MulWithVec3 fun(matrix: Single[], vec: Single[], output: Single[]): nil
---@overload fun(matrix: Span`1, vec: Single[], output: Single[]): nil
---@field MulWithVec3_Position fun(matrix: Single[], vec: Single[], output: Single[], offset: number): nil
---@overload fun(matrix: Span`1, vec: Single[], output: Single[], offset: number): nil
---@field MulWithVec3_Position_AndScale fun(matrix: Single[], vec: Single[], output: Single[], offset: number, scaleFactor: Single): nil
---@field MulWithVec3_Position_AndScaleXY fun(matrix: Single[], vec: Single[], output: Single[], offset: number, scaleFactor: Single): nil
---@field MulWithVec3_Position_WithOrigin fun(matrix: Single[], vec: Single[], output: Single[], offset: number, origin: Vec3f): nil
---@overload fun(matrix: Span`1, vec: Single[], output: Single[], offset: number, origin: Vec3f): nil
---@overload fun(matrix: Single[], x: Single, y: Single, z: Single, output: Vec3f): nil
---@overload fun(matrix: Single[], vec: Vec3f, output: Vec3f): nil
---@overload fun(matrix: Single[], x: Single, y: Single, z: Single): FastVec3f
---@field MulWithVec3_BlockFacing fun(matrix: Single[], vec: Vec3f): BlockFacing
---@overload fun(matrix: Span`1, vec: Vec3f): BlockFacing
---@overload fun(matrix: Single[], vec4: Double[]): Double[]
---@overload fun(matrix: Single[], vec4: Single[], outVal: Vec4f): nil
---@overload fun(matrix: Single[], inVal: Vec4d, outVal: Vec4d): nil
---@overload fun(matrix: Single[], inVal: Vec4f, outVal: Vec4f): nil
---@field ExtractEulerAngles fun(m: Single[], thetaX: Single&, thetaY: Single&, thetaZ: Single&): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Mat4f = {}
