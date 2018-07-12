GLOBAL_LIST_EMPTY(scp106s)
GLOBAL_LIST_EMPTY(scp106_landmarks)

/mob/living/carbon/human/scp106
	name = "SCP-106"
	desc = "A creature in the form of a rotting, elderly humanoid."
	SCP = /datum/scp/SCP_106
	var/mob/living/target = null
	var/last_x = -1
	var/last_y = -1
	var/last_z = -1

/datum/scp/SCP_106
	name = "SCP-106"
	designation = "106"
	classification = KETER

/obj/scp106_sprite_helper
	icon = 'icons/mob/scp106.dmi'
	name = ""
	desc = "" // I doubt this matters but just in case

/obj/scp106_sprite_helper/Click(location,control,params)
	if (vis_locs.len)
		var/atom/A = vis_locs[1]
		return A.Click(location, control, params)

/obj/scp106_sprite_helper/DblClick(location,control,params)
	if (vis_locs.len)
		var/atom/A = vis_locs[1]
		return A.DblClick(location, control, params)

/mob/living/carbon/human/scp106/New()
	..()
	update_icon = FALSE
	name = initial(name)
	vis_contents += new /obj/scp106_sprite_helper
	verbs += /mob/living/carbon/human/scp106/proc/phase_through_airlock
	if (loc in GLOB.scp106_floors)
		verbs += /mob/living/carbon/human/scp106/proc/exit_pocket_dimension
	else
		verbs += /mob/living/carbon/human/scp106/proc/enter_pocket_dimension

	set_species("SCP-106")
	GLOB.scp106s += src

/mob/living/carbon/human/scp106/Destroy()
	GLOB.scp106s -= src
	..()

/mob/living/carbon/human/scp106/Move()
	..()
	for (var/obj/scp106_sprite_helper/O in vis_contents)
		O.dir = dir
		break

// NPC stuff
/mob/living/carbon/human/scp106/proc/getTarget()
	/* if we have no target, or our current target is a nonhuman, or our target is out of view,
	 * try to find a better one. Failing to do so just makes us continue to go after the old target */
	if (!target || !ishuman(target) || !(src in viewers(world.view, target)))

		var/list/possible_targets = list()
		for (var/mob/living/L in view())
			possible_targets += L

		var/attempts = 0
		while (++attempts <= 3)
			for (var/living in possible_targets)
				var/mob/living/L = living
				switch (attempts)
					if (1)
						// pick the best target, a human in our prefered age range
						if (ishuman(L))
							var/mob/living/carbon/human/H = L
							if (H.age >= 10 && H.age <= 25)
								target = H
								attempts = 3
								break
					if (2)
						// pick any human target
						if (ishuman(L))
							target = L
							attempts = 3
							break
					if (3)
						// pick any target
						target = L
						attempts = 3
						break
	return target

// NPC stuff
/mob/living/carbon/human/scp106/proc/pursueTarget()

	getTarget()

	if (!target)
		return

	if (!target in orange(1, src))
		walk_to(src, target)
		return

	scp106_attack(target)

/mob/living/carbon/human/scp106/proc/scp106_attack(var/mob/living/target)
	var/obj/item/grab/G = locate() in src
	if (!G)
		visible_message("<span class = 'danger'><i>[name] reaches towards [target]!</i></danger>")
		make_grab(src, target)

/mob/living/carbon/human/attack_hand(mob/living/carbon/M)
	if (!istype(M, /mob/living/carbon/human/scp106))
		return ..(M)
	var/mob/living/carbon/human/scp106/H = M
	H.scp106_attack(src)

/mob/living/carbon/human/scp106/proc/go_back()
	set name = "Return"
	set category = "SCP"
	set desc = "Return to the area you last teleported from."
	if (last_x != -1) // shouldn't be possible but just in case
		forceMove(locate(last_x, last_y, last_z))
	verbs -= /mob/living/carbon/human/scp106/proc/go_back

/mob/living/carbon/human/scp106/proc/phase_through_airlock()
	set name = "Phase Through Airlock"
	set category = "SCP"
	set desc = "Phase through an airlock in front of you."
	for (var/obj/machinery/door/airlock/A in get_step(src, dir))
		invisibility = 100
		if (do_after(src, 30, A))
			forceMove(get_step(src, dir))
			forceMove(get_step(src, dir))
		invisibility = 0

/mob/living/carbon/human/scp106/proc/enter_pocket_dimension()
	set name = "Enter Pocket Dimension"
	set category = "SCP"
	set desc = "Enter your pocket dimension."
	if (do_after(src, 50, get_turf(src)))
		forceMove(pick(GLOB.scp106_floors))
		verbs -= /mob/living/carbon/human/scp106/proc/enter_pocket_dimension
		verbs += /mob/living/carbon/human/scp106/proc/exit_pocket_dimension

/mob/living/carbon/human/scp106/proc/exit_pocket_dimension()
	set name = "Exit Pocket Dimension"
	set category = "SCP"
	set desc = "Exit your pocket dimension."
	if (do_after(src, 50, get_turf(src)))
		forceMove(pick(GLOB.simulated_turfs_scp106))
		verbs -= /mob/living/carbon/human/scp106/proc/exit_pocket_dimension
		verbs += /mob/living/carbon/human/scp106/proc/enter_pocket_dimension

/mob/living/carbon/human/scp106/apply_damage(var/damage = 0, var/damagetype = BRUTE, var/def_zone = null, var/blocked = 0, var/damage_flags = 0, var/obj/used_weapon = null, var/obj/item/organ/external/given_organ = null)
	. = ..(damage, damagetype, def_zone, blocked, damage_flags, used_weapon, given_organ)
	if (getBruteLoss() + getFireLoss() + getToxLoss() + getCloneLoss() >= 100)
		src << "<span class = 'danger'><i>You flee back to your pocket dimension!</i></danger>"
		forceMove(pick(GLOB.scp106_floors))


// special objects
/obj/scp106_exit
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	anchored = 1.0
	unacidable = 1
	simulated = 0
	invisibility = 100

/obj/scp106_exit/Crossed(var/mob/living/L)
	if (!istype(L) || istype(L, /mob/living/carbon/human/scp106))
		return ..(L)
	L.forceMove(pick(GLOB.simulated_turfs_scp106))

/obj/scp106_teleport
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x2"
	anchored = 1.0
	unacidable = 1
	simulated = 0
	invisibility = 100

/obj/scp106_teleport/Crossed(var/mob/living/L)
	if (!istype(L) || istype(L, /mob/living/carbon/human/scp106))
		return ..(L)
	if (prob(50))
		L.adjustBrainLoss(1000)
	else
		L.forceMove(pick(GLOB.scp106_floors))
