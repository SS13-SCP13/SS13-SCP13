// /obj/item/clothing/under/wedding/bride_blue

/decl/appearance_handler/bluelady
	var/static/list/appearances

/decl/appearance_handler/bluelady/proc/item_equipped(var/obj/item/item, var/mob/user, var/slot)
	if(!(slot == slot_wear_mask))
		log_and_message_admins("bluelady: equipped an item but it's not a mask.")
		return
	if(!ishuman(user))
		log_and_message_admins("bluelady: user is not human.")
		return
	if(!(istype(item, /obj/item/clothing/mask/smokable/cigarette/bluelady)))
		log_and_message_admins("bluelady: this is not the bluelady cig.")
		return
	if(user in appearance_sources)
		log_and_message_admins("bluelady: user is already in appearance sources.")
		return

	var/mob/living/carbon/human/H = user
	if(!(istype(H.wear_mask, /obj/item/clothing/mask/smokable/cigarette/bluelady)))
		log_and_message_admins("bluelady: H.wear_mask is not the bluelady cig.")
		return


	var/image/I = get_image_from_bluelady(H)
	AddAltAppearance(H, I, H) //you look like the blue lady to yourself

/decl/appearance_handler/bluelady/proc/item_removed(var/obj/item/item, var/mob/user)
	log_and_message_admins("bluelady: removed an item, but bluelady is forever.")
	// // Blue Lady is forever.
	// if(istype(item, /obj/item/clothing/mask/smokable/cigarette/bluelady))
	// 	RemoveAltAppearance(user)

/decl/appearance_handler/bluelady/proc/get_image_from_bluelady(var/mob/living/carbon/human/H)
	log_and_message_admins("bluelady: getting bluelady image.")
	var/image/I = image('icons/mob/human.dmi', icon_state = "body_f_s", loc = H)
	I.override = 1
	I.overlays += image(icon = 'icons/mob/human_face.dmi', icon_state = "hair_emo2_s", loc = H)
	I.overlays += image(icon = 'icons/obj/clothing/uniforms.dmi', icon_state = "bride_blue", loc = H)
	return I