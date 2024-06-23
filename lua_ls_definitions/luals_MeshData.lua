---@meta MeshData
---@class MeshData: Object
---@field ctor fun(initialiseArrays: boolean): MeshData
---@overload fun(capacityVertices: number, capacityIndices: number, withNormals: boolean, withUv: boolean, withRgba: boolean, withFlags: boolean): MeshData
---@overload fun(capacity: number): MeshData
---@field get_RenderPasses fun(): Int16[]
---@field GetVerticesCount fun(): number
---@field SetVerticesCount fun(value: number): nil
---@field GetIndicesCount fun(): number
---@field SetIndicesCount fun(value: number): nil
---@field get_XyzCount fun(): number
---@field get_RgbaCount fun(): number
---@field get_Rgba2Count fun(): number
---@field get_FlagsCount fun(): number
---@field get_UvCount fun(): number
---@field GetXyz fun(): Single[]
---@field SetXyz fun(p: Single[]): nil
---@field GetRgba fun(): number[]
---@field SetRgba fun(p: number[]): nil
---@field GetUv fun(): Single[]
---@field SetUv fun(p: Single[]): nil
---@field GetIndices fun(): number[]
---@field SetIndices fun(p: number[]): nil
---@field GetMode fun(): EnumDrawMode
---@field SetMode fun(p: EnumDrawMode): nil
---@field Translate fun(offset: Vec3f): MeshData
---@overload fun(x: Single, y: Single, z: Single): MeshData
---@field Rotate fun(origin: Vec3f, radX: Single, radY: Single, radZ: Single): MeshData
---@field Scale fun(origin: Vec3f, scaleX: Single, scaleY: Single, scaleZ: Single): MeshData
---@field ModelTransform fun(transform: ModelTransform): MeshData
---@field MatrixTransform fun(matrix: Single[]): MeshData
---@overload fun(matrix: Single[], vec: Single[], origin: Vec3f): MeshData
---@overload fun(matrix: Span`1, vec: Single[], origin: Vec3f): MeshData
---@overload fun(matrix: Double[]): MeshData
---@field WithColorMaps fun(): MeshData
---@field WithXyzFaces fun(): MeshData
---@field WithRenderpasses fun(): MeshData
---@field WithNormals fun(): MeshData
---@field AddMeshData fun(data: MeshData, filterByRenderPass: EnumChunkRenderPass): nil
---@overload fun(data: MeshData, dele: MeshDataFilterDelegate): nil
---@field getTextureIndex fun(textureId: number): number
---@field AddMeshData fun(sourceMesh: MeshData): nil
---@overload fun(sourceMesh: MeshData, xOffset: Single, yOffset: Single, zOffset: Single): nil
---@field RemoveIndex fun(): nil
---@field RemoveVertex fun(): nil
---@field RemoveVertices fun(count: number): nil
---@field AddVertexSkipTex fun(x: Single, y: Single, z: Single, color: number): nil
---@field AddVertex fun(x: Single, y: Single, z: Single, u: Single, v: Single): nil
---@overload fun(x: Single, y: Single, z: Single, u: Single, v: Single, color: number): nil
---@overload fun(x: Single, y: Single, z: Single, u: Single, v: Single, color: number[]): nil
---@field AddWithFlagsVertex fun(x: Single, y: Single, z: Single, u: Single, v: Single, color: number, flags: number): nil
---@field AddVertexWithFlags fun(x: Single, y: Single, z: Single, u: Single, v: Single, color: number, flags: number): nil
---@field AddVertexWithFlagsSkipColor fun(x: Single, y: Single, z: Single, u: Single, v: Single, flags: number): nil
---@field AddVertexWithFlagsSkipTexture fun(x: Single, y: Single, z: Single, u: Single, v: Single, color: number, flags: number): nil
---@field SetVertexFlags fun(flag: number): nil
---@field AddNormal fun(normalizedX: Single, normalizedY: Single, normalizedZ: Single): nil
---@overload fun(facing: BlockFacing): nil
---@field AddColorMapIndex fun(climateMapIndex: number, seasonMapIndex: number): nil
---@field AddRenderPass fun(renderPass: Int16): nil
---@field AddXyzFace fun(faceIndex: number): nil
---@field AddTextureId fun(textureId: number): nil
---@field AddIndex fun(index: number): nil
---@field AddIndices fun(i1: number, i2: number, i3: number, i4: number, i5: number, i6: number): nil
---@overload fun(indices: number[]): nil
---@field GrowIndexBuffer fun(): nil
---@overload fun(byAtLeastQuantity: number): nil
---@field GrowNormalsBuffer fun(): nil
---@field GrowVertexBuffer fun(): nil
---@field CompactBuffers fun(): nil
---@field Clone fun(): MeshData
---@field DisposeBasicData fun(): nil
---@field CloneUsingRecycler fun(): MeshData
---@field Dispose fun(): nil
---@field EmptyClone fun(): MeshData
---@field Clear fun(): MeshData
---@field SizeInBytes fun(): number
---@field WithTexPos fun(texPos: TextureAtlasPosition): MeshData
---@field SetTexPos fun(texPos: TextureAtlasPosition): nil
---@field SplitByTextureId fun(): MeshData[]
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field RenderPasses Int16[]
---@field XyzCount Int16[]
---@field RgbaCount Int16[]
---@field Rgba2Count Int16[]
---@field FlagsCount Int16[]
---@field UvCount Int16[]
---@field TextureIds Int16[]
---@field xyz Int16[]
---@field Flags Int16[]
---@field HasAnyWindModeSet Int16[]
---@field Normals Int16[]
---@field Uv Int16[]
---@field Rgba Int16[]
---@field Indices Int16[]
---@field TextureIndices Int16[]
---@field CustomFloats Int16[]
---@field CustomInts Int16[]
---@field CustomShorts Int16[]
---@field CustomBytes Int16[]
---@field XyzInstanced Int16[]
---@field UvInstanced Int16[]
---@field RgbaInstanced Int16[]
---@field Rgba2Instanced Int16[]
---@field IndicesInstanced Int16[]
---@field FlagsInstanced Int16[]
---@field XyzStatic Int16[]
---@field UvStatic Int16[]
---@field RgbaStatic Int16[]
---@field Rgba2Static Int16[]
---@field IndicesStatic Int16[]
---@field FlagsStatic Int16[]
---@field XyzOffset Int16[]
---@field UvOffset Int16[]
---@field RgbaOffset Int16[]
---@field Rgba2Offset Int16[]
---@field FlagsOffset Int16[]
---@field NormalsOffset Int16[]
---@field IndicesOffset Int16[]
---@field mode Int16[]
---@field NormalsCount Int16[]
---@field VerticesCount Int16[]
---@field IndicesCount Int16[]
---@field VerticesMax Int16[]
---@field IndicesMax Int16[]
---@field XyzFaces Int16[]
---@field XyzFacesCount Int16[]
---@field TextureIndicesCount Int16[]
---@field IndicesPerFace Int16[]
---@field VerticesPerFace Int16[]
---@field ClimateColorMapIds Int16[]
---@field SeasonColorMapIds Int16[]
---@field RenderPassesAndExtraBits Int16[]
---@field ColorMapIdsCount Int16[]
---@field RenderPassCount Int16[]
---@field Recyclable Int16[]
---@field RecyclingTime Int16[]
---@field Recycler Int16[]
---@field StandardVerticesPerFace Int16[]
---@field StandardIndicesPerFace Int16[]
---@field BaseSizeInBytes Int16[]
---@field XyzSize Int16[]
---@field NormalSize Int16[]
---@field RgbaSize Int16[]
---@field UvSize Int16[]
---@field IndexSize Int16[]
---@field FlagsSize Int16[]
---@field MeshDataFilterDelegate Int16[]
MeshData = {}