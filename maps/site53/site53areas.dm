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

// SITE 53 ELEVATOR AREA'S

/area/turbolift/site53/surface
	name = "lift (surface)"
	lift_floor_label = "Surface"
	lift_floor_name = "Surface"
	lift_announce_str = "Arriving at Surface: Tram Hub, Emergency Bunker, Main Control Room."
	requires_power = 0
	dynamic_lighting = 1

/area/turbolift/site53/commstower
	name = "lift (Communications Tower)"
	lift_floor_label = "Communications Tower"
	lift_floor_name = "Communications Tower"
	lift_announce_str = "Arriving at Communications Tower: Communications Office, long-range communications."
	requires_power = 0
	dynamic_lighting = 1

// SITE 53 TRAM AREA'S

/area/site53/tram/engineering
	name = "lift (Communications Tower)"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1

// SITE 53 SURFACE AREA'S

/area/site53/surface/surface
	name = "Surface"
	requires_power = 0
	dynamic_lighting = 0

/area/site53/surface/cryogenicsprimary
	name = "\improper Primary Cryogenic Storage"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1

/area/site53/surface/cryogenicsaux
	name = "\improper Auxiliary Cryogenic Storage"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1

/area/site53/surface/tramhubhallwayentry
	name = "\improper Tram Hub"
	icon_state = "hallC1"
	holomap_color = HOLOMAP_AREACOLOR_HALLWAYS

/area/site53/surface/bunker
	name = "\improper Secure Bunker"
	icon_state = "centcom"
	requires_power = 0
	dynamic_lighting = 1


// Site 53 upper surface area's

/area/site53/upper_surface/maincontrolroom
	name = "\improper Main Control Room"
	icon_state = "bridge"
	holomap_color = HOLOMAP_AREACOLOR_COMMAND

/area/site53/upper_surface/maincontrolroomstairs
	name = "\improper Main Control Room Stairs"
	icon_state = "bridge"
	holomap_color = HOLOMAP_AREACOLOR_COMMAND

/area/site53/upper_surface/commstower
	name = "\improper Communications Tower"
	icon_state = "checkpoint1"
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/site53/upper_surface/commstower1
	name = "\improper Communications Tower"
	icon_state = "checkpoint1"
	holomap_color = HOLOMAP_AREACOLOR_SECURITY