---@meta

-- A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@class MeshData
---@field RenderPasses number
---@field XyzCount number returns VerticesCount * 3
---@field RgbaCount number returns VerticesCount * 4
---@field Rgba2Count number returns VerticesCount * 4
---@field FlagsCount number returns VerticesCount
---@field UvCount number returns VerticesCount * 2
---@field TextureIds number
---@field xyz number The x/y/z coordinates buffer. This should hold VerticesCount*3 values.
---@field Flags number The render flags buffer. This should hold VerticesCount*1 values.
---@field HasAnyWindModeSet boolean True if the flags array contains any wind mode
---@field Normals number The normals buffer. This should hold VerticesCount*1 values. Currently unused by the engine. GL_INT_2_10_10_10_REV Format x: bits 0-9    (10 bit signed int) y: bits 10-19  (10 bit signed int) z: bits 20-29  (10 bit signed int)  w: bits 30-31
---@field Uv number The uv buffer for texture coordinates. This should hold VerticesCount*2 values.
---@field Rgba number The vertex color buffer. This should hold VerticesCount*4 values.
---@field Indices number The indices buffer. This should hold IndicesCount values.
---@field TextureIndices number Texture index per face, references to and index in the TextureIds array
---@field CustomFloats CustomMeshDataPartFloat Custom floats buffer. Can be used to upload arbitrary amounts of float values onto the graphics card
---@field CustomInts CustomMeshDataPartInt Custom ints buffer. Can be used to upload arbitrary amounts of int values onto the graphics card
---@field CustomShorts CustomMeshDataPartShort Custom shorts buffer. Can be used to upload arbitrary amounts of short values onto the graphics card
---@field CustomBytes CustomMeshDataPartByte Custom bytes buffer. Can be used to upload arbitrary amounts of byte values onto the graphics card
---@field XyzInstanced boolean When using instanced rendering, set this flag to have the xyz values instanced.
---@field UvInstanced boolean When using instanced rendering, set this flag to have the uv values instanced.
---@field RgbaInstanced boolean When using instanced rendering, set this flag to have the rgba values instanced.
---@field Rgba2Instanced boolean When using instanced rendering, set this flag to have the rgba2 values instanced.
---@field IndicesInstanced boolean When using instanced rendering, set this flag to have the indices instanced.
---@field FlagsInstanced boolean When using instanced rendering, set this flag to have the flags instanced.
---@field XyzStatic boolean xyz vbo usage hints for the graphics card. Recommended to be set to false when this section of data changes often.
---@field UvStatic boolean uv vbo usage hints for the graphics card. Recommended to be set to false when this section of data changes often.
---@field RgbaStatic boolean rgab vbo usage hints for the graphics card. Recommended to be set to false when this section of data changes often.
---@field Rgba2Static boolean rgba2 vbo usage hints for the graphics card. Recommended to be set to false when this section of data changes often.
---@field IndicesStatic boolean indices vbo usage hints for the graphics card. Recommended to be set to false when this section of data changes often.
---@field FlagsStatic boolean flags vbo usage hints for the graphics card. Recommended to be set to false when this section of data changes often.
---@field XyzOffset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field UvOffset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field RgbaOffset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field Rgba2Offset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field FlagsOffset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field NormalsOffset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field IndicesOffset number For offseting the data in the VBO. This field is used when updating a mesh.
---@field mode EnumDrawMode The meshes draw mode
---@field NormalsCount number Amount of currently assigned normals
---@field VerticesCount number Amount of currently assigned vertices
---@field IndicesCount number Amount of currently assigned indices
---@field VerticesMax number Vertex buffer size
---@field IndicesMax number Index buffer size
---@field XyzFaces number BlockShapeTesselator xyz faces. Required by TerrainChunkTesselator to determine vertex lightness. Should hold VerticesCount / 4 values. Set to 0 for no face, set to 1..8 for faces 0..7
---@field XyzFacesCount number Amount of assigned xyz face values
---@field TextureIndicesCount number
---@field IndicesPerFace number
---@field VerticesPerFace number
---@field ClimateColorMapIds number BlockShapeTesselator climate colormap ids. Required by TerrainChunkTesselator to determine whether to color a vertex by a color map or not. Should hold VerticesCount / 4 values. Set to 0 for no color mapping, set 1..n for color map 0..n-1
---@field SeasonColorMapIds number BlockShapeTesselator season colormap ids. Required by TerrainChunkTesselator to determine whether to color a vertex by a color map or not. Should hold VerticesCount / 4 values. Set to 0 for no color mapping, set 1..n for color map 0..n-1
---@field RenderPassesAndExtraBits number BlockShapeTesselator renderpass. Required by TerrainChunkTesselator to determine in which mesh data pool each quad should land in. Should hold VerticesCount / 4 values. Lower 10 bits = render pass Upper 6 bits = extra bits for tesselators    Bit 10: DisableRandomDrawOffset
---@field ColorMapIdsCount number Amount of assigned tint values
---@field RenderPassCount number Amount of assigned render pass values
---@field Recyclable boolean If true, this MeshData was constructed from MeshDataRecycler
---@field RecyclingTime number The time this MeshData most recently entered the recycling system; the oldest may be garbage collected
---@field Recycler MeshDataRecycler
---@field StandardVerticesPerFace number
---@field StandardIndicesPerFace number
---@field BaseSizeInBytes number
---@field XyzSize number The size of the position values.
---@field NormalSize number The size of the normals.
---@field RgbaSize number The size of the color.
---@field UvSize number The size of the Uv.
---@field IndexSize number the size of the index.
---@field FlagsSize number the size of the flags.
---@field MeshDataFilterDelegate nil
MeshData = {}

---@param initialiseArrays? boolean
---@return MeshData
function MeshData.ctor(initialiseArrays) end
---@param capacityVertices number
---@param capacityIndices number
---@param withNormals? boolean
---@param withUv? boolean
---@param withRgba? boolean
---@param withFlags? boolean
---@return MeshData
function MeshData.ctor(capacityVertices, capacityIndices, withNormals, withUv, withRgba, withFlags) end
---@param capacity number
---@return MeshData
function MeshData.ctor(capacity) end

---@return number
function MeshData.get_RenderPasses() end

-- Gets the number of verticies in the the mesh.
---@return number
function MeshData.GetVerticesCount() end

-- Sets the number of verticies in this mesh.
---@param value number
function MeshData.SetVerticesCount(value) end

-- Gets the number of Indicices in this mesh.
---@return number
function MeshData.GetIndicesCount() end

-- Sets the number of indices in this mesh.
---@param value number
function MeshData.SetIndicesCount(value) end

---@return number
function MeshData.get_XyzCount() end

---@return number
function MeshData.get_RgbaCount() end

---@return number
function MeshData.get_Rgba2Count() end

---@return number
function MeshData.get_FlagsCount() end

---@return number
function MeshData.get_UvCount() end

---@return number
function MeshData.GetXyz() end

---@param p number
function MeshData.SetXyz(p) end

---@return number
function MeshData.GetRgba() end

---@param p number
function MeshData.SetRgba(p) end

---@return number
function MeshData.GetUv() end

---@param p number
function MeshData.SetUv(p) end

---@return number
function MeshData.GetIndices() end

---@param p number
function MeshData.SetIndices(p) end

---@return EnumDrawMode
function MeshData.GetMode() end

---@param p EnumDrawMode
function MeshData.SetMode(p) end

-- Offset the mesh by given values
---@param offset Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.Translate(offset) end

-- Offset the mesh by given values
---@param x number
---@param y number
---@param z number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.Translate(x, y, z) end

-- Rotate the mesh by given angles around given origin
---@param origin Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param radX number
---@param radY number
---@param radZ number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.Rotate(origin, radX, radY, radZ) end

-- Scale the mesh by given values around given origin
---@param origin Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.Scale(origin, scaleX, scaleY, scaleZ) end

-- Apply given transformation on the mesh
---@param transform ModelTransform Used for transformations applied to a block or item model
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.ModelTransform(transform) end

-- Apply given transformation on the mesh
---@param matrix number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.MatrixTransform(matrix) end

-- Apply given transformation on the mesh - specifying two temporary vectors to work in (these can then be re-used for performance reasons)
---@param matrix number
---@param vec number
---@param origin? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.MatrixTransform(matrix, vec, origin) end

---@param matrix Span`1
---@param vec number
---@param origin? Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.MatrixTransform(matrix, vec, origin) end

-- Apply given transformation on the mesh
---@param matrix number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.MatrixTransform(matrix) end

-- Sets up the tints array for holding tint info
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.WithColorMaps() end

-- Sets up the xyzfaces array for holding xyzfaces info
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.WithXyzFaces() end

-- Sets up the renderPasses array for holding render pass info
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.WithRenderpasses() end

-- Sets up the renderPasses array for holding render pass info
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.WithNormals() end

-- Add supplied mesh data to this mesh. If a given dataset is not set, it is not copied from the sourceMesh. Automatically adjusts the indices for you.
-- Is filtered to only add mesh data for given render pass.
-- A negative render pass value defaults to EnumChunkRenderPass.Opaque
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param filterByRenderPass EnumChunkRenderPass The various render passes available for rendering blocks
function MeshData.AddMeshData(data, filterByRenderPass) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param dele? MeshDataFilterDelegate
function MeshData.AddMeshData(data, dele) end

---@param textureId number
---@return number
function MeshData.getTextureIndex(textureId) end

-- Add supplied mesh data to this mesh. If a given dataset is not set, it is not copied from the sourceMesh. Automatically adjusts the indices for you.
---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.AddMeshData(sourceMesh) end

---@param sourceMesh MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param xOffset number
---@param yOffset number
---@param zOffset number
function MeshData.AddMeshData(sourceMesh, xOffset, yOffset, zOffset) end

-- Removes the last index in the indices array
function MeshData.RemoveIndex() end

-- Removes the last vertex in the vertices array
function MeshData.RemoveVertex() end

-- Removes the last "count" vertices from the vertex array
---@param count number
function MeshData.RemoveVertices(count) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param color? number
function MeshData.AddVertexSkipTex(x, y, z, color) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
function MeshData.AddVertex(x, y, z, u, v) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
---@param color number
function MeshData.AddVertex(x, y, z, u, v, color) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
---@param color number
function MeshData.AddVertex(x, y, z, u, v, color) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
---@param color number
---@param flags number
function MeshData.AddWithFlagsVertex(x, y, z, u, v, color, flags) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
---@param color number
---@param flags number
function MeshData.AddVertexWithFlags(x, y, z, u, v, color, flags) end

-- Adds a new vertex to the mesh. Grows the vertex buffer if necessary.
---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
---@param flags number
function MeshData.AddVertexWithFlagsSkipColor(x, y, z, u, v, flags) end

---@param x number
---@param y number
---@param z number
---@param u number
---@param v number
---@param color number
---@param flags number
function MeshData.AddVertexWithFlagsSkipTexture(x, y, z, u, v, color, flags) end

-- Applies a vertex flag to an existing MeshData (uses binary OR)
---@param flag number
function MeshData.SetVertexFlags(flag) end

-- Adds a new normal to the mesh. Grows the normal buffer if necessary.
---@param normalizedX number
---@param normalizedY number
---@param normalizedZ number
function MeshData.AddNormal(normalizedX, normalizedY, normalizedZ) end

-- Adds a new normal to the mesh. Grows the normal buffer if necessary.
---@param facing BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function MeshData.AddNormal(facing) end

---@param climateMapIndex number
---@param seasonMapIndex number
function MeshData.AddColorMapIndex(climateMapIndex, seasonMapIndex) end

---@param renderPass number
function MeshData.AddRenderPass(renderPass) end

---@param faceIndex number
function MeshData.AddXyzFace(faceIndex) end

---@param textureId number
function MeshData.AddTextureId(textureId) end

---@param index number
function MeshData.AddIndex(index) end

-- Add 6 indices
---@param i1 number
---@param i2 number
---@param i3 number
---@param i4 number
---@param i5 number
---@param i6 number
function MeshData.AddIndices(i1, i2, i3, i4, i5, i6) end

---@param indices number
function MeshData.AddIndices(indices) end

function MeshData.GrowIndexBuffer() end

---@param byAtLeastQuantity number
function MeshData.GrowIndexBuffer(byAtLeastQuantity) end

function MeshData.GrowNormalsBuffer() end

-- Doubles the size of the xyz, uv, rgba, rgba2 and flags arrays
function MeshData.GrowVertexBuffer() end

-- Resizes all buffers to tightly fit the data. Recommended to run this method for long-term in-memory storage of meshdata for meshes that won't get any new vertices added
function MeshData.CompactBuffers() end

-- Creates a compact, deep copy of the mesh
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.Clone() end

function MeshData.DisposeBasicData() end

---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.CloneUsingRecycler() end

-- Allows meshdata object to be returned to the recycler
function MeshData.Dispose() end

-- Creates an empty copy of the mesh
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.EmptyClone() end

-- Sets the counts of all data to 0
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.Clear() end

---@return number
function MeshData.SizeInBytes() end

-- Returns a copy of this mesh with the uvs set to the specified TextureAtlasPosition
---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.WithTexPos(texPos) end

-- Sets the uvs of this mesh to the specified TextureAtlasPosition, assuming the initial UVs range from 0..1, as they will be scaled by the texPos
---@param texPos TextureAtlasPosition The position of a texture inside an atlas
function MeshData.SetTexPos(texPos) end

---@return MeshData[] # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MeshData.SplitByTextureId() end

---@return userdata
function MeshData.GetType() end

---@return string
function MeshData.ToString() end

---@param obj userdata
---@return boolean
function MeshData.Equals(obj) end

---@return number
function MeshData.GetHashCode() end


