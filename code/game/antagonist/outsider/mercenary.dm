var/datum/antagonist/mercenary/mercs

/datum/antagonist/mercenary
	id = MODE_MERCENARY
	role_text = "Operative"
	antag_indicator = "hudsyndicate"
	role_text_plural = "Operatives"
	landmark_id = "Syndicate-Spawn"
	leader_welcome_text = "You are the leader of the Global Occult Coalition strikeforce. Use :t to speak to your fellow operatives."
	welcome_text = "You are a member of the Global Occult Coalition stikeforce. You have been tasked with destroying a Foundation site. To accomplish this, you must detonate a nuclear device in the site!To speak on the strike team's private channel use :t."
	flags = ANTAG_VOTABLE | ANTAG_OVERRIDE_JOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_HAS_NUKE | ANTAG_SET_APPEARANCE | ANTAG_HAS_LEADER
	antaghud_indicator = "hudoperative"

	hard_cap = 4
	hard_cap_round = 8
	initial_spawn_req = 10
	initial_spawn_target = 12
	min_player_age = 7

	faction = "mercenary"

/datum/antagonist/mercenary/New()
	..()
	mercs = src

/datum/antagonist/mercenary/create_global_objectives()
	if(!..())
		return 0
	global_objectives = list()
	global_objectives |= new /datum/objective/nuclear
	return 1

/datum/antagonist/mercenary/equip(var/mob/living/carbon/human/player)
	if(!..())
		return 0

	var/decl/hierarchy/outfit/mercenary = outfit_by_type(/decl/hierarchy/outfit/mercenary)
	mercenary.equip(player)

//	var/obj/item/device/radio/uplink/U = new(get_turf(player), player.mind, DEFAULT_TELECRYSTAL_AMOUNT)
//	player.put_in_hands(U)

	return 1
