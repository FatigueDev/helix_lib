---@meta

---@class ShadowBox
---@field Width number
---@field Height number
---@field Length number
---@field minX number
---@field maxX number
---@field minY number
---@field maxY number
---@field minZ number
---@field maxZ number
---@field lightViewMatrix number
---@field farHeight number
---@field farWidth number
---@field nearHeight number
---@field nearWidth number
---@field ShadowBoxZExtend number
---@field ShadowBoxYExtend number
---@field UP Vec4d
---@field FORWARD Vec4d
---@field SHADOW_DISTANCE number
ShadowBox = {}

---@param lightViewMatrix number
---@param game ClientMain
---@return ShadowBox
function ShadowBox.ctor(lightViewMatrix, game) end

function ShadowBox.update() end

---@return number
function ShadowBox.get_Width() end

---@return number
function ShadowBox.get_Height() end

---@return number
function ShadowBox.get_Length() end

---@param rotation number
---@param forwardVector Vec4d
---@param centerNear Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param centerFar Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Vec4d[]
function ShadowBox.calculateFrustumVertices(rotation, forwardVector, centerNear, centerFar) end

---@param startPoint Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param direction Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param width number
---@param target Vec4d
function ShadowBox.calculateLightSpaceFrustumCorner(startPoint, direction, width, target) end

---@return number
function ShadowBox.getCameraRotationMatrix() end

function ShadowBox.calculateWidthsAndHeights() end

---@return userdata
function ShadowBox.GetType() end

---@return string
function ShadowBox.ToString() end

---@param obj userdata
---@return boolean
function ShadowBox.Equals(obj) end

---@return number
function ShadowBox.GetHashCode() end


