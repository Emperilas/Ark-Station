/datum/gear/head/surgical
	allowed_roles = STERILE_ROLES

/datum/gear/head/beret
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/mask/bandana
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/bandana
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/bow
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/cap
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/hairflower
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/hardhat
	allowed_roles = TECHNICAL_ROLES

/datum/gear/head/formalhat
	allowed_roles = FORMAL_ROLES
	allowed_branches = CIVILIAN_BRANCHES

/datum/gear/head/informalhat
	allowed_roles = SEMIFORMAL_ROLES

/datum/gear/head/welding
	allowed_roles = TECHNICAL_ROLES

/datum/gear/tactical/balaclava
	allowed_roles = ARMORED_ROLES

/datum/gear/head/beretselection
	display_name = "contractor beret selection"
	description = "a list of berets used by various organizations and corporights"
	path = /obj/item/clothing/head/beret

/datum/gear/head/beretselection/New()
	..()
	var/beretselection_type = list()
	beretselection_type["white-blue corporight security beret"] = /obj/item/clothing/head/beret/guard
	beretselection_type["white-red corporight security beret"] = /obj/item/clothing/head/beret/sec/corporate_whitered
	beretselection_type["red corporight security beret"] = /obj/item/clothing/head/beret/sec/corporate_red
	beretselection_type["SAARE beret"] = /obj/item/clothing/head/beret/sec/saare
	beretselection_type["PCRC beret"] = /obj/item/clothing/head/beret/sec/pcrc
	gear_tweaks += new/datum/gear_tweak/path(beretselection_type)

/datum/gear/head/cap_colour
	display_name = "cap colour selection"
	path = /obj/item/clothing/head/soft/custom
	flags = GEAR_HAS_COLOR_SELECTION