/obj/item/weapon/scp513
	name = "cowbell"
	desc = "A cowbell that just LOOKS like a clown horn."
	icon = 'icons/obj/items.dmi'
	icon_state = "bike_horn"
	item_state = "bike_horn"
	throwforce = 3
	w_class = ITEM_SIZE_SMALL
	throw_speed = 3
	throw_range = 15
	attack_verb = list("Belled")
	var/list/victims = list()
	var/list/things = list()
	var/number = 1
	var/client/client
	SCP = /datum/scp/SCP_513

/datum/scp/SCP_513
	name = "SCP-513"
	designation = "513"
	classification = SAFE

/obj/item/weapon/scp513/proc/generate_mirage()
	var/icon/T = new('icons/obj/trash.dmi')
	return image(T, pick(T.IconStates()), layer = BELOW_TABLE_LAYER)


/obj/item/weapon/scp513/attack_self(mob/user as mob)
	to_chat(user, "<span class='warning'>You feel like you're being watched.</span>")
	playsound(src.loc, 'sound/items/bikehorn.ogg', 50, 1)
	if(!(user in victims))
		victims += user

