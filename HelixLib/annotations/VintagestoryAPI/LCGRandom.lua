---@meta

-- An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@class LCGRandom:  IRandom
---@field worldSeed number
---@field mapGenSeed number
---@field currentSeed number
LCGRandom = {}

---@param worldSeed number
---@return LCGRandom
function LCGRandom.ctor(worldSeed) end
---@return LCGRandom
function LCGRandom.ctor() end

-- Sets given seed
---@param worldSeed number
function LCGRandom.SetWorldSeed(worldSeed) end

-- Initializes a position dependent seed, if required
---@param xPos number
---@param zPos number
function LCGRandom.InitPositionSeed(xPos, zPos) end

-- Initializes a position dependent seed, if required
---@param xPos number
---@param yPos number
---@param zPos number
function LCGRandom.InitPositionSeed(xPos, yPos, zPos) end

-- Returns a pseudo random number from 0 - max (excluding max)
---@param max number
---@return number
function LCGRandom.NextInt(max) end

-- Returns a random number from 0 - int.MaxValue (inclusive)
---@return number
function LCGRandom.NextInt() end

-- Returns a random number from 0.0F - 1.0F (inclusive)
---@return number
function LCGRandom.NextFloat() end

-- Returns a random number from -1.0F - 1.0F (inclusive) with a bias towards the zero value (triangle graph, similar to how rolling two 6-sided dice and adding the result is most likely to yield 7)
-- Precise to better than 15 binary digits / better than 4 significant figures in decimal
---@return number
function LCGRandom.NextFloatMinusToPlusOne() end

-- Returns a random number from 0.0 - 1.0 (inclusive)
---@return number
function LCGRandom.NextDouble() end

---@return userdata
function LCGRandom.GetType() end

---@return string
function LCGRandom.ToString() end

---@param obj userdata
---@return boolean
function LCGRandom.Equals(obj) end

---@return number
function LCGRandom.GetHashCode() end


