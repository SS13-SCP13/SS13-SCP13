/turf/unsimulated/floor/scp106
	name = "strange corrosive void"
	icon_state = "black"
	
/turf/unsimulated/floor/scp106/New()
	..()
	SSprocessing.processing += src 
	
/turf/unsimulated/floor/scp106/Destroy()
	SSprocessing.processing -= src
	..()
	
/turf/unsimulated/floor/scp106/process()
	for (var/mob/living/carbon/C in contents)
		for (var/organ in C.organs)
			var/obj/item/organ/I = organ
			if (!(I.status & ORGAN_DEAD))
				I.take_damage(10)
				I.scp106_affected = TRUE
				C.emote("scream")