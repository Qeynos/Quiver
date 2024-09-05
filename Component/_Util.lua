local Color = require "Shiver/Color.lua"
local Widget = require "Shiver/Widget.lua"

---@class IMouseInteract
---@field isEnabled boolean
---@field isHover boolean
---@field isMouseDown boolean

local _COLOR_NORMAL = Color:Lift({ 1.0, 0.82, 0.0 })
local _COLOR_HOVER = Color:Lift({ 1.0, 0.6, 0.0 })
local _COLOR_MOUSEDOWN = Color:Lift({ 1.0, 0.3, 0.0 })
local _COLOR_DISABLE = Color:Lift({ 0.3, 0.3, 0.3 })

---@param self IMouseInteract
---@return number, number, number
local SelectColor = function(self)
	if not self.isEnabled then
		return _COLOR_DISABLE:Rgb()
	elseif self.isMouseDown then
		return _COLOR_MOUSEDOWN:Rgb()
	elseif self.isHover then
		return _COLOR_HOVER:Rgb()
	else
		return _COLOR_NORMAL:Rgb()
	end
end

---@param self IMouseInteract
---@param frame Frame
---@param text nil|string
local ToggleTooltip = function(self, frame, text)
	if text ~= nil then
		if self.isHover then
			Widget.PositionTooltip(frame)
			GameTooltip:AddLine(text, nil, nil, nil, 1)
			GameTooltip:Show()
		else
			GameTooltip:Hide()
			GameTooltip:ClearLines()
		end
	end
end

return {
	SelectColor = SelectColor,
	ToggleTooltip = ToggleTooltip,
}
