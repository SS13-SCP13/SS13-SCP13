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
	name = "Engineering Tram"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/tram/lcz
	name = "Light Containment Tram"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/tram/hcz
	name = "Heavy Containment Tram"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED

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
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/surface/cryogenicsaux
	name = "\improper Auxiliary Cryogenic Storage"
	icon_state = "Sleep"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/surface/tramhubhallwayentry
	name = "\improper Tram Hub"
	icon_state = "hallC1"
	holomap_color = HOLOMAP_AREACOLOR_HALLWAYS
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/surface/bunker
	name = "\improper Secure Bunker"
	icon_state = "centcom"
	requires_power = 0
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED


// Site 53 upper surface area's

/area/site53/upper_surface/maincontrolroom
	name = "\improper Main Control Room"
	icon_state = "bridge"
	holomap_color = HOLOMAP_AREACOLOR_COMMAND
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/upper_surface/maincontrolroomstairs
	name = "\improper Main Control Room Stairs"
	icon_state = "bridge"
	holomap_color = HOLOMAP_AREACOLOR_COMMAND
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/upper_surface/commstower
	name = "\improper Communications Tower"
	icon_state = "checkpoint1"
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/site53/upper_surface/commstower1
	name = "\improper Communications Tower"
	icon_state = "checkpoint1"
	holomap_color = HOLOMAP_AREACOLOR_SECURITY

/area/site53/lowertram/archive
	name = "\improper Archive"
	icon_state = "crew_quarters"
	area_flags = AREA_FLAG_RAD_SHIELDED




// Site 53 upper surface area's
/area/site53/lowertrams/brownline
	name = "\improper Brown Line"
	icon_state = "hallA"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/lowertrams/orangeline
	name = "\improper Orange Line"
	icon_state = "hallF"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/lowertrams/redline
	name = "\improper Red Line"
	icon_state = "hallC1"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/lowertrams/restaurant
	name = "\improper Restaurant"
	icon_state = "cafeteria"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/lowertrams/restaurantkitchenarea
	name = "\improper Restaurant Kitchen Area"
	icon_state = "cafeteria"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/lowertrams/hub
	name = "\improper Tram Hub"
	icon_state = "hallC1"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/maintenance
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/maintenance/surface
	name = "\improper Tram Hub Maintenance"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/ulcz/scp151
	name = "\improper SCP-151"
	icon_state = "research"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/llcz/scp500
	name = "\improper SCP-500"
	icon_state = "research"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/llcz/genstorage1
	name = "\improper General Storage #1"
	icon_state = "research"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/llcz/hallways
	name = "\improper Lower Light Containment Hallway"
	icon_state = "hallC1"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/ulcz/hallways
	name = "\improper Upper Light Containment Hallway"
	icon_state = "hallC1"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/ulcz/tram
	name = "\improper Upper Light Containment Tram Station"
	icon_state = "hallC1"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/ulcz/office
	name = "\improper Upper Light Containment Office"
	icon_state = "conference"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/lowertrams/maintenance
	name = "\improper Lower Tram Hub Maintenance"
	icon_state = "conference"
	area_flags = AREA_FLAG_RAD_SHIELDED
	requires_power = 0
	dynamic_lighting = 1
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/llcz/scp513
	name = "\improper SCP-513"
	icon_state = "research"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site53/llcz/maintenance
	name = "\improper SCP-513"
	icon_state = "pmaint"
	area_flags = AREA_FLAG_RAD_SHIELDED
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/uez/sdoffice
	name = "\improper Site Director's Office"
	sound_env = MEDIUM_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "head_quarters"

/area/site53/uez/hopoffice
	name = "\improper Head of Personnel's Office"
	sound_env = MEDIUM_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "head_quarters"

/area/site53/uez/cmooffice
	name = "\improper Chief Medical Officer's Office"
	sound_env = MEDIUM_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "head_quarters"

/area/site53/uez/ceoffice
	name = "\improper Chief Engineer's Office"
	sound_env = MEDIUM_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "head_quarters"

/area/site53/uez/rdoffice
	name = "\improper Research Director's Office"
	sound_env = MEDIUM_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "head_quarters"

/area/site53/uez/hallway
	name = "\improper Upper Entrance Zone"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "hallC1"

/area/site53/uez/canteen
	name = "\improper Canteen"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

/area/site53/uez/conference
	name = "\improper Conference Room A"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR

/area/site53/uez/maintenance
	name = "Upper Entrance Zone Maintenance"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/uez/substation
	name = "Upper Entrance Zone Substation"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/uez/bridge
	name = "\improper Bridge"
	icon_state = "hallC1"
	area_flags = AREA_FLAG_RAD_SHIELDED
	requires_power = 0
	dynamic_lighting = 0

/area/site53/uez/mcrsubstation
	name = "Main Control Room Substation"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/ulcz/maintenance
	name = "Upper Light Containment Maintenance"
	icon_state = "maint_security_starboard"
	area_flags = AREA_FLAG_RAD_SHIELDED
	sound_env = TUNNEL_ENCLOSED
	turf_initializer = /decl/turf_initializer/maintenance

/area/site53/llcz/mining/miningops
	name = "\improper Mining Operations"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "hallC1"

/area/site53/llcz/mining/miningfact
	name = "\improper Mining Factory"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "hallC1"

/area/site53/llcz/dclass/recreationhallway
	name = "\improper Recreation Hallway"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "hallC1"

/area/site53/llcz/dclass/checkpoint
	name = "\improper Primary D-Class Checkpoint"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint"

/area/site53/llcz/dclass/checkpointoverlook
	name = "\improper Primary D-Class Checkpoint Overlook"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/prep
	name = "\improper Primary D-Class Checkpoint Preperation"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/kitchenbotanybubble
	name = "\improper Kitchen and Botany Security Bubble"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/assignmentbubble
	name = "\improper Assignments Security Bubble"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/cellbubble
	name = "\improper Cell Security Bubble"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/canteenbubble
	name = "\improper Canteen Security Bubble"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/checkequip
	name = "\improper Primary Checkpoint Equipment"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "checkpoint1"

/area/site53/llcz/dclass/janitorial
	name = "\improper Janitorial Closet"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "janitor"

/area/site53/llcz/dclass/cells
	name = "\improper D-Class Cell Area"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "Sleep"

/area/site53/llcz/dclass/shower
	name = "\improper D-Class Shower Area"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "Sleep"

/area/site53/llcz/dclass/canteen
	name = "\improper D-Class Canteen"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "cafeteria"

/area/site53/llcz/dclass/kitchen
	name = "\improper D-Class Kitchen"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "kitchen"

/area/site53/llcz/dclass/botany
	name = "\improper D-Class Botany"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "kitchen"

/area/site53/llcz/dclass/assignment
	name = "\improper D-Class Assingments"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "Sleep"

/area/site53/llcz/dclass/cryo
	name = "\improper D-Class Cryo Area"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "Sleep"

/area/site53/llcz/dclass/medicalpost
	name = "\improper D-Class Medical Post"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "exam_room"

/area/site53/llcz/dclass/medicalstorage
	name = "\improper D-Class Medical Storage"
	area_flags = AREA_FLAG_RAD_SHIELDED
	icon_state = "exam_room"

/area/site53/llcz/mine/explored
	name = "Mine"
	icon_state = "explored"

/area/site53/llcz/mine/unexplored
	name = "Mine"
	icon_state = "unexplored"