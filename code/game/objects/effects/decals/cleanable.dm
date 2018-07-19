/obj/effect/decal/cleanable
	var/list/random_icon_states

/obj/effect/decal/cleanable/clean_blood(var/ignore = 0)
	if(!ignore)
		qdel(src)
		return
	..()

/obj/effect/decal/cleanable/Initialize()
	global.cleanable_decals_list += src
	if (random_icon_states && length(src.random_icon_states) > 0)
		src.icon_state = pick(src.random_icon_states)
	. = ..()
	
/obj/effect/decal/cleanable/Destroy()
	global.cleanable_decals_list -= src 
	return ..()