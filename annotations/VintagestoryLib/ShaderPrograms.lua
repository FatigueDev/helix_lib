---@meta

---@class ShaderPrograms
---@field Autocamera ShaderProgramAutocamera
---@field Bilateralblur ShaderProgramBilateralblur
---@field Blit ShaderProgramBlit
---@field Blockhighlights ShaderProgramBlockhighlights
---@field Blur ShaderProgramBlur
---@field Celestialobject ShaderProgramCelestialobject
---@field Chunkliquid ShaderProgramChunkliquid
---@field Chunkopaque ShaderProgramChunkopaque
---@field Chunktopsoil ShaderProgramChunktopsoil
---@field Chunktransparent ShaderProgramChunktransparent
---@field Colorgrade ShaderProgramColorgrade
---@field Debugdepthbuffer ShaderProgramDebugdepthbuffer
---@field Decals ShaderProgramDecals
---@field Entityanimated ShaderProgramEntityanimated
---@field Final ShaderProgramFinal
---@field Findbright ShaderProgramFindbright
---@field Godrays ShaderProgramGodrays
---@field Gui ShaderProgramGui
---@field Guigear ShaderProgramGuigear
---@field Guitopsoil ShaderProgramGuitopsoil
---@field Helditem ShaderProgramHelditem
---@field Luma ShaderProgramLuma
---@field Nightsky ShaderProgramNightsky
---@field Particlescube ShaderProgramParticlescube
---@field Particlesquad ShaderProgramParticlesquad
---@field Particlesquad2d ShaderProgramParticlesquad2d
---@field Shadowmapentityanimated ShaderProgramShadowmapentityanimated
---@field Shadowmapgeneric ShaderProgramShadowmapgeneric
---@field Sky ShaderProgramSky
---@field Ssao ShaderProgramSsao
---@field Standard ShaderProgramStandard
---@field Texture2texture ShaderProgramTexture2texture
---@field Transparentcompose ShaderProgramTransparentcompose
---@field Wireframe ShaderProgramWireframe
---@field Woittest ShaderProgramWoittest
ShaderPrograms = {}


---@return userdata
function ShaderPrograms.GetType() end

---@return string
function ShaderPrograms.ToString() end

---@param obj userdata
---@return boolean
function ShaderPrograms.Equals(obj) end

---@return number
function ShaderPrograms.GetHashCode() end


