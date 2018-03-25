/obj/machinery/scp294
	name = "Hot Drinks machine"
	desc = "A standard coffee vending machine. This one seems to have a QWERTY keyboard."
	icon = 'icons/obj/scp294.dmi'
	icon_state = "coffee_294"
	layer = 2.9
	anchored = 1
	density = 1
	var/uses_left = 12
	var/last_use = 0
	var/restocking_timer = 0
	SCP = /datum/scp/SCP_294


/datum/scp/SCP_294
	name = "SCP-294"
	designation = "294"
	classification = EUCLID


/obj/machinery/scp294/attack_hand(mob/user)
	if((last_use + 3 SECONDS) > world.time)
		visible_message("<span class='notice'>[src] displays NOT READY message.</span>")
		return
	last_use = world.time
	if(uses_left < 1)
		visible_message("<span class='notice'>[src] displays RESTOCKING, PLEASE WAIT message.</span>")
		return
	uses_left--
	if (uses_left < 1)
		spawn(2000)
			uses_left = 12
	var/product = null
	var/mob/living/carbon/victim = null
	var/input_reagent = lowertext(input("Enter the name of any liquid", "What would you like to drink?") as text)
	for(var/mob/living/carbon/M in world)
		if (lowertext(M.name) == input_reagent)
			if (istype(M, /mob/living/carbon/))
				victim = M
				if(victim)
					to_chat(M, "You feel a sharp stabbing pain in your insides!")
					var/i
					var/pain = rand(1, 6)
					for(i=1; i<=pain; i++)
						M.adjustBruteLoss(5)
	if(!victim)
		product = find_reagent(input_reagent)
	sleep(10)
	if(product)
		var/obj/item/weapon/reagent_containers/food/drinks/sillycup/D = new /obj/item/weapon/reagent_containers/food/drinks/sillycup(loc)
		D.reagents.add_reagent(product, 30)
		visible_message("<span class='notice'>[src] dispenses a small paper cup.</span>")
	else if (victim)
		var/obj/item/weapon/reagent_containers/food/drinks/sillycup/D = new /obj/item/weapon/reagent_containers/food/drinks/sillycup(loc)
		product = victim.take_blood(D,30)
		D.reagents.reagent_list += product
		D.reagents.update_total()
		D.on_reagent_change()
		visible_message("<span class='notice'>[src] dispenses a small paper cup.</span>")
	else
		visible_message("<span class='notice'>[src]'s OUT OF RANGE light flashes rapidly.</span>")



/obj/machinery/scp294/proc/find_reagent(input)
	. = FALSE
	if(chemical_reagents_list[input])
		var/datum/reagent/R = chemical_reagents_list[input]
		if(R)
			return R.type
	else
		for(var/X in chemical_reagents_list)
			var/datum/reagent/R = chemical_reagents_list[X]
			if(R && input == replacetext(lowertext(R.name), " ", ""))
				return R.type
			else if(R && input == replacetext(capitalize(R.name), " ", ""))
				return R.type