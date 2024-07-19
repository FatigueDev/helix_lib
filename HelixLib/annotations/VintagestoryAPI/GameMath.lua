---@meta

-- A large set of useful game mathematics functions
---@class GameMath
---@field TWOPI number 360°
---@field PI number 180°
---@field PIHALF number 90°
---@field DEG2RAD_DOUBLE number
---@field DEG2RAD number
---@field RAD2DEG number
GameMath = {}


---@param value number
---@return number
function GameMath.Sin(value) end

---@param value number
---@return number
function GameMath.Cos(value) end

---@param value number
---@return number
function GameMath.Acos(value) end

---@param value number
---@return number
function GameMath.Asin(value) end

---@param value number
---@return number
function GameMath.Tan(value) end

---@param value number
---@return number
function GameMath.Sin(value) end

---@param value number
---@return number
function GameMath.Cos(value) end

---@param value number
---@return number
function GameMath.Acos(value) end

---@param value number
---@return number
function GameMath.Asin(value) end

---@param value number
---@return number
function GameMath.Tan(value) end

-- Faster Sin at the cost of lower accuracy
---@param rad number
---@return number
function GameMath.FastSin(rad) end

-- Faster Cos at the cost of lower accuracy
---@param rad number
---@return number
function GameMath.FastCos(rad) end

-- Faster Sin at the cost of lower accuracy
---@param deg number
---@return number
function GameMath.FastSinDeg(deg) end

-- Faster Cos at the cost of lower accuracy
---@param deg number
---@return number
function GameMath.FastCosDeg(deg) end

---@param value number
---@return number
function GameMath.Sqrt(value) end

---@param value number
---@return number
function GameMath.Sqrt(value) end

---@param a number
---@param b number
---@param c number
---@return number
function GameMath.RootSumOfSquares(a, b, c) end

---@param a number
---@param b number
---@param c number
---@return number
function GameMath.SumOfSquares(a, b, c) end

---@param a number
---@return number
function GameMath.Square(a) end

-- Force val to be inside a certain range
---@param val number
---@param min number
---@param max number
---@return number
function GameMath.Clamp(val, min, max) end

-- Force val to be inside a certain range
---@param val number
---@param min number
---@param max number
---@return number
function GameMath.Clamp(val, min, max) end

-- Force val to be inside a certain range
---@param val number
---@param min number
---@param max number
---@return number
function GameMath.Clamp(val, min, max) end

-- Force val to be inside a certain range
---@param val number
---@param min number
---@param max number
---@return number
function GameMath.Clamp(val, min, max) end

-- Force val to be outside a certain range
---@param val number
---@param atLeastNeg number
---@param atLeastPos number
---@return number
function GameMath.InverseClamp(val, atLeastNeg, atLeastPos) end

-- C#'s %-Operation is actually not modulo but remainder, so this is the actual modulo function that ensures positive numbers as return value
---@param k number
---@param n number
---@return number
function GameMath.Mod(k, n) end

---@param k number
---@param n number
---@return number
function GameMath.Mod(k, n) end

-- C#'s %-Operation is actually not modulo but remainder, so this is the actual modulo function that ensures positive numbers as return value
---@param k number
---@param n number
---@return number
function GameMath.Mod(k, n) end

-- C#'s %-Operation is actually not modulo but remainder, so this is the actual modulo function that ensures positive numbers as return value
---@param k number
---@param n number
---@return number
function GameMath.Mod(k, n) end

-- Treats given value as a statistical average. Example: 2.1 will turn into 2 90% of the times and into 3 10% of times.
---@param rand Random
---@param value number
---@return number
function GameMath.RoundRandom(rand, value) end

-- Treats given value as a statistical average. Example: 2.1 will turn into 2 90% of the times and into 3 10% of times.
---@param rand LCGRandom An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@param value number
---@return number
function GameMath.RoundRandom(rand, value) end

-- Returns the shortest distance between 2 angles
-- See also https://stackoverflow.com/a/14498790/1873041
---@param start number
---@param end number
---@return number
function GameMath.AngleDegDistance(start, end) end

-- Returns the shortest distance between 2 angles
-- See also https://stackoverflow.com/a/14498790/1873041
---@param start number
---@param end number
---@return number
function GameMath.AngleRadDistance(start, end) end

-- For angles in radians, normalise to the range 0 to 2 * PI and also, if barely close to a right angle, set it to a right angle (fixes loss of precision after multiple rotation operations etc.)
---@param angleRad number
---@return number
function GameMath.NormaliseAngleRad(angleRad) end

-- Returns the smallest number, ignoring the sign of either value. Examples:
-- Smallest(1, 3) returns 1
-- Smallest(-20, 3) returns 3
---@param a number
---@param b number
---@return number
function GameMath.Smallest(a, b) end

-- Returns the smallest number, ignoring the sign of either value
---@param a number
---@param b number
---@return number
function GameMath.Largest(a, b) end

-- Returns the shortest distance between 2 values that are cyclical (e.g. angles, daytime hours, etc.)
-- See also https://stackoverflow.com/a/14498790/1873041
---@param start number
---@param end number
---@param period number
---@return number
function GameMath.CyclicValueDistance(start, end, period) end

-- Returns the shortest distance between 2 values that are cyclical (e.g. angles, daytime hours, etc.)
-- See also https://stackoverflow.com/a/14498790/1873041
---@param start number
---@param end number
---@param period number
---@return number
function GameMath.CyclicValueDistance(start, end, period) end

-- Generates a gaussian blur kernel to be used when blurring something
---@param sigma? number
---@param size? number
---@return number
function GameMath.GenGaussKernel(sigma, size) end

-- Does linear interpolation on a 2d map for each of the 4 bytes individually (e.g. RGBA color). It's basically a bilinear zoom of an image like you know it from common image editing software. Only intended for square images.
-- The resulting map will be without any paddding (also requires at least 1 padding at bottom and left side)
---@param map IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
---@param zoom number
---@return number
function GameMath.BiLerpColorMap(map, zoom) end

-- Linear Interpolates one selected bytes of the 4 ints
---@param lx number
---@param ly number
---@param byteIndex number
---@param leftTop number
---@param rightTop number
---@param leftBottom number
---@param rightBottom number
---@return number
function GameMath.BiLerpByte(lx, ly, byteIndex, leftTop, rightTop, leftBottom, rightBottom) end

-- Linear Interpolates one selected bytes of the 4 ints
---@param lx number
---@param ly number
---@param byteIndex number
---@param leftTop number
---@param rightTop number
---@param leftBottom number
---@param rightBottom number
---@return number
function GameMath.BiSerpByte(lx, ly, byteIndex, leftTop, rightTop, leftBottom, rightBottom) end

-- Linear Interpolates the bytes of the int individually (i.e. interpolates RGB values individually)
---@param lx number
---@param ly number
---@param leftTop number
---@param rightTop number
---@param leftBottom number
---@param rightBottom number
---@return number
function GameMath.BiLerpRgbaColor(lx, ly, leftTop, rightTop, leftBottom, rightBottom) end

-- Linear Interpolates the lower 3 bytes of the int individually (i.e. interpolates RGB values individually)
---@param lx number
---@param ly number
---@param leftTop number
---@param rightTop number
---@param leftBottom number
---@param rightBottom number
---@return number
function GameMath.BiLerpRgbColor(lx, ly, leftTop, rightTop, leftBottom, rightBottom) end

-- Smoothstep Interpolates the lower 3 bytes of the int individually (i.e. interpolates RGB values individually)
---@param lx number
---@param ly number
---@param leftTop number
---@param rightTop number
---@param leftBottom number
---@param rightBottom number
---@return number
function GameMath.BiSerpRgbColor(lx, ly, leftTop, rightTop, leftBottom, rightBottom) end

-- Linear Interpolates the lower 3 bytes of the int individually (i.e. interpolates RGB values individually)
---@param lx number
---@param left number
---@param right number
---@return number
function GameMath.LerpRgbColor(lx, left, right) end

-- Linear Interpolates the 4 bytes of the int individually (i.e. interpolates RGB values individually)
---@param lx number
---@param left number
---@param right number
---@return number
function GameMath.LerpRgbaColor(lx, left, right) end

-- Linear Interpolates a single byte
---@param lx number
---@param left number
---@param right number
---@return number
function GameMath.LerpByte(lx, left, right) end

-- Basic Bilinear Lerp
---@param topleft number
---@param topright number
---@param botleft number
---@param botright number
---@param x number
---@param z number
---@return number
function GameMath.BiLerp(topleft, topright, botleft, botright, x, z) end

-- Basic Bilinear Lerp
---@param topleft number
---@param topright number
---@param botleft number
---@param botright number
---@param x number
---@param z number
---@return number
function GameMath.BiLerp(topleft, topright, botleft, botright, x, z) end

-- Same as Lerp
---@param v0 number
---@param v1 number
---@param t number
---@return number
function GameMath.Mix(v0, v1, t) end

-- Same as Lerp
---@param v0 number
---@param v1 number
---@param t number
---@return number
function GameMath.Mix(v0, v1, t) end

-- Basic Lerp
---@param v0 number
---@param v1 number
---@param t number
---@return number
function GameMath.Lerp(v0, v1, t) end

-- Basic Lerp
---@param v0 number
---@param v1 number
---@param t number
---@return number
function GameMath.Lerp(v0, v1, t) end

-- Smooth Interpolation using inlined Smoothstep
---@param v0 number
---@param v1 number
---@param t number
---@return number
function GameMath.Serp(v0, v1, t) end

-- Unlike the other implementation here, which uses the default "uniform"
-- treatment of t, this computation is used to calculate the same values but
-- introduces the ability to "parameterize" the t values used in the
-- calculation. This is based on Figure 3 from
-- http://www.cemyuksel.com/research/catmullrom_param/catmullrom.pdf
---@param t number
---@param p number
---@param time number
---@return number
function GameMath.CPCatmullRomSplineLerp(t, p, time) end

-- Better Lerp but more CPU intensive, see also https://en.wikipedia.org/wiki/Smoothstep
---@param x number
---@return number
function GameMath.SmoothStep(x) end

-- Better Lerp but more CPU intensive, see also https://en.wikipedia.org/wiki/Smoothstep
---@param x number
---@return number
function GameMath.SmoothStep(x) end

-- Better Lerp but more CPU intensive, see also https://en.wikipedia.org/wiki/Smoothstep
---@param edge0 number
---@param edge1 number
---@param x number
---@return number
function GameMath.Smootherstep(edge0, edge1, x) end

-- Better Lerp but more CPU intensive, see also https://en.wikipedia.org/wiki/Smoothstep
---@param edge0 number
---@param edge1 number
---@param x number
---@return number
function GameMath.Smootherstep(edge0, edge1, x) end

-- Better Lerp but more CPU intensive, see also https://en.wikipedia.org/wiki/Smoothstep. x must be in range of 0..1
---@param x number
---@return number
function GameMath.Smootherstep(x) end

-- Returns a value between 0..1. Returns 0 if val is smaller than left or greater than right. For val == (left+right)/2 the return value is 1. Every other value is a linear interpolation based on the distance to the middle value. Ascii art representation:
-- 
--             1  |      /\
--   |     /  \
--             0.5|    /    \
--   |   /      \
--   |  /        \
--             0  __/__________\______
--  left          right
---@param val number
---@param left number
---@param right number
---@return number
function GameMath.TriangleStep(val, left, right) end

-- Returns a value between 0..1. Returns 0 if val is smaller than left or greater than right. For val == (left+right)/2 the return value is 1. Every other value is a linear interpolation based on the distance to the middle value. Ascii art representation:
-- 
--             1  |      /\
--   |     /  \
--             0.5|    /    \
--   |   /      \
--   |  /        \
--             0  __/__________\______
--  left          right
---@param val number
---@param left number
---@param right number
---@return number
function GameMath.TriangleStep(val, left, right) end

-- Same as TriangleStep but skipping the step to calc mid and range. 
---@param val number
---@param mid number
---@param range number
---@return number
function GameMath.TriangleStepFast(val, mid, range) end

---@param values number
---@return number
function GameMath.Max(values) end

---@param values number
---@return number
function GameMath.Max(values) end

---@param values number
---@return number
function GameMath.Max(values) end

---@param values number
---@return number
function GameMath.Min(values) end

---@param values number
---@return number
function GameMath.Min(values) end

---@param a number
---@param b number
---@param smoothingFactor number
---@return number
function GameMath.SmoothMin(a, b, smoothingFactor) end

---@param a number
---@param b number
---@param smoothingFactor number
---@return number
function GameMath.SmoothMax(a, b, smoothingFactor) end

---@param a number
---@param b number
---@param smoothingFactor number
---@return number
function GameMath.SmoothMin(a, b, smoothingFactor) end

---@param a number
---@param b number
---@param smoothingFactor number
---@return number
function GameMath.SmoothMax(a, b, smoothingFactor) end

---@param input string
---@return number
function GameMath.Crc32(input) end

---@param input number
---@return number
function GameMath.Crc32(input) end

-- Pretty much taken directly from the string.GetHashCode() implementation, but on these methods the documentation states: "You should never persist or use a hash code outside the application domain in which it was created, [...]."
-- Hence, this is one basic 32bit bit implementation that can be used in a platform independent, persistent way.
---@param text string
---@return number
function GameMath.DotNetStringHash(text) end

-- See also https://msdn.microsoft.com/en-us/library/system.security.cryptography.md5%28v=vs.110%29.aspx
---@param input string
---@return string
function GameMath.Md5Hash(input) end

-- A single iteration of Bob Jenkins' One-At-A-Time hashing algorithm.
---@param x number
---@param count number
---@return number
function GameMath.oaatHashMany(x, count) end

-- Bob Jenkins' One-At-A-Time hashing algorithm
---@param x number
---@return number
function GameMath.oaatHashUMany(x) end

-- Bob Jenkins' One-At-A-Time hashing algorithm. Fast, but not very random.
---@param v Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function GameMath.oaatHash(v) end

-- Bob Jenkins' One-At-A-Time hashing algorithm. Fast, but not very random.
---@param x number
---@param y number
---@return number
function GameMath.oaatHash(x, y) end

-- Bob Jenkins' One-At-A-Time hashing algorithm. Fast, but not very random.
---@param v Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function GameMath.oaatHash(v) end

-- Bob Jenkins' One-At-A-Time hashing algorithm. Fast, but not very random.
---@param x number
---@param y number
---@param z number
---@return number
function GameMath.oaatHash(x, y, z) end

-- Bob Jenkins' One-At-A-Time hashing algorithm. Fast, but not very random.
---@param x number
---@param y number
---@param z number
---@return number
function GameMath.oaatHashU(x, y, z) end

-- Bob Jenkins' One-At-A-Time hashing algorithm. Fast, but not very random.
---@param v Vec4i Represents a vector of 4 ints. Go bug Tyron if you need more utility methods in this class.
---@return number
function GameMath.oaatHash(v) end

-- A really bad, but very fast hashing method.
---@param x number
---@param y number
---@return number
function GameMath.PrettyBadHash(x, y) end

-- A not so fast, but higher quality than oaatHash(). See also https://en.wikipedia.org/wiki/MurmurHash. Includes a modulo operation.
---@param x number
---@param y number
---@param z number
---@param mod number
---@return number
function GameMath.MurmurHash3Mod(x, y, z, mod) end

-- A not so fast, but higher quality than oaatHash(). See also https://en.wikipedia.org/wiki/MurmurHash
---@param x number
---@param y number
---@param z number
---@return number
function GameMath.MurmurHash3(x, y, z) end

-- Quasirandom sequence by Martin Roberts (http://extremelearning.com.au/unreasonable-effectiveness-of-quasirandom-sequences/)
---@param n number
---@return number
function GameMath.R2Sequence1D(n) end

-- Quasirandom sequence by Martin Roberts (http://extremelearning.com.au/unreasonable-effectiveness-of-quasirandom-sequences/)
---@param n number
---@return Vec2d # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function GameMath.R2Sequence2D(n) end

-- Quasirandom sequence by Martin Roberts (http://extremelearning.com.au/unreasonable-effectiveness-of-quasirandom-sequences/)
---@param n number
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function GameMath.R2Sequence3D(n) end

---@param x1 number
---@param x2 number
function GameMath.FlipVal(x1, x2) end

---@param x1 number
---@param x2 number
function GameMath.FlipVal(x1, x2) end

---@param rand Random
---@param array T[]
function GameMath.Shuffle(rand, array) end

---@param rand Random
---@param array table
function GameMath.Shuffle(rand, array) end

---@param rand LCGRandom An lcg random generator, particularly suitable for worldgen See also https://en.wikipedia.org/wiki/Linear_congruential_generator
---@param array table
function GameMath.Shuffle(rand, array) end

-- Plot a 3d line, see also http://members.chello.at/~easyfilter/bresenham.html
---@param x0 number
---@param y0 number
---@param z0 number
---@param x1 number
---@param y1 number
---@param z1 number
---@param onPlot PlotDelegate3D
function GameMath.BresenHamPlotLine3d(x0, y0, z0, x1, y1, z1, onPlot) end

-- Plot a 3d line, see also http://members.chello.at/~easyfilter/bresenham.html
---@param x0 number
---@param y0 number
---@param z0 number
---@param x1 number
---@param y1 number
---@param z1 number
---@param onPlot PlotDelegate3DBlockPos
function GameMath.BresenHamPlotLine3d(x0, y0, z0, x1, y1, z1, onPlot) end

-- Plot a 2d line, see also http://members.chello.at/~easyfilter/bresenham.html
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param onPlot PlotDelegate2D
function GameMath.BresenHamPlotLine2d(x0, y0, x1, y1, onPlot) end

---@param q Vec4f
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function GameMath.ToEulerAngles(q) end

---@param q Vec4d
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function GameMath.ToEulerAngles(q) end

---@param intBools number
---@return number
function GameMath.IntFromBools(intBools) end

---@param bools boolean
---@return number
function GameMath.IntFromBools(bools) end

---@param bools boolean
---@param v number
function GameMath.BoolsFromInt(bools, v) end

---@return userdata
function GameMath.GetType() end

---@return string
function GameMath.ToString() end

---@param obj userdata
---@return boolean
function GameMath.Equals(obj) end

---@return number
function GameMath.GetHashCode() end


