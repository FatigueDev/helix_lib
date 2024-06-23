---@meta EntityPos
---@class EntityPos: Object
---@field ctor fun(): EntityPos
---@overload fun(x: Double, y: Double, z: Double, heading: Single, pitch: Single, roll: Single): EntityPos
---@field get_X fun(): Double
---@field set_X fun(value: Double): nil
---@field get_Y fun(): Double
---@field set_Y fun(value: Double): nil
---@field get_InternalY fun(): Double
---@field get_Z fun(): Double
---@field set_Z fun(value: Double): nil
---@field get_Roll fun(): Single
---@field set_Roll fun(value: Single): nil
---@field get_Yaw fun(): Single
---@field set_Yaw fun(value: Single): nil
---@field get_Pitch fun(): Single
---@field set_Pitch fun(value: Single): nil
---@field get_AsBlockPos fun(): BlockPos
---@field get_XYZInt fun(): Vec3i
---@field get_XYZ fun(): Vec3d
---@field get_XYZFloat fun(): Vec3f
---@field SetPos fun(pos: Vec3d): nil
---@field Add fun(x: Double, y: Double, z: Double): EntityPos
---@field SetPos fun(x: number, y: number, z: number): EntityPos
---@overload fun(pos: BlockPos): EntityPos
---@overload fun(x: Double, y: Double, z: Double): EntityPos
---@overload fun(pos: EntityPos): EntityPos
---@field SetAngles fun(pos: EntityPos): EntityPos
---@overload fun(roll: Single, yaw: Single, pitch: Single): EntityPos
---@field SetYaw fun(yaw: Single): EntityPos
---@field InRangeOf fun(position: EntityPos, squareDistance: number): boolean
---@overload fun(x: number, y: number, z: number, squareDistance: Single): boolean
---@field InHorizontalRangeOf fun(x: number, z: number, squareDistance: Single): boolean
---@field InRangeOf fun(x: Double, y: Double, z: Double, squareDistance: Single): boolean
---@overload fun(pos: BlockPos, squareDistance: Single): boolean
---@overload fun(pos: Vec3f, squareDistance: Single): boolean
---@overload fun(position: Vec3d, horRangeSq: Single, vertRange: Single): boolean
---@field SquareDistanceTo fun(x: Single, y: Single, z: Single): Single
---@overload fun(x: Double, y: Double, z: Double): Single
---@overload fun(pos: Vec3d): Double
---@field SquareHorDistanceTo fun(pos: Vec3d): Double
---@field DistanceTo fun(pos: Vec3d): Double
---@overload fun(pos: EntityPos): Double
---@field HorDistanceTo fun(pos: Vec3d): Double
---@overload fun(pos: EntityPos): Double
---@overload fun(pos: EntityPos): Single
---@field Copy fun(): EntityPos
---@field GetViewVector fun(): Vec3f
---@overload fun(pitch: Single, yaw: Single): Vec3f
---@field AheadCopy fun(offset: Double): EntityPos
---@field HorizontalAheadCopy fun(offset: Double): EntityPos
---@field BehindCopy fun(offset: Double): EntityPos
---@field BasicallySameAs fun(pos: EntityPos, epsilon: Double): boolean
---@field BasicallySameAsIgnoreMotion fun(pos: EntityPos, epsilon: Double): boolean
---@field BasicallySameAsIgnoreAngles fun(pos: EntityPos, epsilon: Double): boolean
---@field SetFrom fun(pos: EntityPos): nil
---@overload fun(pos: Vec3d): nil
---@field ToString fun(): string
---@field OnlyPosToString fun(): string
---@field OnlyAnglesToString fun(): string
---@field ToBytes fun(writer: BinaryWriter): nil
---@field FromBytes fun(reader: BinaryReader): nil
---@field GetType fun(): any
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field X Double
---@field Y Double
---@field InternalY Double
---@field Z Double
---@field Roll Double
---@field Yaw Double
---@field Pitch Double
---@field AsBlockPos Double
---@field XYZInt Double
---@field XYZ Double
---@field XYZFloat Double
---@field HeadYaw Double
---@field HeadPitch Double
---@field Motion Double
---@field Dimension Double
EntityPos = {}
