/datum/map/site13

	base_floor_type = /turf/simulated/floor/reinforced/airless
	base_floor_area = /area/maintenance/exterior

	post_round_safe_areas = list (
		/area/centcom,
		/area/shuttle/escape/centcom,
		/area/shuttle/escape_pod1/centcom,
		/area/shuttle/escape_pod2/centcom,
		/area/shuttle/escape_pod3/centcom,
		/area/shuttle/escape_pod5/centcom,
		/area/shuttle/transport1/centcom,
		/area/shuttle/administration/centcom,
		/area/shuttle/specops/centcom,
	)

//Surface

/area/hallway/site13/surface/gatea
	name = "\improper Gate A Hallway"
	icon_state = "hallF"

/area/hallway/site13/surface/gatec
	name = "\improper Gate C Hallway"
	icon_state = "hallF"

/area/hallway/site13/surface/elevator
	name = "\improper Surface Elevator Hallway"
	icon_state = "hallC1"

/area/hallway/site13/surface/office
	name = "\improper Office Hallway"
	icon_state = "hallA"

/area/hallway/site13/surface/headsleft
	name = "\improper Staff Heads Hallway - West"
	icon_state = "hallC1"

/area/hallway/site13/surface/headsright
	name = "\improper Staff Heads Hallway - East"
	icon_state = "hallC1"

/area/hallway/site13/surface/ogatea
	name = "Outside Gate A"
	icon_state = "hallF"

/area/hallway/site13/surface/ogateb
	name = "Outside Gate B"
	icon_state = "hallF"

/area/hallway/site13/surface/ogatec
	name = "Outside Gate C"
	icon_state = "hallF"

/area/rnd/site13/surface/officestorage
	name = "\improper Office Storage"
	icon_state = "toxstorage"

/area/rnd/site13/surface/office
	name = "\improper Office"
	icon_state = "devlab"

/area/rnd/site13/surface/checkpoint
	name = "\improper Office Security Checkpoint"
	icon_state = "checkpoint1"

/area/janitor/site13/surface/closet
	name = "\improper Surface Custodial Closet"
	icon_state = "janitor"

/area/crew_quarters/site13/surface/sleep
	name = "\improper Bunk Room"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/crew_quarters/site13/surface/cryo2
	name = "\improper Auxiliary Cryogenic Storage"
	icon_state = "Sleep"

/area/crew_quarters/site13/surface/cryo1
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/crew_quarters/site13/surface/toilets
	name = "\improper Toilets"
	icon_state = "toilet"

/area/crew_quarters/site13/surface/washing
	name = "\improper Washing Machine Room"
	icon_state = "toilet"

/area/crew_quarters/site13/surface/mess
	name = "\improper Main Cafeteria"
	icon_state = "cafeteria"

/area/crew_quarters/site13/surface/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/crew_quarters/site13/surface/kitchenbackroom
	name = "\improper Kitchen Cold Storage"
	icon_state = "kitchen"

/area/quartermaster/site13/surface/storage
	name = "\improper Cargonia"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/site13/surface/secstorage
	name = "\improper Cargo Secure Storage"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/site13/surface/quarters
	name = "\improper Cargo Bunk Room"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/quartermaster/site13/surface/storagedepot
	name = "\improper Cargo Depot"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/security/site13/surface/gateco
	name = "\improper Gate C Outside"
	icon_state = "checkpoint"

/area/security/site13/surface/gatebo
	name = "\improper Gate B Outside"
	icon_state = "checkpoint"

/area/security/site13/surface/gateao
	name = "\improper Gate A Outside"
	icon_state = "checkpoint"

/area/security/site13/surface/gateci
	name = "\improper Gate C Inside"
	icon_state = "checkpoint1"

/area/security/site13/surface/gatebi
	name = "\improper Gate B Inside"
	icon_state = "checkpoint1"

/area/security/site13/surface/gateai
	name = "\improper Gate A Inside"
	icon_state = "checkpoint1"

/area/acting/site13/surface/backstage
	name = "\improper Surface Common Room Storage"

/area/acting/site13/surface/stage
	name = "\improper Surface Common Room"
	dynamic_lighting = 1
	icon_state = "yellow"

/area/chapel/site13/surface/main
	name = "\improper Priest Quarters"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED

/area/tcommsat/site13/surface/main
	name = "\improper Telecoms"
	icon_state = "tcomsatcomp"

/area/shuttle/site13/surface/helipad1
	icon_state = "shuttle"

/area/shuttle/site13/surface/helipad2
	icon_state = "shuttle"

/area/shuttle/site13/surface/helipad3
	icon_state = "shuttle"

/area/shuttle/site13/surface/helipad4
	icon_state = "shuttle"

/area/security/site13/surface/headarmory
	name = "\improper External Weapons Storage"
	icon_state = "security"

/area/security/site13/surface/headmedical
	name = "\improper External Medical Storage"
	icon_state = "security"

/area/chapel/site13/surface/main
	name = "\improper Chapel"
	icon_state = "chapel"

/area/chapel/site13/surface/living
	name = "\improper Priest Quarters"
	icon_state = "chapel"

/area/chapel/site13/surface/cemetery
	name = "\improper Cemetary"
	icon_state = "chapel"

/area/maintenance/site13/surface/battery
	name = "\improper Surface Power Storage"
	icon_state = "apmaint"

/area/maintenance/site13/surface/kitchapcom
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"

/area/maintenance/site13/surface/cryoff
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"