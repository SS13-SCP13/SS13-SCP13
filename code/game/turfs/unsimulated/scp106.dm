GLOBAL_LIST_EMPTY(scp106_floors)

/turf/unsimulated/floor/scp106
	name = "strange corrosive void"
	icon_state = "black"

/turf/unsimulated/floor/scp106/New()
	..()
	SSprocessing.processing += src
	GLOB.scp106_floors += src

/turf/unsimulated/floor/scp106/Destroy()
	SSprocessing.processing -= src
	GLOB.scp106_floors -= src
	..()

/turf/unsimulated/floor/scp106/process()
	for (var/mob/living/carbon/C in contents)
		for (var/organ in shuffle(C.organs))
			var/obj/item/organ/I = organ
			if (I.scp106_vulnerable && !(I.status & ORGAN_DEAD) && prob(10))
				I.scp106_affected = TRUE
				break
		C.adjustBruteLoss(5)