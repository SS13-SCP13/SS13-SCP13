/area/turbolift
	name = "\improper Turbolift"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED


/area/turbolift/start
	name = "\improper Turbolift Start"

/area/turbolift/gatea
	name = "\improper Topside Gate A"
	base_turf = /turf/simulated/open

/area/turbolift/entrancezone
	name = "\improper Entrance Zone"
	base_turf = /turf/simulated/open


// Elevator areas.
/area/turbolift/ds90_surf
	name = "lift (topside)"
	lift_floor_label = "Surface"
	lift_floor_name = "Surface"
	lift_announce_str = "Arriving at Surface: General staff amenities, Security base."

/area/turbolift/ds90_ez
	name = "lift (entrance zone)"
	lift_floor_label = "Entrance Zone"
	lift_floor_name = "Entrance Zone"
	lift_announce_str = "Arriving at Entrance Zone: Research Laboratories, Administrative Offices, Medical Bay, Security and Engineering."

/area/turbolift/gatebsurf
	name = "lift (surface)"
	lift_floor_label = "Surface"
	lift_floor_name = "Surface"
	lift_announce_str = "Arriving at Surface: General staff amenities, Security base."

/area/turbolift/gatebent
	name = "lift (entrance zone)"
	lift_floor_label = "Entrance Zone"
	lift_floor_name = "Entrance zone"
	lift_announce_str = "Arriving at Entrance Zone: Research Laboratories, Administrative Offices, Medical Bay, Security and Engineering."

/area/turbolift/torch_ground
	name = "lift (lower deck)"
	lift_floor_label = "Deck 4"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Shuttle Docks. Cargo Storage. Main Hangar. Supply Office. Expedition Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor