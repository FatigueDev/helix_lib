---@meta IMeshCreator
---@class IMeshCreator
---@field get_texSizeU fun(): Single
---@field get_texSizeV fun(): Single
---@field CreateMesh fun(): MeshData
---@field RegisterMesh fun(mesh: MeshRef): nil
---@field texSizeU Single
---@field texSizeV Single
IMeshCreator = {}
