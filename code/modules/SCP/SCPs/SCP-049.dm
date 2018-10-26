GLOBAL_LIST_EMPTY(scp049s)
GLOBAL_LIST_EMPTY(scp049_1s)

/mob/living/carbon/human/scp049
	desc = "A mysterious plague doctor."
	SCP = /datum/scp/SCP_049
	var/list/attempted_surgery_on = list()
	var/list/pestilence_images = list()
	var/mob/living/target = null
	var/zombies = 0
	var/next_emote = -1

/mob/living/carbon/human/scp049/examine(mob/user)
	user << "<b><span class = 'euclid'><big>SCP-049</big></span></b> - [desc]"

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

	verbs += /mob/living/carbon/human/proc/SCP_049_talk

	// emotes
	verbs += list(
		/mob/living/carbon/human/scp049/proc/greetings,
		/mob/living/carbon/human/scp049/proc/yet_another_victim,
		/mob/living/carbon/human/scp049/proc/you_are_not_a_doctor,
		/mob/living/carbon/human/scp049/proc/I_sense_the_disease_in_you,
		/mob/living/carbon/human/scp049/proc/Im_here_to_cure_you
	)

/mob/living/carbon/human/scp049/Destroy()
	GLOB.scp049s -= src
	..()

/mob/living/carbon/human/scp049/Life()
	..()
	if (client)
		client.images -= pestilence_images
		pestilence_images.Cut()
		for (var/mob/living/carbon/human/H in view(world.view, src))
			if (H.pestilence)
				pestilence_images += image('icons/mob/scp049.dmi', H, "pestilence", MOB_LAYER+0.01)
		client.images |= pestilence_images

/mob/living/carbon/human/scp049/Move()
	..()
	update_stuff()

/mob/living/carbon/human/scp049/forceMove(destination)
	. = ..(destination)
	update_stuff()

/mob/living/carbon/human/scp049/proc/update_stuff()
	// stand_icon tends to come back after movement
	fix_icons()
	
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

	if (lying || resting)
		SH.icon = turn(icon('icons/mob/scp049.dmi'), 90)
	else 
		SH.icon = 'icons/mob/scp049.dmi'

	SH.dir = dir

/mob/living/carbon/human/scp049/get_pressure_weakness()
	return 0

/mob/living/carbon/human/scp049/handle_breath()
	return 1

/mob/living/carbon/human/scp049/movement_delay()
	return -1.5

// NPC stuff
/mob/living/carbon/human/scp049/proc/getTarget()

	// stupid hack
	if (client)
		target = null
		return target

	/* if we have no target, or our target is dead, or our target is not human, or our target is out of view,
	 * try to find a better one. Failing to do so just makes us continue to go after the old target */
	if (!target || target.stat == DEAD || !ishuman(target) || (ishuman(target) && !target:pestilence) || !(src in viewers(world.view, target)))

		// add all living mobs, and humans with the Pestilence
		. = list()
		for (var/mob/living/L in oview(world.view, src))
			if (L.stat != DEAD)
				if (!ishuman(L))
					. += L
				else if (ishuman(L))
					var/mob/living/carbon/human/H = L
					if (H.pestilence)
						. += H

		// if there is at least one human in this list, remove all non-human candidates
		for (var/mob/living/carbon/human/H in .)
			for (var/mob/living/L in .)
				if (!ishuman(L))
					. -= L
			break

		// pick a random candidate
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
		walk_to(src, target, 1, 0.2+config.run_speed)
		return TRUE

	walk(src, null)

	if (!locate(/obj/item/grab) in src)
		scp049_attack(target)

	return TRUE

/mob/living/carbon/human/attack_hand(mob/living/carbon/M)
	if (!isscp049(M) || isscp049_1(src) || src == M)
		return ..(M)
	var/mob/living/carbon/human/scp049/H = M
	if (H.client && !pestilence)
		H << "<span class = 'danger'>They are not infected with the Pestilence.</span>"
		return
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
		if (ishuman(M))
			var/mob/living/carbon/human/H = M
			if (H != src)
				H.pestilence = TRUE
		return ..(M)
	M << "<span class = 'danger'><big>You cannot attack your master.</big></span>"

/mob/living/carbon/human/scp049/bullet_act(var/obj/item/projectile/P, var/def_zone)
	if (P.damage && !P.nodamage && ishuman(P.firer))
		var/mob/living/carbon/human/H = P.firer
		if (H != src)
			H.pestilence = TRUE
	return ..(P, def_zone)

/mob/living/carbon/human/scp049/attackby(obj/item/W, mob/user)
	if (W.force > 0 && ishuman(user))
		var/mob/living/carbon/human/H = user
		if (H != src)
			H.pestilence = TRUE
	return ..(W, user)

/mob/living/carbon/human/scp049/proc/scp049_attack(var/mob/living/target)
	var/obj/item/grab/G = locate() in src
	if (!G)
		visible_message("<span class = 'danger '><i>[name] grabs [target]!</i></danger>")
		G = make_grab(src, target)
		target.Weaken(1)
		// NPC stuff
		if (!client)
			spawn (20)
				if (G)
					scp049_attack_2(target)

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
			spawn (50)
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
							H.pre_scp049_species = H.species.name
							H.set_species("SCP-049-1")
							H.real_name = "SCP-049-[++zombies]"
							H.name = H.real_name
							H.verbs += /mob/living/carbon/human/proc/SCP_049_talk
							GLOB.scp049_1s += H
						else
							H.visible_message("<span class = 'notice'>The surgery seems to have been unsucessful.</span>")
						H.pestilence = FALSE
						src << "<span class = 'good'><big>You have cured [H].</big></span>"
					else
						target.visible_message("<span class = 'notice'>The surgery seems to have been unsucessful.</span>")
			qdel(G)

// special channel that lets SCP-049 and SCP-049-1 communicate
/mob/living/carbon/human/proc/SCP_049_talk()
	set category = "SCP-049"
	set name = "Communicate"
	if (isscp049(src) || isscp049_1(src))
		var/say = sanitize(input(src, "Communicate what?") as text)
		for (var/M in GLOB.scp049s|GLOB.scp049_1s)
			M << "<em><strong>[real_name]</strong>: [say]</em>"

// SCP-049 emotes
/mob/living/carbon/human/scp049/proc/greetings()
	set category = "SCP-049"
	set name = "Greetings"
	if (world.time >= next_emote)
		playsound(src, 'sound/scp/voice/SCP049_1.ogg', 100)
		next_emote = world.time + 10

/mob/living/carbon/human/scp049/proc/yet_another_victim()
	set category = "SCP-049"
	set name = "Yet another victim"
	if (world.time >= next_emote)
		playsound(src, 'sound/scp/voice/SCP049_2.ogg', 100)
		next_emote = world.time + 40

/mob/living/carbon/human/scp049/proc/you_are_not_a_doctor()
	set category = "SCP-049"
	set name = "You are not a doctor"
	if (world.time >= next_emote)
		playsound(src, 'sound/scp/voice/SCP049_3.ogg', 100)
		next_emote = world.time + 20

/mob/living/carbon/human/scp049/proc/I_sense_the_disease_in_you()
	set category = "SCP-049"
	set name = "I sense the disease in you"
	if (world.time >= next_emote)
		playsound(src, 'sound/scp/voice/SCP049_4.ogg', 100)
		next_emote = world.time + 20

/mob/living/carbon/human/scp049/proc/Im_here_to_cure_you()
	set category = "SCP-049"
	set name = "I'm here to cure you"
	if (world.time >= next_emote)
		playsound(src, 'sound/scp/voice/SCP049_5.ogg', 100)
		next_emote = world.time + 40
