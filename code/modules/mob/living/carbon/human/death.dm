/mob/living/carbon/human/gib()

	var/loc_is_turf = isturf(loc)

	for(var/obj/item/organ/I in internal_organs)
		I.removed()
		if(loc_is_turf)
			I.throw_at(get_edge_target_turf(src,pick(GLOB.alldirs)),rand(1,3),30)

	for(var/obj/item/organ/external/E in src.organs)
		E.droplimb(0,DROPLIMB_EDGE,1)

	for(var/movable in contents)
		var/atom/movable/AM = movable
		if (isitem(AM))
			var/obj/item/I = AM
			drop_from_inventory(I)
			I.throw_at(get_edge_target_turf(src,pick(GLOB.alldirs)), rand(1,3), round(30/I.w_class))
		else
			AM.forceMove(get_turf(src))

	..(species.gibbed_anim)

	gibs(loc, dna, null, species.get_flesh_colour(src), species.get_blood_colour(src))

/mob/living/carbon/human/dust()
	if(species)
		..(species.dusted_anim, species.remains_type)
	else
		..()

/mob/living/carbon/human/death(gibbed,deathmessage="seizes up and falls limp...", show_dead_message = "You have died.")

	if(stat == DEAD) return

	BITSET(hud_updateflag, HEALTH_HUD)
	BITSET(hud_updateflag, STATUS_HUD)
	BITSET(hud_updateflag, LIFE_HUD)
	
	// open up a D-Class slot if we're D-Class 
	if (mind && mind.assigned_role == "Class D")
		var/datum/job/J = job_master.occupations_by_type[/datum/job/assistant]
		++J.total_positions
		for (var/M in GLOB.ghost_mob_list)
			M << "<span style = 'color:green'><big>A new D-Class slot has been opened. Use the \"Become D-Class\" verb in the Ghost tab to become one.</big></span>"
		
	//backs up lace if available.
	var/obj/item/organ/internal/stack/s = get_organ(BP_STACK)
	if(s)
		s.do_backup()

	//Handle species-specific deaths.
	species.handle_death(src)

	animate_tail_stop()

	//Handle brain slugs.
	var/obj/item/organ/external/head = get_organ(BP_HEAD)
	var/mob/living/simple_animal/borer/B

	if (head)
		for(var/I in head.implants)
			if(istype(I,/mob/living/simple_animal/borer))
				B = I
	if(B)
		if(!B.ckey && ckey && B.controlling)
			B.ckey = ckey
			B.controlling = 0
		if(B.host_brain.ckey)
			ckey = B.host_brain.ckey
			B.host_brain.ckey = null
			B.host_brain.SetName("host brain")
			B.host_brain.real_name = "host brain"

		verbs -= /mob/living/carbon/proc/release_control

	callHook("death", list(src, gibbed))

	if(ticker && ticker.mode)
		sql_report_death(src)
		ticker.mode.check_win()

	if(wearing_rig)
		wearing_rig.notify_ai("<span class='danger'>Warning: user death event. Mobility control passed to integrated intelligence system.</span>")

	. = ..(gibbed,"no message")
	if(!gibbed)
		handle_organs()
		if(species.death_sound)
			playsound(loc, species.death_sound, 80, 1, 1)
	handle_hud_list()

/mob/living/carbon/human/proc/ChangeToHusk()
	if(HUSK in mutations)	return

	if(f_style)
		f_style = "Shaved"		//we only change the icon_state of the hair datum, so it doesn't mess up their UI/UE
	if(h_style)
		h_style = "Bald"
	update_hair(0)

	mutations.Add(HUSK)
	for(var/obj/item/organ/external/E in organs)
		E.disfigured = 1
	update_body(1)
	return

/mob/living/carbon/human/proc/Drain()
	ChangeToHusk()
	mutations |= HUSK
	return

/mob/living/carbon/human/proc/ChangeToSkeleton()
	if(SKELETON in src.mutations)	return

	if(f_style)
		f_style = "Shaved"
	if(h_style)
		h_style = "Bald"
	update_hair(0)

	mutations.Add(SKELETON)
	for(var/obj/item/organ/external/E in organs)
		E.disfigured = 1
	update_body(1)
	return
