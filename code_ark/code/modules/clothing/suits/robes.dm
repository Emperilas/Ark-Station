/obj/item/clothing/suit/storage/toggle/no_pockets/robe/proc/get_gender_suffix(var/suffix = "_s")
	. = suffix
	var/mob/living/carbon/human/H
	if(istype(src.loc, /mob/living/carbon/human))
		H = src.loc
		var/bodytype
		if(ishuman(H))
			bodytype = H.species.get_bodytype(H)

		if(gender_icons && bodytype == SPECIES_HUMAN && H.gender == FEMALE)
			. = "_f" + suffix

/obj/item/clothing/suit/storage/toggle/no_pockets/robe/get_icon_state(mob/user_mob, slot)
	if(item_state_slots && item_state_slots[slot])
		. = item_state_slots[slot]
	else
		. = icon_state
	if(!findtext(.,"_s", -2)) // If we don't already have our suffix
		if((icon_state + "_f_s") in icon_states(default_onmob_icons[slot_wear_suit_str]))
			. +=  get_gender_suffix()
		else
			. += "_s"

/obj/item/clothing/suit/storage/toggle/no_pockets/robe/toggle()
	..()
	item_state = get_icon_state()
	update_clothing_icon()

/obj/item/clothing/suit/storage/toggle/no_pockets/robe
	var/gender_icons = 1
	name = "robe"
	icon = 'code_ark/icons/obj/clothing/obj_suit.dmi'
	item_icons = list(slot_wear_suit_str = 'code_ark/icons/mob/onmob/onmob_suit.dmi')
	body_parts_covered = UPPER_TORSO|ARMS|LEGS

/obj/item/clothing/suit/storage/toggle/no_pockets/robe/bathrobe
	name = "bathrobe"
	desc = "A comfy snow-white bathrobe."
	icon_state = "bathrobe"
	item_state = "bathrobe_s"
	icon_open = "bathrobe"
	icon_closed = "untied_bathrobe"

/obj/item/clothing/suit/storage/toggle/no_pockets/robe/patient
	name = "hospital gown"
	desc = "A light blue hospital gown used primarily for patients."
	icon_state = "patient_gown"
	item_state = "patient_gown_s"
	icon_open = "patient_gown"
	icon_closed = "untied_patient_gown"

/obj/item/clothing/suit/storage/toggle/no_pockets/robe/silk
	name = "silk robe"
	desc = "An fancy and pretty expensive silk female robe."
	icon_state = "silk_robe"
	item_state = "silk_robe_s"
	icon_open = "silk_robe"
	icon_closed = "untied_silk_robe"