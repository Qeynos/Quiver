local danger = function(text) DEFAULT_CHAT_FRAME:AddMessage(text, 1, 0, 0) end
local neutral = function(text) DEFAULT_CHAT_FRAME:AddMessage(text) end
local success = function(text) DEFAULT_CHAT_FRAME:AddMessage(text, 0, 1, 0) end
local warning = function(text) DEFAULT_CHAT_FRAME:AddMessage(text, 1, 0.6, 0) end

local PrintLine = {
	Danger = function(text) danger("Quiver -- " .. text) end,
	Neutral = function(text) neutral("Quiver -- " .. text) end,
	Success = function(text) success("Quiver -- " .. text) end,
	Warning = function(text) warning("Quiver -- " .. text) end,
	-- BigWigs suppresses raid messages unless you guarantee
	-- they don't match its spam filter. Adding a space works.
	-- https://github.com/CosminPOP/BigWigs/issues/2
	Raid = function(text) SendChatMessage(text.." ", "Raid") end,
	Say = function(text) SendChatMessage(text, "Say") end,
}

local PrintPrefixedF = function(callerName)
	local noNil = function(text) return text or "nil" end
	local prefix = "Quiver ["..callerName.."] -- "
	return {
		Danger = function(text) danger(prefix..noNil(text)) end,
		Neutral = function(text) neutral(prefix..noNil(text)) end,
		Success = function(text) success(prefix..noNil(text)) end,
		Warning = function(text) warning(prefix..noNil(text)) end,
	}
end

return {
	Line = PrintLine,
	PrefixedF = PrintPrefixedF,
}
