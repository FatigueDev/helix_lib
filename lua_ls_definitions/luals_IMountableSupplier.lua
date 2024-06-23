---@meta IMountableSupplier
---@class IMountableSupplier
---@field get_MountPoints fun(): IMountable[]
---@field IsMountedBy fun(entity: Entity): boolean
---@field GetMountOffset fun(entity: Entity): Vec3f
---@field MountPoints IMountable[]
IMountableSupplier = {}
