kliknik_shredder_guardian = Creature:new {
	objectName = "@mob/creature_names:kliknik_shredder_guardian",
	socialGroup = "kliknik",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 30,
	chanceHit = 0.39,
	damageMin = 310,
	damageMax = 330,
	baseXp = 3097,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 0,
	resists = {140,20,20,20,20,-1,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_scaley",
	hideAmount = 4,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kliknik_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/kliknik_hue.iff",
	scale = 1.15,
	lootGroups = {
	 {
	        groups = {
				{group = "kliknik_common", chance = 10000000}
			},
			lootChance = 1600000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "object/weapon/ranged/creature/creature_spit_spray_red.iff",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"knockdownattack",""}, {"stunattack",""} },
	secondaryAttacks = { {"knockdownattack",""}, {"stunattack",""} }
}

CreatureTemplates:addCreatureTemplate(kliknik_shredder_guardian, "kliknik_shredder_guardian")
