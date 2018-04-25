/obj/structure/scp151
	name = "painting"
	desc = "A painting depicting a rising wave."
	icon = 'icons/obj/structures.dmi'
	icon_state = "great_wave"
	anchored = 1
	density = 1
	var/last_regen = 0
	var/gen_time = 100 //how long we wait between hurting victims
	var/list/victims = list()

/obj/structure/scp151/proc/hurt_victims() //simulate drowning
	for(mob/living/user in victims)
		user.apply_damage(10, OXY)

/obj/structure/scp151/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)
	last_regen = world.time

/obj/structure/scp151/Process()
	if(world.time > last_regen + gen_time) //hurt victims after time
		hurt_victims()
		last_regen = world.time

/obj/structure/scp151/examine(mob/living/user)
	. = ..()
	victims += user //on examine, adds user into victims list
	spawn(200)
		user.emote("cough")
	spawn(400)
		to_chat(user, "<span class='warning'>Your lungs begin to feel tight, and the briny taste of seawater permeates your mouth.</span>")
