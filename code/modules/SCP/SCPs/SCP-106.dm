GLOBAL_LIST_EMPTY(scp106s)

/mob/living/carbon/human/scp106
	name = "SCP-106"
	desc = "A rotting, elderly humanoid."
	SCP = /datum/scp/SCP_106
	var/mob/living/target = null

/datum/scp/SCP_106
	name = "SCP-106"
	designation = "106"
	classification = KETER

/obj/scp106_helper
	icon = 'icons/mob/scp106.dmi'
	name = null

/mob/living/carbon/human/scp106/New()
	..()
	update_icon = FALSE
	name = initial(name)
	vis_contents += new /obj/scp106_helper

/mob/living/carbon/human/scp106/Move()
	..()
	for (var/obj/scp106_helper/O in vis_contents)
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
	visible_message("<span class = 'danger'><i>[name] lunges at [target]!</i></danger>")
	var/obj/item/grab/G = locate() in src
	if (!G)
		make_grab(src, target)

/mob/living/carbon/human/attack_hand(mob/living/carbon/M)
	if (!istype(M, /mob/living/carbon/human/scp106))
		return ..(M)
	var/mob/living/carbon/human/scp106/H = M
	H.scp106_attack(src)

/mob/living/carbon/human/scp106/New()
	..()
	set_species("SCP-106")
	GLOB.scp106s += src

/mob/living/carbon/human/scp106/Destroy()
	GLOB.scp106s -= src
	..()