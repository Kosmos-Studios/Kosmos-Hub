-- Roblox Graphics Enhancer - Edit By Darkk#1101/DarksGitHub
local light = game.Lighting
for i, v in pairs(light:GetChildren()) do
	v:Destroy()
end
-- Adding Effects To The Workspace
local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light

local config = {

	Terrain = true;
	ColorCorrection = true;
	Sun = true;
	Lighting = true;
	BloomEffect = true;
	
}

-- settings {
-- I edited these so the game would look better
color.Enabled = false
color.Contrast = 0.25
color.Brightness = 0.175
color.Saturation = 0.315
color.TintColor = Color3.fromRGB(255, 222, 211)

sun.Enabled = false
sun.Intensity = 0.3
sun.Spread = 1

bloom.Enabled = true
bloom.Intensity = 0.15
bloom.Size = 48
bloom.Threshold = 1

blur.Enabled = true
blur.Size = 1.75

-- settings }
-- I edited these so the game would look better
if config.ColorCorrection then
	color.Enabled = true
end


if config.Sun then
	sun.Enabled = true
end


if config.Terrain then
	-- settings {
	ter.WaterColor = Color3.fromRGB(10, 10, 24)
	ter.WaterWaveSize = 0.30
	ter.WaterWaveSpeed = 26
	ter.WaterTransparency = 1
	ter.WaterReflectance = 0.1
	-- settings }
end


if config.Lighting then
	-- settings {
	light.Ambient = Color3.fromRGB(0, 0, 0)
	light.Brightness = 4.25
	light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
	light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
	light.ExposureCompensation = 0
	light.FogColor = Color3.fromRGB(132, 132, 132)
	light.GlobalShadows = true
	light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
	light.Outlines = false
	-- settings }
end
