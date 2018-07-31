/obj/item/scp513
	name = "rusty cowbell"
	desc = "An old cowbell, covered in immense amounts of rust."
	icon = 'icons/obj/scp.dmi'
	icon_state = "mindfuckcowbell"
	var/global/mob/living/carbon/list/victims = list()
	var/global/mob/living/carbon/list/brain_damage_timing = list()
	var/static/list/paranoia_messages = list("You feel as if something is watching you...", "It feels as if something is stalking you")
	var/static/list/assault_messages = list("A horrifying monster attacks you, before running off!", "You are bolted awake by a horrifying entity attacking you!")
	var/static/list/spook_messages = list("You see a disturbing entity lingering in your peripheral vision", "You swear you can see an abomination lurking...",
		"A strange entity stares at you, and sends chiils to your very core.")

/obj/item/scp513/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)

/obj/item/scp513/proc/ring(mob/living/user)
	if(user in victims)
		to_chat(user, "<span class='notice'>I rung it once, and I felt terrible. Why the hell would I that again?!</span>")
		return
	for(var/mob/living/carbon/M in hear(7, get_turf(src)))
		to_chat(M, "<span class='danger'><i>\The [src] rings, sending chills to your very bone.</i></span>")
		M << pick('sound/scp/spook/Bell2.ogg', 'sound/scp/spook/Bell3.ogg')
		if(!(M in victims))
			victims += M
			brain_damage_timing[M] = world.time + rand(3000, 6500)

/obj/item/scp513/pickup(mob/living/user)
	. = ..()
	if(user.a_intent == I_HURT)
		to_chat(user, "<span class='danger'><b><i>You accidentaly ring \the [src]!</i></b></span>")
		ring(user)

/obj/item/scp513/attack_self(mob/living/user)
	ring(user)

/obj/item/scp513/Process()
	for(var/mob/living/carbon/M in victims)
		if(prob(0.5))
			to_chat(M, "<span class='warning'><i>[pick(paranoia_messages)]</i></span>")
		var/next_scare = victims[M]
		var/next_brainhurt = brain_damage_timing[M]
		if (M.sleeping > 4) //
			to_chat(M, "<span class='danger'>[pick(assault_messages)]</span>")
			M.sleeping = 0
			M.adjustBruteLoss(rand(1,7))
		else if (world.time >= next_scare)
			victims[M] = world.time + rand(100,1200)
			to_chat(M, "<span class='warning'><i>[pick(spook_messages)]</i></span>")
		else if (world.time >= next_brainhurt)
			brain_damage_timing[M] = world.time + 5
			var/obj/item/organ/internal/brain = M.internal_organs_by_name[BP_BRAIN]
			if(brain)
				brain.take_damage(rand(4,6))