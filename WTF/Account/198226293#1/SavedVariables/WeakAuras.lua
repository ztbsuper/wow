
WeakAurasSaved = {
	["displays"] = {
		["武僧"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["frameStrata"] = 1,
			["untrigger"] = {
			},
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["borderEdge"] = "None",
			["id"] = "武僧",
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "group",
		},
		["猎人"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"急速射击", -- [1]
				"夺命射击", -- [2]
				"夺命黑鸦", -- [3]
				"奇美拉射击", -- [4]
				"瞄准射击", -- [5]
				"飞刃", -- [6]
				"弹幕射击", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 0,
			["border"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["borderOffset"] = 5,
			["selfPoint"] = "BOTTOMLEFT",
			["trigger"] = {
				["names"] = {
				},
				["type"] = "aura",
				["debuffType"] = "HELPFUL",
				["unit"] = "player",
			},
			["frameStrata"] = 1,
			["untrigger"] = {
			},
			["regionType"] = "group",
			["borderInset"] = 11,
			["numTriggers"] = 1,
			["borderEdge"] = "None",
			["id"] = "猎人",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["load"] = {
				["role"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["expanded"] = true,
		},
		["飞刃"] = {
			["xOffset"] = -60.3731689453125,
			["yOffset"] = 187,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 117050,
				["subeventSuffix"] = "_CAST_START",
				["use_remaining"] = true,
				["remaining_operator"] = "<=",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["remaining"] = "2.5",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 16,
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "猎人",
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.730000019073486, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_charges"] = false,
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["use_targetRequired"] = false,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 117050,
					},
					["untrigger"] = {
						["spellName"] = 117050,
					},
				}, -- [1]
			},
			["id"] = "飞刃",
			["untrigger"] = {
				["spellName"] = 117050,
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_glow"] = true,
					["glow_frame"] = "WeakAuras:飞刃",
					["glow_action"] = "show",
				},
			},
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["disjunctive"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["瞄准射击"] = {
			["xOffset"] = 79.288818359375,
			["yOffset"] = 187,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["remaining_operator"] = "<=",
				["subeventPrefix"] = "SPELL",
				["remaining"] = "2",
				["custom_hide"] = "timed",
				["debuffType"] = "HELPFUL",
				["use_powertype"] = false,
				["spellName"] = 19434,
				["powertype"] = 3,
				["use_remaining"] = true,
				["power"] = "50",
				["unevent"] = "auto",
				["power_operator"] = ">=",
				["names"] = {
				},
				["event"] = "Power",
				["use_percentpower"] = true,
				["type"] = "status",
				["use_spellName"] = true,
				["use_power"] = false,
				["subeventSuffix"] = "_CAST_START",
				["unit"] = "player",
				["use_unit"] = true,
				["percentpower"] = "45",
				["percentpower_operator"] = ">=",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "猎人",
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.624242126941681, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["untrigger"] = {
				["use_unit"] = true,
				["unit"] = "player",
				["spellName"] = 19434,
			},
			["additional_triggers"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["stickyDuration"] = false,
			["id"] = "瞄准射击",
			["displayIcon"] = "Interface\\Icons\\INV_Spear_07",
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["夺命黑鸦"] = {
			["xOffset"] = 6.826904296875,
			["yOffset"] = 187,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["spellName"] = 131894,
				["subeventSuffix"] = "_CAST_START",
				["use_remaining"] = true,
				["remaining_operator"] = "<=",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["remaining"] = "4",
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["single"] = 13,
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "猎人",
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.74545431137085, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["use_targetRequired"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 131894,
					},
					["untrigger"] = {
						["spellName"] = 131894,
					},
				}, -- [1]
			},
			["id"] = "夺命黑鸦",
			["untrigger"] = {
				["spellName"] = 131894,
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["disjunctive"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["弹幕射击"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.624242126941681, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["stacksPoint"] = "BOTTOMRIGHT",
			["parent"] = "猎人",
			["untrigger"] = {
				["spellName"] = 120360,
			},
			["anchorPoint"] = "CENTER",
			["yOffset"] = 34.1333312988281,
			["regionType"] = "icon",
			["icon"] = true,
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = true,
					["glow_action"] = "show",
					["glow_frame"] = "AceGUI-3.0EditBox1",
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["trigger"] = {
				["type"] = "status",
				["debuffType"] = "HELPFUL",
				["subeventSuffix"] = "_CAST_START",
				["names"] = {
				},
				["remaining_operator"] = "<=",
				["event"] = "Cooldown Progress (Spell)",
				["unit"] = "player",
				["subeventPrefix"] = "SPELL",
				["remaining"] = "3",
				["unevent"] = "auto",
				["use_unit"] = true,
				["use_remaining"] = true,
				["use_spellName"] = true,
				["spellName"] = 120360,
				["custom_hide"] = "timed",
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["id"] = "弹幕射击",
			["font"] = "Friz Quadrata TT",
			["numTriggers"] = 1,
			["xOffset"] = -64.0001220703125,
			["height"] = 64,
			["load"] = {
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldown"] = true,
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["急速射击"] = {
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.503030568361282, -- [4]
			},
			["parent"] = "猎人",
			["stacksPoint"] = "BOTTOMRIGHT",
			["anchorPoint"] = "CENTER",
			["untrigger"] = {
				["spellName"] = 3045,
			},
			["regionType"] = "icon",
			["xOffset"] = -129.706665039063,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 1,
			["customTextUpdate"] = "update",
			["id"] = "急速射击",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["event"] = "Action Usable",
				["unit"] = "player",
				["spellName"] = 3045,
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["width"] = 64,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["stickyDuration"] = false,
			["font"] = "Friz Quadrata TT",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["height"] = 64,
			["yOffset"] = -72.8178100585938,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["夺命射击"] = {
			["xOffset"] = 143.643615722656,
			["yOffset"] = 31.5733642578125,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["spellName"] = 53351,
				["event"] = "Action Usable",
				["unit"] = "player",
				["use_targetRequired"] = false,
				["use_spellName"] = true,
				["use_unit"] = true,
				["unevent"] = "auto",
				["subeventPrefix"] = "SPELL",
				["names"] = {
				},
				["debuffType"] = "HELPFUL",
				["custom_hide"] = "timed",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "猎人",
			["disjunctive"] = true,
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["stickyDuration"] = false,
			["id"] = "夺命射击",
			["icon"] = true,
			["frameStrata"] = 1,
			["width"] = 64,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["numTriggers"] = 2,
			["inverse"] = false,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["remaining_operator"] = "<=",
						["event"] = "Cooldown Progress (Spell)",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["remaining"] = "2",
						["use_remaining"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 53351,
					},
					["untrigger"] = {
						["spellName"] = 53351,
					},
				}, -- [1]
			},
			["untrigger"] = {
				["spellName"] = 53351,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.733332961797714, -- [4]
			},
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["奇美拉射击"] = {
			["xOffset"] = -123.591735839844,
			["yOffset"] = 187,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["icon"] = true,
			["fontFlags"] = "None",
			["useTooltip"] = false,
			["selfPoint"] = "CENTER",
			["trigger"] = {
				["remaining_operator"] = "<=",
				["names"] = {
				},
				["remaining"] = "2.5",
				["debuffType"] = "HELPFUL",
				["use_remaining"] = true,
				["custom_type"] = "status",
				["use_charges"] = false,
				["use_unit"] = true,
				["event"] = "Cooldown Progress (Spell)",
				["type"] = "status",
				["subeventSuffix"] = "_CAST_START",
				["use_spellName"] = true,
				["unevent"] = "auto",
				["unit"] = "player",
				["check"] = "update",
				["spellName"] = 53209,
				["custom_hide"] = "timed",
				["subeventPrefix"] = "SPELL",
			},
			["desaturate"] = false,
			["font"] = "Friz Quadrata TT",
			["height"] = 64,
			["load"] = {
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "HUNTER",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["use_zone"] = false,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["displayStacks"] = "%s",
			["regionType"] = "icon",
			["parent"] = "猎人",
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.67272686958313, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["additional_triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["use_spellName"] = true,
						["use_targetRequired"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 53209,
					},
					["untrigger"] = {
						["spellName"] = 53209,
					},
				}, -- [1]
			},
			["id"] = "奇美拉射击",
			["untrigger"] = {
				["use_unit"] = true,
				["use_spellName"] = true,
				["unit"] = "player",
				["spellName"] = 53209,
			},
			["frameStrata"] = 1,
			["width"] = 64,
			["inverse"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
				},
			},
			["numTriggers"] = 2,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = true,
			["disjunctive"] = true,
			["stacksPoint"] = "BOTTOMRIGHT",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
	},
	["registered"] = {
	},
	["talent_cache"] = {
		["HUNTER"] = {
			{
				["name"] = "迅疾如风",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_posthaste",
			}, -- [1]
			{
				["name"] = "险境求生",
				["icon"] = "Interface\\Icons\\INV_Misc_Web_01",
			}, -- [2]
			{
				["name"] = "卧虎藏龙",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_pet_chimera",
			}, -- [3]
			{
				["name"] = "束缚射击",
				["icon"] = "INTERFACE\\ICONS\\spell_shaman_bindelemental",
			}, -- [4]
			{
				["name"] = "翼龙钉刺",
				["icon"] = "Interface\\Icons\\INV_Spear_02",
			}, -- [5]
			{
				["name"] = "胁迫",
				["icon"] = "Interface\\Icons\\Ability_Devour",
			}, -- [6]
			{
				["name"] = "意气风发",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_onewithnature",
			}, -- [7]
			{
				["name"] = "铁鹰守护",
				["icon"] = "Interface\\Icons\\spell_hunter_aspectoftheironhawk",
			}, -- [8]
			{
				["name"] = "灵魂联结",
				["icon"] = "Interface\\Icons\\Ability_Druid_DemoralizingRoar",
			}, -- [9]
			{
				["name"] = "稳固集中",
				["icon"] = "Interface\\Icons\\Ability_Hunter_ImprovedSteadyShot",
			}, -- [10]
			{
				["name"] = "凶暴野兽",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_sickem",
			}, -- [11]
			{
				["name"] = "狩猎刺激",
				["icon"] = "Interface\\Icons\\Ability_Hunter_ThrilloftheHunt",
			}, -- [12]
			{
				["name"] = "夺命黑鸦",
				["icon"] = "Interface\\Icons\\ability_hunter_murderofcrows",
			}, -- [13]
			{
				["name"] = "闪击",
				["icon"] = "Interface\\Icons\\Spell_Arcane_Arcane04",
			}, -- [14]
			{
				["name"] = "群兽奔腾",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_bestialdiscipline",
			}, -- [15]
			{
				["name"] = "飞刃",
				["icon"] = "Interface\\Icons\\ability_glaivetoss",
			}, -- [16]
			{
				["name"] = "强风射击",
				["icon"] = "INTERFACE\\ICONS\\ability_hunter_resistanceisfutile",
			}, -- [17]
			{
				["name"] = "弹幕射击",
				["icon"] = "Interface\\Icons\\Ability_Hunter_RapidRegeneration",
			}, -- [18]
			{
				["name"] = "特殊弹药",
				["icon"] = "Interface\\Icons\\inv_ammo_bullet_07",
			}, -- [19]
			{
				["name"] = "专注射击",
				["icon"] = "Interface\\Icons\\spell_hunter_focusingshot",
			}, -- [20]
			{
				["name"] = "独来独往",
				["icon"] = "Interface\\Icons\\spell_hunter_lonewolf",
			}, -- [21]
		},
		["WARRIOR"] = {
			{
				["name"] = "主宰",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BullRush",
			}, -- [1]
			{
				["name"] = "再度冲锋",
				["icon"] = "Interface\\Icons\\INV_Misc_Horn_04",
			}, -- [2]
			{
				["name"] = "战神",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Warbringer",
			}, -- [3]
			{
				["name"] = "狂怒回复",
				["icon"] = "Interface\\Icons\\Ability_Warrior_FocusedRage",
			}, -- [4]
			{
				["name"] = "复苏之风",
				["icon"] = "Interface\\Icons\\Ability_Hunter_Harass",
			}, -- [5]
			{
				["name"] = "胜利在望",
				["icon"] = "Interface\\Icons\\spell_impending_victory",
			}, -- [6]
			{
				["name"] = "血之气息",
				["icon"] = "Interface\\Icons\\Ability_Rogue_HungerforBlood",
			}, -- [7]
			{
				["name"] = "猝死",
				["icon"] = "Interface\\Icons\\Ability_Warrior_ImprovedDisciplines",
			}, -- [8]
			{
				["name"] = "猛击",
				["icon"] = "Interface\\Icons\\Ability_Warrior_DecisiveStrike",
			}, -- [9]
			{
				["name"] = "风暴之锤",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_stormbolt",
			}, -- [10]
			{
				["name"] = "震荡波",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Shockwave",
			}, -- [11]
			{
				["name"] = "巨龙怒吼",
				["icon"] = "Interface\\Icons\\ability_warrior_dragonroar",
			}, -- [12]
			{
				["name"] = "群体反射",
				["icon"] = "Interface\\Icons\\Ability_Warrior_ShieldBreak",
			}, -- [13]
			{
				["name"] = "捍卫",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Safeguard",
			}, -- [14]
			{
				["name"] = "警戒",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Vigilance",
			}, -- [15]
			{
				["name"] = "天神下凡",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_avatar",
			}, -- [16]
			{
				["name"] = "浴血奋战",
				["icon"] = "Interface\\Icons\\Ability_Warrior_BloodBath",
			}, -- [17]
			{
				["name"] = "剑刃风暴",
				["icon"] = "Interface\\Icons\\Ability_Warrior_Bladestorm",
			}, -- [18]
			{
				["name"] = "愤怒掌控",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_angermanagement",
			}, -- [19]
			{
				["name"] = "破坏者",
				["icon"] = "Interface\\Icons\\warrior_talent_icon_ravager",
			}, -- [20]
			{
				["name"] = "破城者",
				["icon"] = "Interface\\Icons\\inv_mace_2h_draenorguard_b_01_horde",
			}, -- [21]
		},
		["ROGUE"] = {
			{
				["name"] = "夜行者",
				["icon"] = "Interface\\Icons\\Ability_Stealth",
			}, -- [1]
			{
				["name"] = "诡诈",
				["icon"] = "Interface\\Icons\\rogue_subterfuge",
			}, -- [2]
			{
				["name"] = "暗影集中",
				["icon"] = "Interface\\Icons\\rogue_shadowfocus",
			}, -- [3]
			{
				["name"] = "致命投掷",
				["icon"] = "Interface\\Icons\\INV_ThrowingKnife_06",
			}, -- [4]
			{
				["name"] = "神经打击",
				["icon"] = "Interface\\Icons\\rogue_nerve _strike",
			}, -- [5]
			{
				["name"] = "备战就绪",
				["icon"] = "INTERFACE\\ICONS\\ability_rogue_combatreadiness",
			}, -- [6]
			{
				["name"] = "装死",
				["icon"] = "Interface\\Icons\\Ability_Rogue_CheatDeath",
			}, -- [7]
			{
				["name"] = "吸血药膏",
				["icon"] = "Interface\\Icons\\rogue_leeching_poison",
			}, -- [8]
			{
				["name"] = "飘忽不定",
				["icon"] = "Interface\\Icons\\Ability_Rogue_TurntheTables",
			}, -- [9]
			{
				["name"] = "暗里藏刀",
				["icon"] = "Interface\\Icons\\Ability_Rogue_UnfairAdvantage",
			}, -- [10]
			{
				["name"] = "暗影步",
				["icon"] = "Interface\\Icons\\Ability_Rogue_Shadowstep",
			}, -- [11]
			{
				["name"] = "速度爆发",
				["icon"] = "Interface\\Icons\\rogue_burstofspeed",
			}, -- [12]
			{
				["name"] = "欺凌",
				["icon"] = "Interface\\Icons\\Ability_Rogue_PreyontheWeak",
			}, -- [13]
			{
				["name"] = "内出血",
				["icon"] = "Interface\\Icons\\Ability_Rogue_BloodSplatter",
			}, -- [14]
			{
				["name"] = "邪恶计谋",
				["icon"] = "Interface\\Icons\\ability_rogue_dirtydeeds",
			}, -- [15]
			{
				["name"] = "飞镖投掷",
				["icon"] = "INTERFACE\\ICONS\\inv_throwingknife_07",
			}, -- [16]
			{
				["name"] = "死亡标记",
				["icon"] = "Interface\\Icons\\Achievement_BG_killingblow_berserker",
			}, -- [17]
			{
				["name"] = "预感",
				["icon"] = "Interface\\Icons\\Ability_Rogue_SlaughterfromtheShadows",
			}, -- [18]
			{
				["name"] = "药膏专家",
				["icon"] = "Interface\\Icons\\rogue_venomzest",
			}, -- [19]
			{
				["name"] = "暗影反射",
				["icon"] = "Interface\\Icons\\rogue_shadow_reflection",
			}, -- [20]
			{
				["name"] = "天降杀机",
				["icon"] = "Interface\\Icons\\spell_rogue_deathfromabove",
			}, -- [21]
		},
		["MAGE"] = {
		},
		["PRIEST"] = {
			{
				["name"] = "绝望祷言",
				["icon"] = "Interface\\Icons\\Spell_Holy_TestOfFaith",
			}, -- [1]
			{
				["name"] = "幽灵伪装",
				["icon"] = "Interface\\Icons\\spell_priest_spectralguise",
			}, -- [2]
			{
				["name"] = "天使壁垒",
				["icon"] = "Interface\\Icons\\ability_priest_angelicbulwark",
			}, -- [3]
			{
				["name"] = "身心合一",
				["icon"] = "Interface\\Icons\\Spell_Holy_SymbolOfHope",
			}, -- [4]
			{
				["name"] = "天堂之羽",
				["icon"] = "Interface\\Icons\\ability_priest_angelicfeather",
			}, -- [5]
			{
				["name"] = "幻隐",
				["icon"] = "Interface\\Icons\\ability_priest_phantasm",
			}, -- [6]
			{
				["name"] = "黑暗涌动",
				["icon"] = "Interface\\Icons\\ability_priest_surgeofdarkness",
			}, -- [7]
			{
				["name"] = "摧心魔",
				["icon"] = "Interface\\Icons\\Spell_Shadow_SoulLeech_3",
			}, -- [8]
			{
				["name"] = "疯狂",
				["icon"] = "Interface\\Icons\\Spell_Shadow_SoulLeech_2",
			}, -- [9]
			{
				["name"] = "虚空触须",
				["icon"] = "Interface\\Icons\\spell_priest_voidtendrils",
			}, -- [10]
			{
				["name"] = "心灵尖啸",
				["icon"] = "Interface\\Icons\\Spell_Shadow_PsychicScream",
			}, -- [11]
			{
				["name"] = "统御意志",
				["icon"] = "Interface\\Icons\\Spell_Shadow_ShadowWordDominate",
			}, -- [12]
			{
				["name"] = "命运多舛",
				["icon"] = "Interface\\Icons\\Spell_Shadow_MindTwisting",
			}, -- [13]
			{
				["name"] = "能量灌注",
				["icon"] = "Interface\\Icons\\Spell_Holy_PowerInfusion",
			}, -- [14]
			{
				["name"] = "暗影洞察",
				["icon"] = "Interface\\Icons\\Spell_Shadow_Possession",
			}, -- [15]
			{
				["name"] = "瀑流",
				["icon"] = "Interface\\Icons\\ability_priest_cascade_shadow",
			}, -- [16]
			{
				["name"] = "神圣之星",
				["icon"] = "Interface\\Icons\\spell_priest_divinestar_shadow2",
			}, -- [17]
			{
				["name"] = "光晕",
				["icon"] = "Interface\\Icons\\ability_priest_halo_shadow",
			}, -- [18]
			{
				["name"] = "透彻之力",
				["icon"] = "Interface\\Icons\\ability_priest_clarityofpower",
			}, -- [19]
			{
				["name"] = "虚空熵能",
				["icon"] = "Interface\\Icons\\ability_priest_voidentropy",
			}, -- [20]
			{
				["name"] = "吉兆",
				["icon"] = "Interface\\Icons\\ability_priest_auspiciousspirits",
			}, -- [21]
		},
		["WARLOCK"] = {
			{
				["name"] = "黑暗再生",
				["icon"] = "Interface\\Icons\\spell_warlock_darkregeneration",
			}, -- [1]
			{
				["name"] = "灵魂榨取",
				["icon"] = "Interface\\Icons\\warlock_siphonlife",
			}, -- [2]
			{
				["name"] = "生命收割",
				["icon"] = "Interface\\Icons\\spell_warlock_harvestoflife",
			}, -- [3]
			{
				["name"] = "恐惧嚎叫",
				["icon"] = "Interface\\Icons\\ability_warlock_howlofterror",
			}, -- [4]
			{
				["name"] = "死亡缠绕",
				["icon"] = "Interface\\Icons\\ability_warlock_mortalcoil",
			}, -- [5]
			{
				["name"] = "暗影之怒",
				["icon"] = "Interface\\Icons\\ability_warlock_shadowfurytga",
			}, -- [6]
			{
				["name"] = "灵魂链接",
				["icon"] = "Interface\\Icons\\ability_warlock_soullink",
			}, -- [7]
			{
				["name"] = "牺牲契约",
				["icon"] = "Interface\\Icons\\warlock_sacrificial_pact",
			}, -- [8]
			{
				["name"] = "黑暗交易",
				["icon"] = "Interface\\Icons\\ability_deathwing_bloodcorruption_death",
			}, -- [9]
			{
				["name"] = "猩红恐惧",
				["icon"] = "Interface\\Icons\\ability_deathwing_bloodcorruption_earth",
			}, -- [10]
			{
				["name"] = "爆燃冲刺",
				["icon"] = "Interface\\Icons\\ability_deathwing_sealarmorbreachtga",
			}, -- [11]
			{
				["name"] = "无拘意志",
				["icon"] = "Interface\\Icons\\warlock_spelldrain",
			}, -- [12]
			{
				["name"] = "魔典：邪恶统御",
				["icon"] = "Interface\\Icons\\warlock_grimoireofcommand",
			}, -- [13]
			{
				["name"] = "魔典：邪恶仆从",
				["icon"] = "Interface\\Icons\\warlock_grimoireofservice",
			}, -- [14]
			{
				["name"] = "协同魔典",
				["icon"] = "Interface\\Icons\\warlock_grimoireofsacrifice",
			}, -- [15]
			{
				["name"] = "阿克蒙德的黑暗",
				["icon"] = "Interface\\Icons\\Achievement_Boss_Archimonde ",
			}, -- [16]
			{
				["name"] = "基尔加丹的狡诈",
				["icon"] = "Interface\\Icons\\Achievement_Boss_Kiljaedan",
			}, -- [17]
			{
				["name"] = "玛诺洛斯的狂怒",
				["icon"] = "Interface\\Icons\\Achievement_Boss_Magtheridon",
			}, -- [18]
			{
				["name"] = "恶魔之箭",
				["icon"] = "Interface\\Icons\\spell_warlock_demonbolt",
			}, -- [19]
			{
				["name"] = "大灾变",
				["icon"] = "INTERFACE\\ICONS\\achievement_zone_cataclysm",
			}, -- [20]
			{
				["name"] = "恶魔奴役",
				["icon"] = "Interface\\Icons\\spell_warlock_demonicservitude",
			}, -- [21]
		},
		["SHAMAN"] = {
			{
				["name"] = "自然守护者",
				["icon"] = "Interface\\Icons\\Spell_Nature_NatureGuardian",
			}, -- [1]
			{
				["name"] = "石壁图腾",
				["icon"] = "Interface\\Icons\\ability_shaman_stonebulwark",
			}, -- [2]
			{
				["name"] = "星界转移",
				["icon"] = "Interface\\Icons\\ability_shaman_astralshift",
			}, -- [3]
			{
				["name"] = "冰霜之力",
				["icon"] = "Interface\\Icons\\Spell_Fire_BlueCano",
			}, -- [4]
			{
				["name"] = "陷地图腾",
				["icon"] = "Interface\\Icons\\Spell_Nature_StrangleVines",
			}, -- [5]
			{
				["name"] = "风行图腾",
				["icon"] = "Interface\\Icons\\ability_shaman_windwalktotem",
			}, -- [6]
			{
				["name"] = "元素的召唤",
				["icon"] = "Interface\\Icons\\ability_shaman_multitotemactivation",
			}, -- [7]
			{
				["name"] = "图腾传承",
				["icon"] = "Interface\\Icons\\ability_shaman_totemcooldownrefund",
			}, -- [8]
			{
				["name"] = "图腾投掷",
				["icon"] = "Interface\\Icons\\ability_shaman_totemrelocation",
			}, -- [9]
			{
				["name"] = "元素掌握",
				["icon"] = "Interface\\Icons\\Spell_Nature_WispHeal",
			}, -- [10]
			{
				["name"] = "先祖迅捷",
				["icon"] = "Interface\\Icons\\Spell_Shaman_ElementalOath",
			}, -- [11]
			{
				["name"] = "元素回响",
				["icon"] = "Interface\\Icons\\ability_shaman_echooftheelements",
			}, -- [12]
			{
				["name"] = "涌动之泉",
				["icon"] = "Interface\\Icons\\INV_Spear_04",
			}, -- [13]
			{
				["name"] = "先祖指引",
				["icon"] = "Interface\\Icons\\ability_shaman_ancestralguidance",
			}, -- [14]
			{
				["name"] = "导电体质",
				["icon"] = "Interface\\Icons\\ability_shaman_fortifyingwaters",
			}, -- [15]
			{
				["name"] = "怒火释放",
				["icon"] = "Interface\\Icons\\shaman_talent_unleashedfury",
			}, -- [16]
			{
				["name"] = "元素尊者",
				["icon"] = "Interface\\Icons\\shaman_talent_primalelementalist",
			}, -- [17]
			{
				["name"] = "元素冲击",
				["icon"] = "Interface\\Icons\\shaman_talent_elementalblast",
			}, -- [18]
			{
				["name"] = "元素融合",
				["icon"] = "Interface\\Icons\\spell_shaman_shockinglava",
			}, -- [19]
			{
				["name"] = "风暴元素图腾",
				["icon"] = "Interface\\Icons\\spell_shaman_stormtotem",
			}, -- [20]
			{
				["name"] = "岩浆",
				["icon"] = "Interface\\Icons\\spell_shaman_spewlava",
			}, -- [21]
		},
		["DEATHKNIGHT"] = {
			{
				["name"] = "疫病使者",
				["icon"] = "Interface\\Icons\\Achievement_Zone_WesternPlaguelands_01",
			}, -- [1]
			{
				["name"] = "吸血瘟疫",
				["icon"] = "Interface\\Icons\\Ability_Creature_Disease_02",
			}, -- [2]
			{
				["name"] = "邪恶虫群",
				["icon"] = "Interface\\Icons\\Spell_Shadow_Contagion",
			}, -- [3]
			{
				["name"] = "巫妖之躯",
				["icon"] = "Interface\\Icons\\Spell_Shadow_RaiseDead",
			}, -- [4]
			{
				["name"] = "反魔法领域",
				["icon"] = "Interface\\Icons\\Spell_DeathKnight_AntiMagicZone",
			}, -- [5]
			{
				["name"] = "炼狱",
				["icon"] = "Interface\\Icons\\INV_Misc_ShadowEgg",
			}, -- [6]
			{
				["name"] = "死亡脚步",
				["icon"] = "Interface\\Icons\\Spell_Shadow_DemonicEmpathy",
			}, -- [7]
			{
				["name"] = "冻疮",
				["icon"] = "Interface\\Icons\\Spell_Frost_Wisp",
			}, -- [8]
			{
				["name"] = "窒息",
				["icon"] = "Interface\\Icons\\ability_deathknight_asphixiate",
			}, -- [9]
			{
				["name"] = "活力分流",
				["icon"] = "Interface\\Icons\\Spell_DeathKnight_BloodTap",
			}, -- [10]
			{
				["name"] = "符文强化",
				["icon"] = "Interface\\Icons\\INV_Misc_Rune_10",
			}, -- [11]
			{
				["name"] = "符文腐蚀",
				["icon"] = "INTERFACE\\ICONS\\spell_shadow_rune",
			}, -- [12]
			{
				["name"] = "天灾契约",
				["icon"] = "Interface\\Icons\\Spell_Shadow_DeathPact",
			}, -- [13]
			{
				["name"] = "死亡虹吸",
				["icon"] = "Interface\\Icons\\ability_deathknight_deathsiphon",
			}, -- [14]
			{
				["name"] = "符能转换",
				["icon"] = "Interface\\Icons\\ability_deathknight_deathsiphon2",
			}, -- [15]
			{
				["name"] = "血魔之握",
				["icon"] = "Interface\\Icons\\ability_deathknight_aoedeathgrip",
			}, -- [16]
			{
				["name"] = "冷酷严冬",
				["icon"] = "Interface\\Icons\\ability_deathknight_remorselesswinters2",
			}, -- [17]
			{
				["name"] = "邪恶之地",
				["icon"] = "Interface\\Icons\\ability_deathknight_desecratedground",
			}, -- [18]
			{
				["name"] = "死疽",
				["icon"] = "Interface\\Icons\\spell_deathknight_necroticplague",
			}, -- [19]
			{
				["name"] = "亵渎",
				["icon"] = "Interface\\Icons\\spell_deathknight_defile",
			}, -- [20]
			{
				["name"] = "辛达苟萨之息",
				["icon"] = "Interface\\Icons\\spell_deathknight_breathofsindragosa",
			}, -- [21]
		},
		["DRUID"] = {
		},
		["MONK"] = {
			{
				["name"] = "动如脱兔",
				["icon"] = "Interface\\Icons\\ability_monk_quipunch",
			}, -- [1]
			{
				["name"] = "迅如猛虎",
				["icon"] = "Interface\\Icons\\ability_monk_tigerslust",
			}, -- [2]
			{
				["name"] = "势如破竹",
				["icon"] = "Interface\\Icons\\ability_monk_standingkick",
			}, -- [3]
			{
				["name"] = "真气波",
				["icon"] = "Interface\\Icons\\ability_monk_chiwave",
			}, -- [4]
			{
				["name"] = "禅意珠",
				["icon"] = "Interface\\Icons\\ability_monk_forcesphere",
			}, -- [5]
			{
				["name"] = "真气爆裂",
				["icon"] = "Interface\\Icons\\Spell_Arcane_ArcaneTorrent",
			}, -- [6]
			{
				["name"] = "力贯千钧",
				["icon"] = "Interface\\Icons\\ability_monk_powerstrikes",
			}, -- [7]
			{
				["name"] = "真气升腾",
				["icon"] = "Interface\\Icons\\ability_monk_ascension",
			}, -- [8]
			{
				["name"] = "真气酒",
				["icon"] = "Interface\\Icons\\ability_monk_chibrew",
			}, -- [9]
			{
				["name"] = "平心之环",
				["icon"] = "Interface\\Icons\\spell_monk_ringofpeace",
			}, -- [10]
			{
				["name"] = "蛮牛冲",
				["icon"] = "Interface\\Icons\\ability_monk_chargingoxwave",
			}, -- [11]
			{
				["name"] = "扫堂腿",
				["icon"] = "Interface\\Icons\\ability_monk_legsweep",
			}, -- [12]
			{
				["name"] = "金创药",
				["icon"] = "Interface\\Icons\\ability_monk_jasmineforcetea",
			}, -- [13]
			{
				["name"] = "躯不坏",
				["icon"] = "Interface\\Icons\\ability_monk_dampenharm",
			}, -- [14]
			{
				["name"] = "散魔功",
				["icon"] = "Interface\\Icons\\spell_monk_diffusemagic",
			}, -- [15]
			{
				["name"] = "碧玉疾风",
				["icon"] = "Interface\\Icons\\ability_monk_rushingjadewind",
			}, -- [16]
			{
				["name"] = "白虎下凡",
				["icon"] = "Interface\\Icons\\ability_monk_summontigerstatue",
			}, -- [17]
			{
				["name"] = "真气突",
				["icon"] = "Interface\\Icons\\ability_monk_quitornado",
			}, -- [18]
			{
				["name"] = "风暴打击",
				["icon"] = "Interface\\Icons\\ability_monk_hurricanestrike",
			}, -- [19]
			{
				["name"] = "真气破",
				["icon"] = "Interface\\Icons\\ability_monk_chiexplosion",
			}, -- [20]
			{
				["name"] = "屏气凝神",
				["icon"] = "Interface\\Icons\\ability_monk_serenity",
			}, -- [21]
		},
		["PALADIN"] = {
			{
				["name"] = "圣光之速",
				["icon"] = "Interface\\Icons\\ability_paladin_speedoflight",
			}, -- [1]
			{
				["name"] = "法网恢恢",
				["icon"] = "Interface\\Icons\\ability_paladin_longarmofthelaw",
			}, -- [2]
			{
				["name"] = "正义追击",
				["icon"] = "Interface\\Icons\\ability_paladin_veneration",
			}, -- [3]
			{
				["name"] = "制裁之拳",
				["icon"] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
			}, -- [4]
			{
				["name"] = "忏悔",
				["icon"] = "Interface\\Icons\\Spell_Holy_PrayerOfHealing",
			}, -- [5]
			{
				["name"] = "盲目之光",
				["icon"] = "Interface\\Icons\\ability_paladin_blindinglight",
			}, -- [6]
			{
				["name"] = "无私治愈",
				["icon"] = "Interface\\Icons\\Ability_Paladin_GaurdedbytheLight",
			}, -- [7]
			{
				["name"] = "永恒之火",
				["icon"] = "Interface\\Icons\\INV_Torch_Thrown",
			}, -- [8]
			{
				["name"] = "圣洁护盾",
				["icon"] = "Interface\\Icons\\Ability_Paladin_BlessedMending",
			}, -- [9]
			{
				["name"] = "纯净之手",
				["icon"] = "Interface\\Icons\\Spell_Holy_SealOfWisdom",
			}, -- [10]
			{
				["name"] = "不败之魂",
				["icon"] = "Interface\\Icons\\spell_holy_unyieldingfaith",
			}, -- [11]
			{
				["name"] = "仁慈",
				["icon"] = "Interface\\Icons\\ability_paladin_clemency",
			}, -- [12]
			{
				["name"] = "神圣复仇者",
				["icon"] = "Interface\\Icons\\ability_paladin_holyavenger",
			}, -- [13]
			{
				["name"] = "圣洁怒火",
				["icon"] = "Interface\\Icons\\Ability_Paladin_SanctifiedWrath",
			}, -- [14]
			{
				["name"] = "神圣意志",
				["icon"] = "Interface\\Icons\\Spell_Holy_DivinePurpose",
			}, -- [15]
			{
				["name"] = "神圣棱镜",
				["icon"] = "Interface\\Icons\\spell_paladin_holyprism",
			}, -- [16]
			{
				["name"] = "圣光之锤",
				["icon"] = "Interface\\Icons\\spell_paladin_lightshammer",
			}, -- [17]
			{
				["name"] = "处决宣判",
				["icon"] = "Interface\\Icons\\spell_paladin_executionsentence",
			}, -- [18]
			{
				["name"] = "强化圣印",
				["icon"] = "Interface\\Icons\\ability_paladin_empoweredseals",
			}, -- [19]
			{
				["name"] = "炽天使",
				["icon"] = "Interface\\Icons\\ability_paladin_seraphim",
			}, -- [20]
			{
				["name"] = "神圣之盾",
				["icon"] = "Interface\\Icons\\Spell_Holy_BlessingOfProtection",
			}, -- [21]
		},
	},
	["frame"] = {
		["xOffset"] = -435.600463867188,
		["width"] = 630,
		["height"] = 491.999938964844,
		["yOffset"] = -250.710754394531,
	},
	["tempIconCache"] = {
	},
	["login_squelch_time"] = 10,
}
