local createTooltip = function(frameName)
	local tt = CreateFrame("GameTooltip", frameName, nil, "GameTooltipTemplate")
	tt:SetScript("OnHide", function() tt:SetOwner(WorldFrame, "ANCHOR_NONE") end)
	tt:Hide()
	tt:SetFrameStrata("TOOLTIP")
	return tt
end

---Returns a function that clears the tooltip and gets a reference to it.
---@param frameName string Name for tooltip element
---@return fun(): Frame
local ResetF = function(frameName)
	local tooltip = createTooltip(frameName)
	return function()
		tooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
		return tooltip
	end
end

return {
	ResetF = ResetF,
}
