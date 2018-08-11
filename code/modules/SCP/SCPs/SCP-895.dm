#define MESSAGE_COOLDOWN 100

/obj/structure/closet/coffin/scp895
	name = "oak coffin"
	var/redzone = 5
	var/list/cooldown = list()

/obj/structure/closet/coffin/scp895/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/structure/closet/coffin/scp895/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/structure/closet/coffin/scp895/Process()
	for(var/mob/observer/eye/E in view(redzone))
		if(ishuman(E.owner))
			var/mob/living/carbon/human/H = E.owner
			H.hallucination_duration = max(H.hallucination_duration, 15)
			H.hallucination_power = max(H.hallucination_power, 45)
			if (!cooldown[H] || (world.time >= (cooldown[H] + MESSAGE_COOLDOWN)))
				cooldown[H] = world.time
				to_chat(H, "<span class='danger'><B>You see unimaginable horrors within \the [src]...</B></span>")

#undef MESSAGE_COOLDOWN