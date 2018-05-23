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
								attempts = 4
								break
					if (2)
						// pick any human target
						if (ishuman(L))
							target = L
							attempts = 4
							break
					if (3)
						// pick any target
						target = L
						attempts = 4
						break
	return target

/mob/living/carbon/human/scp106/proc/pursueTarget()

	getTarget()

	if (!target)
		return

	if (!target in orange(1, src))
		walk_to(src, target)
		return

	visible_message("<span class = 'danger'><i>[name] lunges at [target]!</i></danger>")
	if (!iscarbon(target))
		target.apply_damage(20, BRUTE)
	else
		var/mob/living/carbon/C = target
		for (var/organ in C.organs)
			var/obj/item/organ/I = organ
			if (!(I.status & ORGAN_DEAD))
				I.take_damage(20)
				I.scp106_affected = TRUE
				C.emote("scream")

/mob/living/carbon/human/scp106/New()
	..()
	set_species("SCP-106")
	scp106s += src

/mob/living/carbon/human/scp106/Destroy()
	scp106s -= src
	..()

/mob/living/carbon/human/scp106/Life()
	..()
	pursueTarget()

// human movement hook
/mob/living/carbon/human/Move()
	..()
	for (var/mob/living/carbon/human/scp106/H in scp106s)
		if (H.target == src && src in view(world.view, H))
			H.pursueTarget()