// floors
GLOBAL_LIST_EMPTY(scp106_floors)

/turf/unsimulated/floor/scp106
	name = "strange corrosive void"
	icon_state = "Dimension"
//	color = "#000000" // because it's not black for some stupid reason

/turf/unsimulated/floor/scp106/New()
	..()
	processing_turfs += src
	GLOB.scp106_floors += src

/turf/unsimulated/floor/scp106/Destroy()
	processing_turfs -= src
	GLOB.scp106_floors -= src
	. = ..()

/turf/unsimulated/floor/scp106/process()
	for (var/mob/living/L in contents)
		if (istype(L, /mob/living/carbon/human/scp106))
			// since we "take" 0.1x damage in the PD, these actually become -5
			L.adjustBruteLoss(-50)
			L.adjustFireLoss(-50)
			L.adjustToxLoss(-50)
			L.adjustCloneLoss(-50)
		else
			if (iscarbon(L))
				var/mob/living/carbon/C = L
				for (var/organ in shuffle(C.organs))
					var/obj/item/organ/I = organ
					if (I.scp106_vulnerable && !(I.status & ORGAN_DEAD) && prob(10))
						I.scp106_affected = TRUE
						break
			L.adjustFireLoss(5)

// walls
/turf/unsimulated/wall/scp106
	name = "void wall"
	color = "#000000"
