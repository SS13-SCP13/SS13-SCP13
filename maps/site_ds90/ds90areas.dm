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
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/ds90_ez
	name = "lift (entrance zone)"
	lift_floor_label = "Entrance Zone"
	lift_floor_name = "Entrance Zone"
	lift_announce_str = "Arriving at Entrance Zone: Research Laboratories, Administrative Offices, Medical Bay, Security and Engineering."
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/gatebsurf
	name = "lift (surface)"
	lift_floor_label = "Surface"
	lift_floor_name = "Surface"
	lift_announce_str = "Arriving at Surface: General staff amenities, Security base."
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/gatebent
	name = "lift (entrance zone)"
	lift_floor_label = "Entrance Zone"
	lift_floor_name = "Entrance zone"
	lift_announce_str = "Arriving at Entrance Zone: Research Laboratories, Administrative Offices, Medical Bay, Security and Engineering."
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/torch_ground
	name = "lift (lower deck)"
	lift_floor_label = "Deck 4"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Shuttle Docks. Cargo Storage. Main Hangar. Supply Office. Expedition Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/upperentrance
	name = "lift (upper entrance zone)"
	lift_floor_label = "Upper Entrance Zone"
	lift_floor_name = "Upper Entrance Zone"
	lift_announce_str = "Arriving at Upper Entrance Zone: Offices. Conference Rooms. Gate B. Gate A."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/lowerentrance
	name = "lift (lower entrance zone)"
	lift_floor_label = "Lower Entrance Zone"
	lift_floor_name = "Lower Entrance Zone"
	lift_announce_str = "Arriving at Lower Entrance Zone: Management Department. Medical Bay. Access to High Containment Zone."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/lowerentrance4
	name = "lift (lower entrance zone)"
	lift_floor_label = "Lower Entrance Zone"
	lift_floor_name = "Lower Entrance Zone"
	lift_announce_str = "Arriving at Lower Entrance Zone: Management Department. Medical Bay. Access to High Containment Zone."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/hcz
	name = "lift (high containment zone)"
	lift_floor_label = "Heavy Containment Zone"
	lift_floor_name = "Heavy Containment Zone"
	lift_announce_str = "Arriving at High Containment Zone: Keter SCP Containment. HCZ Maintenance. LCZ Access."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/plag2hcz
	name = "lift (SCP-049)"
	lift_floor_label = "SCP-049 Containment"
	lift_floor_name = "SCP-049 Containment Chamber"
	lift_announce_str = "Arriving at SCP-049 Containment. Extreme caution necessary."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/hcz2plag
	name = "lift (Heavy Containment Zone)"
	lift_floor_label = "Heavy Containment Zone"
	lift_floor_name = "Heavy Containment Zone"
	lift_announce_str = "Arriving at High Containment Zone: Keter SCP Containment. HCZ Maintenance. LCZ Access."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/dmh2hcz
	name = "lift (SCP-106)"
	lift_floor_label = "SCP-106 Containment"
	lift_floor_name = "SCP-106 Containment"
	lift_announce_str = "Arriving at SCP-106 Containment: Extreme caution required."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/hcz2dmh
	name = "lift (Heavy Containment Zone)"
	lift_floor_label = "Heavy Containment Zone"
	lift_floor_name = "Heavy Containment Zone"
	lift_announce_str = "Arriving at High Containment Zone: Keter SCP Containment. HCZ Maintenance. LCZ Access."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/lhcz2lcz
	name = "lift (Lower Heavy Containment Zone)"
	lift_floor_label = "Lower Heavy Containment Zone"
	lift_floor_name = "Lower Heavy Containment Zone"
	lift_announce_str = "Arriving at Lower Heavy Containment Zone. Keter SCP Containment. HCZ Maintenance. LCZ Access."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/lcz2lhcz
	name = "lift (Light Containment Zone)"
	lift_floor_label = "Light Containment Zone"
	lift_floor_name = "Light Containment Zone"
	lift_announce_str = "Arriving at Light Containment Zone. Euclid and Safe SCP Containment."
	base_turf = /turf/simulated/floor
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/ulcz2llcz
	name = "lift (Lower Light Containment)"
	lift_floor_label = "Upper LCZ"
	lift_floor_name = "Upper Light Containment Zone"
	lift_announce_str = "Arriving at Upper Light Containment Zone. Euclid and Safe SCP Containment."
	base_turf = /turf/simulated/floor

/area/turbolift/llcz2ulcz
	name = "lift (Upper Low Containment)"
	lift_floor_label = "Lower LCZ"
	lift_floor_name = "Lower Light Containment Zone"
	lift_announce_str = "Arriving at Lower Light Containment Zone. Euclid and Safe SCP Containment."
	base_turf = /turf/simulated/floor