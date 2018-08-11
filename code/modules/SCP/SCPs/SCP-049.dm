GLOBAL_LIST_EMPTY(scp049s)

/mob/living/carbon/human/scp049
	desc = "A mysterious plague doctor."
	SCP = /datum/scp/SCP_049
	var/list/attempted_surgery_on = list()
	var/mob/living/target = null
	var/zombies = 0
	
/mob/living/carbon/human/scp049/examine(mob/user)
	user << "<b><span class = 'info'><big>SCP-049</big></span></b> - [desc]"

/datum/scp/SCP_049
	name = "SCP-049"
	designation = "049"
	classification = EUCLID

/obj/sprite_helper/scp049
	icon = 'icons/mob/scp049.dmi'
	
/mob/living/carbon/human/scp049/IsAdvancedToolUser()
	return FALSE

/mob/living/carbon/human/scp049/New()
	..()

	spawn (20)
		fix_icons()

		// fix names
		real_name = "SCP-049"
		SetName(real_name)
		if(mind)
			mind.name = real_name

	set_species("SCP-049")
	GLOB.scp049s += src

/mob/living/carbon/human/scp049/Destroy()
	GLOB.scp049s -= src
	..()

/mob/living/carbon/human/scp049/Move()
	..()
	update_stuff()

/mob/living/carbon/human/scp049/forceMove(destination)
	. = ..(destination)
	update_stuff()

/mob/living/carbon/human/scp049/proc/update_stuff()
	// stand_icon tends to come back after movement
	fix_icons()
	for (var/obj/sprite_helper/scp049/O in vis_contents)
		O.dir = dir
		break

/mob/living/carbon/human/scp049/proc/fix_icons()
	icon = null
	icon_state = null
	stand_icon = null
	lying_icon = null
	update_icon = FALSE

	if (!vis_contents.len)
		vis_contents += new /obj/sprite_helper/scp049
	
	// we're lying, turn right
	var/obj/sprite_helper/scp049/SH = vis_contents[vis_contents.len]
	if (lying)
		SH.icon = turn(icon('icons/mob/scp049.dmi'), 90)
		
/mob/living/carbon/human/scp049/get_pressure_weakness()
	return 0

/mob/living/carbon/human/scp049/handle_breath()
	return 1

/mob/living/carbon/human/scp049/movement_delay()
	return -1.5
	 
// NPC stuff
/mob/living/carbon/human/scp049/proc/getTarget()
	/* if we have no target, or our target is out of view,
	 * try to find a better one. Failing to do so just makes us continue to go after the old target */
	if (!target || !(src in viewers(world.view, target)))

		. = list()
		for (var/mob/living/L in oview(world.view, src))
			if (!ishuman(L))
				. += L 
		
		if (length(.))
			target = pick(.)
			
	return target

// NPC stuff
/mob/living/carbon/human/scp049/proc/pursueTarget()

	getTarget()

	if (!target)
		walk(src, null)
		return FALSE

	if (!(target in orange(1, src)))
		// moves slightly faster than humans
		walk_to(src, target, 1, 0.9+config.run_speed)
		return TRUE
		
	walk(src, null)

	scp049_attack(target)
	return TRUE

/mob/living/carbon/human/attack_hand(mob/living/carbon/M)
	if (!isscp049(M) || isscp049_1(src) || src == M)
		return ..(M)
	var/mob/living/carbon/human/scp049/H = M
	switch (stat)
		if (CONSCIOUS, UNCONSCIOUS)
			visible_message("<span class = 'danger'><big>[H] touches [src], killing them instantly!</big></span>")
			mutations |= HUSK 
			regenerate_icons()
			death()
		if (DEAD)
			H.scp049_attack(src)
			
/mob/living/carbon/human/scp049/attack_hand(mob/living/carbon/M)
	if (!isscp049_1(M) || M.a_intent == I_HELP)
		return ..(M)
	M << "<span class = 'danger'><big>You cannot attack your master.</big></span>"

/mob/living/carbon/human/scp049/proc/scp049_attack(var/mob/living/target)
	var/obj/item/grab/G = locate() in src
	if (!G)
		visible_message("<span class = 'danger '><i>[name] grabs [target]!</i></danger>")
		G = make_grab(src, target)
		
/mob/living/carbon/human/scp049/proc/scp049_attack_2(var/mob/living/target)
	var/obj/item/grab/G = locate() in src
	if (G)
		if (target in attempted_surgery_on)
			src << "<span class = 'danger'>This cadaver is already spent.</span>"
			qdel(G)
			return
		visible_message("<span class = 'danger'>[src] begins to perform surgery on [target].</span>")
		if (do_mob(src, target, 150))
			visible_message("<span class = 'danger'>[src] performs surgery on [target].</span>")
			attempted_surgery_on += target
			spawn (20)
				if (target)
					if (ishuman(target))
						var/mob/living/carbon/human/H = target
						
						var/foundclient = TRUE
						if (!H.client)
							foundclient = FALSE
							for (var/mob/observer/ghost/ghost in GLOB.ghost_mob_list)
								if (ghost.mind.current == H)
									ghost.reenter_corpse_p()
									foundclient = TRUE 
									
						if (foundclient)
							H.rejuvenate()
							H.visible_message("<span class = 'danger'><big>[H] rises up again.</big></span>")
							H.pre_scp049_name = H.name 
							H.pre_scp049_real_name = H.real_name
							H.set_species("SCP-049-1")
							H.real_name = "SCP-049-[++zombies]"
							H.name = H.real_name
						else 
							H.visible_message("<span class = 'notice'>The surgery seems to have been unsucessful.</span>")
					else
						target.visible_message("<span class = 'notice'>The surgery seems to have been unsucessful.</span>")
			qdel(G)