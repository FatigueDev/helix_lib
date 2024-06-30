---@meta

-- Interface to render something on to the clients screens. Used for block entitites.
---@class IRenderer:  IDisposable
---@field RenderOrder number 0 = drawn first, 1 = drawn last Default render orders by render stage: Before: 0 = Ambient Manager 0 = Camera  Opaque: 0.1 = Blue sky (Icosahedron) 0.2 = Night skybox 0.3 = Sun and moon 0.37 = Terrain opaque 0.4 = Enitities 0.5 = Decals 0.5 = Debug wireframe 0.6 = particles 0.7 = Cinematic camera line preview 0.8 = fp held item 0.9 = held item opaque custom renderer  OIT: 0.2 = Frame buffer debug screen 0.35 = Clouds 0.37 = Terrain oit 0.4 = Enitities 0.6 = particles 0.9 = held item oit custom renderer  Shadow far: 0 = shadow map init 0.37 = Terrain shadow far 0.4 = Enitities  Shadow far done: 1 = shadow map finish  Shadow near: 0 = shadow map init 0.37 = Terrain shadow near 0.4 = Enitities  Shadow near done: 1 = shadow map finish Ortho: 0.2 = Frame buffer debug screen 0.4 = Enitities 0.9 = held item ortho custom renderer 0.95 = sleeping overlay 0.98 = bow/spear aiming reticle 1 = Gui manager 1.02 = crosshair and mouse cursor  AfterFinalComposition: 2 = screenshot  Done: 0.1 = gui manager 2 = screenshot  0.98 = Cinematic camera camera advancing and frame capture when recording 0.99 = Chunk Tesselator Manager (uploads new/modified chunk meshes) 0.999 = Compress chunks scan 1 = video recorder
---@field RenderRange number Within what range to the player OnRenderFrame() should be called (currently not used!)
IRenderer = {}


---@return number
function IRenderer.get_RenderOrder() end

---@return number
function IRenderer.get_RenderRange() end

-- Called every frame for rendering whatever you need to render
---@param deltaTime number
---@param stage EnumRenderStage
function IRenderer.OnRenderFrame(deltaTime, stage) end


