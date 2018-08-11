#define MESSAGE_COOLDOWN 100

/obj/structure/closet/coffin/scp895
	name = "oak coffin"
	var/redzone = 5
	var/list/cooldown = list()
	var/list/start = list()
	var/list/users = list()

/obj/structure/closet/coffin/scp895/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/structure/closet/coffin/scp895/Destroy()
	STOP_PROCESSING(SSobj, src)
	return ..()

/obj/structure/closet/coffin/scp895/Process()
	var/list/our_view = view(redzone)
	for(var/mob/observer/eye/E in our_view)
		if(ishuman(E.owner))
			var/mob/living/carbon/human/H = E.owner
			if(!start[H])
				start[H] = world.time
			if(!(H in users))
				users += H
			var/time = Floor((world.time - start[H])/10)
			if((time >= 5) && ((time % 51) == 0))
				H << sound('sound/effects/Heart Beat.ogg', channel = 895, volume = 70)
			H.hallucination_duration = max(H.hallucination_duration, 15)
			H.hallucination_power = max(H.hallucination_power, 45)
			if (!cooldown[H] || (world.time >= (cooldown[H] + MESSAGE_COOLDOWN)))
				cooldown[H] = world.time
				to_chat(H, "<span class='danger'><B>You see unimaginable horrors within \the [src]...</B></span>")
			if((time >= 10) && ((time % 2) == 0))
				var/obj/item/organ/internal/brain = H.internal_organs_by_name[BP_BRAIN]
				if(brain)
					brain.take_damage(2)
	for(var/mob/living/carbon/human/H in users)
		if(!(H in our_view))
			users -= H
			start -= H
			cooldown -= H
			H << sound(null, channel = 895, volume = 70)


#undef MESSAGE_COOLDOWN