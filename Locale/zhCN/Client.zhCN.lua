local Spell = require "Locale/zhCN/Spell.zhCN.lua"
-- local Zone = require "Locale/zhCN/Zone.zhCN.lua"

return {
	CombatLog = {
		Consumes = {
			ManaPotion = "你从恢复法力中获得(.*)点法力值。",
			HealthPotion = "你的治疗药水为你恢复了(.*)点生命值。",
			Healthstone = "你的(.*)治疗石为你恢复了(.*)点生命值。",
			Tea = "你的糖水茶为你恢复了(.*)点生命值。",
		},
		Tranq = {
			Fail = "你未能驱散",
			Miss = "你的宁神射击未命中",
			Resist = "你的宁神射击被抵抗了",
		},
	},
	Spell = Spell,
	SpellReverse = Spell,-- TODO
	-- Spell = {
	-- 	-- Aspect
	-- 	["Aspect of the Beast"] = "野兽守护",
	-- 	["Aspect of the Cheetah"] = "猎豹守护",
	-- 	["Aspect of the Hawk"] = "雄鹰守护",
	-- 	["Aspect of the Monkey"] = "灵猴守护",
	-- 	["Aspect of the Pack"] = "豹群守护",
	-- 	["Aspect of the Wild"] = "野性守护",
	-- 	["Aspect of the Wolf"] = "孤狼守护",
	-- 	-- Uses Ammo
	-- 	["Aimed Shot"] = "瞄准射击",
	-- 	["Arcane Shot"] = "奥术射击",
	-- 	["Auto Shot"] = "自动射击",
	-- 	["Concussive Shot"] = "震荡射击",
	-- 	["Multi-Shot"] = "多重射击",
	-- 	["Scatter Shot"] = "驱散射击",
	-- 	["Scorpid Sting"] = "毒蝎钉刺",
	-- 	["Serpent Sting"] = "毒蛇钉刺",
	-- 	["Tranquilizing Shot"] = "宁神射击",
	-- 	["Trueshot"] = "稳固射击",
	-- 	["Viper Sting"] = "蝰蛇钉刺",
	-- 	["Wyvern Sting"] = "翼龙钉刺",
	-- 	-- Trap
	-- 	["Explosive Trap"] = "爆炸陷阱",
	-- 	["Freezing Trap"] = "冰冻陷阱",
	-- 	["Frost Trap"] = "冰霜陷阱",
	-- 	["Immolation Trap"] = "献祭陷阱",
	-- 	-- Misc
	-- 	["Call Pet"] = "召唤宠物",
	-- 	["Counterattack"] = "反击",
	-- 	["Deterrence"] = "威慑",
	-- 	["Feign Death"] = "假死",
	-- 	["Flare"] = "照明弹",
	-- 	["Quick Shots"] = "快速射击",
	-- 	["Rapid Fire"] = "急速射击",
	-- 	["Hunter's Mark"] = "猎人印记",
	-- 	["Scare Beast"] = "恐吓野兽",
	-- 	["Trueshot Aura"] = "强击光环",
	-- 	["Wing Clip"] = "摔绊",
	-- },
}
