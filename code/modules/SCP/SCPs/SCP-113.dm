/obj/item/device/scp113
	desc = "The red piece of quartz gleams with unnatural smoothness."
	icon_state = "scp113"
	force = 10.0
	w_class = ITEM_SIZE_HUGE //temporary workaround until I can fix the nodrop code to include noplace in bags/tables
	throwforce = 10.0
	throw_range = 15
	throw_speed = 3
	candrop = 0
	SCP = /datum/scp/SCP_113

/obj/item/device/scp113/examine(mob/user)
	user << "<b><span class = 'safe'><big>SCP-113</big></span></b> - [desc]"

/datum/scp/SCP_113
	name = "SCP-113"
	designation = "113"
	classification = SAFE
	component = /datum/component/scp/SCP_113

/datum/scp/SCP_113/isCompatible(atom/A)
	if(isitem(A))
		return 1

/datum/component/scp/SCP_113
	signal_procs = list(COMSIG_PICKUP = .proc/pickup)
	var/list/victims = list()

/datum/component/scp/SCP_113/proc/pickup(mob/living/user)
	if(!isliving(user))
		return 1
	if(!isitem(owner))
		return
	if (user.gloves)
		return 

	var/obj/item/I = owner
	I.candrop = 0 //reset candrop for new pickup

	var/which_hand = BP_L_HAND //determine hand to burn
	if(!user.hand)
		which_hand = BP_R_HAND

	to_chat(user, "<span class='warning'>The [I.name] begins to sear your hand, burning the skin on contact, and you feel yourself unable to drop it.</span>")
	var/damage_coeff = 1
	if(user in victims)
		damage_coeff = Clamp((5000-(world.time - victims[user]))/1000,1,5)
	user.apply_damage(10*damage_coeff, BURN, which_hand, 0) //administer damage
	user.apply_damage(30*damage_coeff, TOX, which_hand, 0)

	spawn(200)
		to_chat(user, "<span class='warning'>Bones begin to shift and grind inside of you, and every single one of your nerves seems like it's on fire.</span>")
	spawn(210)
		user.visible_message("<span class='notice'>\The [user] starts to scream and writhe in pain as their bone structure reforms.</span>")
	spawn(300)
		if(user.gender == FEMALE) //swap genders
			user.gender = MALE
		else
			user.gender = FEMALE
		if(ishuman(user))
			var/mob/living/carbon/human/H = user
			H.reset_hair()
			H.update_dna()
			H.update_body()
	spawn(350)
		to_chat(user, "<span class='warning'>The burning begins to fade, and you feel your hand relax it's grip on the [I.name].</span>")
	spawn(360)
		I.candrop = 1 //transformation finished, you can let go now
		victims[user] = world.time
