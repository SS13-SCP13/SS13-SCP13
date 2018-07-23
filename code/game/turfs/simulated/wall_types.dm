/turf/simulated/wall/r_wall
	icon_state = "rgeneric"
/turf/simulated/wall/r_wall/New(var/newloc)
	..(newloc, "plasteel","plasteel") //3strong
/turf/simulated/wall/ocp_wall
	icon_state = "rgeneric"
/turf/simulated/wall/ocp_wall/New(var/newloc)
	..(newloc, "osmium-carbide plasteel", "osmium-carbide plasteel")




/turf/simulated/wall/cult
	icon_state = "cult"
	blend_turfs = list(/turf/simulated/wall)

/turf/simulated/wall/cult/New(var/newloc, var/reinforce = 0)
	..(newloc,"cult",reinforce ? "cult2" : null)

/turf/simulated/wall/cult/can_join_with(var/turf/simulated/wall/W)
	if(material && W.material && material.icon_base == W.material.icon_base)
		return 1
	else if(istype(W, /turf/simulated/wall))
		return 1
	return 0

/turf/simulated/wall/cult/reinf/New(var/newloc)
	..(newloc, 1)

/turf/simulated/wall/cult/dismantle_wall()
	cult.remove_cultiness(CULTINESS_PER_TURF)
	..()

/turf/unsimulated/wall/cult
	name = "cult wall"
	desc = "Hideous images dance beneath the surface."
	icon = 'icons/turf/wall_masks.dmi'
	icon_state = "cult"

/turf/simulated/wall/iron/New(var/newloc)
	..(newloc,"iron")
/turf/simulated/wall/uranium/New(var/newloc)
	..(newloc,"uranium")
/turf/simulated/wall/diamond/New(var/newloc)
	..(newloc,"diamond")
/turf/simulated/wall/gold/New(var/newloc)
	..(newloc,"gold")
/turf/simulated/wall/silver/New(var/newloc)
	..(newloc,"silver")
/turf/simulated/wall/phoron/New(var/newloc)
	..(newloc,"phoron")
/turf/simulated/wall/sandstone/New(var/newloc)
	..(newloc,"sandstone")
/turf/simulated/wall/wood/New(var/newloc)
	..(newloc,"wood")
/turf/simulated/wall/ironphoron/New(var/newloc)
	..(newloc,"iron","phoron")
/turf/simulated/wall/golddiamond/New(var/newloc)
	..(newloc,"gold","diamond")
/turf/simulated/wall/silvergold/New(var/newloc)
	..(newloc,"silver","gold")
/turf/simulated/wall/sandstonediamond/New(var/newloc)
	..(newloc,"sandstone","diamond")


// Kind of wondering if this is going to bite me in the butt.
/turf/simulated/wall/voxshuttle/New(var/newloc)
	..(newloc,"voxalloy")
/turf/simulated/wall/voxshuttle/attackby()
	return
/turf/simulated/wall/titanium/New(var/newloc)
	..(newloc,"titanium")

/turf/simulated/wall/alium
	icon_state = "jaggy"
	floor_type = /turf/simulated/floor/fixed/alium
	list/blend_objects = newlist()

/turf/simulated/wall/alium/New(var/newloc)
	..(newloc,"alien alloy")

/turf/simulated/wall/alium/ex_act(severity)
	if(prob(explosion_resistance))
		return
	..()


// NEW WALLS
// Reinforced walls

/turf/simulated/wall/scp/New()
      return

/turf/simulated/wall/scp/r_wall/r_mid
	icon_state = "r_mid"

/turf/simulated/wall/scp/r_wall/r_end
	icon_state = "r_end"

/turf/simulated/wall/scp/r_wall/r_t
	icon_state = "r_t"

/turf/simulated/wall/scp/r_wall/r_x
	icon_state = "r_x"

// Regular Walls

/turf/simulated/wall/scp/wall/mid
	icon_state = "mid"

/turf/simulated/wall/scp/wall/end
	icon_state = "end"

/turf/simulated/wall/scp/wall/t
	icon_state = "t-shape"

/turf/simulated/wall/scp/wall/x
	icon_state = "x-shape"