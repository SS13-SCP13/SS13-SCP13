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

/area/storage/site13/surface/tech
	name = "Technical Storage"
	icon_state = "storage"

/area/storage/site13/surface/medical
	name = "Medical Storage"
	icon_state = "exam_room"

/area/rnd/site13/surface/officevac
	name = "Vacant Offices"
	icon_state = "devlab"

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
	name = "\improper External Emergency Storage"
	icon_state = "security"

/area/security/site13/surface/headmedical
	name = "\improper External Medical Storage"
	icon_state = "security"

/area/maintenance/site13/surface/battery
	name = "\improper Surface Power Storage"
	icon_state = "apmaint"

/area/maintenance/site13/surface/kitchapcom
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"

/area/maintenance/site13/surface/cryoff
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"

/area/crew_quarters/site13/surface/sd
	name = "\improper SD's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/rd
	name = "\improper RD's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/sc
	name = "\improper SC's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/ce
	name = "\improper CE's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/clo
	name = "\improper CLO's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/cmo
	name = "\improper CMO's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/hop
	name = "\improper HoP's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/surface/conference
	name = "\improper Conference Room"
	icon_state = "bridge"

/area/security/site13/floor1/lczwo
	name = "\improper LCZ Floor West Checkpoint Outside"
	icon_state = "checkpoint"

/area/security/site13/floor1/lczso
	name = "\improper LCZ Floor South Checkpoint Outside"
	icon_state = "checkpoint"

/area/security/site13/floor1/lczno
	name = "\improper LCZ Floor North Checkpoint Outside"
	icon_state = "checkpoint"

/area/security/site13/floor1/lczni
	name = "\improper LCZ Floor North Checkpoint Inside"
	icon_state = "checkpoint1"

/area/security/site13/floor1/lczsi
	name = "\improper LCZ Floor South Checkpoint Inside"
	icon_state = "checkpoint1"

/area/security/site13/floor1/lczwi
	name = "\improper LCZ Floor West Checkpoint Inside"
	icon_state = "checkpoint1"

/area/hallway/site13/floor1/elevator
	name = "\improper LCZ Floor Elevator Hallway"
	icon_state = "hallC1"

/area/hallway/site13/floor1/lczeast
	name = "\improper Light Containment Zone East Hallway"
	icon_state = "hallC1"

/area/rnd/site13/floor1/lounge
	name = "\improper Scientist Lounge"
	icon_state = "researchbreak"

/area/rnd/site13/floor1/archives
	name = "\improper Archives"
	icon_state = "research"

/area/rnd/site13/floor1/briefing
	name = "\improper Briefing Room"
	icon_state = "research"

/area/rnd/site13/floor1/scp173
	name = "\improper Archives"
	icon_state = "research"

/area/rnd/site13/floor1/humanoid
	name = "Humanoid Containment Chamber"
	icon_state = "research"

/area/rnd/site13/floor1/humanoid2
	name = "Humanoid Containment Chamber"
	icon_state = "research"

/area/rnd/site13/floor1/scp151
	name = "\improper SCP 151's Chamber"
	icon_state = "research"

/area/rnd/site13/floor1/securestorage
	name = "\improper Secure Storage"
	icon_state = "research"

/area/crew_quarters/site13/floor1/rd
	name = "\improper RD's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/floor1/sc
	name = "\improper SC's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/floor2/ce
	name = "\improper CE's Office"
	icon_state = "head_quarters"

/area/crew_quarters/site13/floor1/cmo
	name = "\improper CMO's Office"
	icon_state = "head_quarters"

/area/medical/site13/floor1/sleeper
	name = "\improper Acute Treatment Centre"
	icon_state = "exam_room"

/area/medical/site13/floor1/bed
	name = "\improper Sub-Acute Treatment Centre"
	icon_state = "medbay"

/area/medical/site13/floor1/equipstorage
	name = "\improper Locker Room"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')

/area/medical/site13/floor1/barracks
	name = "\improper Barracks"
	icon_state = "medbay"

/area/medical/site13/floor1/mentalhealth
	name = "\improper Mental Health"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')

/area/medical/site13/floor1/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"

/area/medical/site13/floor1/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')

/area/medical/site13/floor1/infirmary
	name = "\improper Infirmary Hallway"
	icon_state = "medbay"

/area/medical/site13/floor1/infirmreception
	name = "\improper Infirmary Reception"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')

/area/security/site13/floor1/medical
	name = "\improper LCZ Floor Infirmary Checkpoint"
	icon_state = "checkpoint"

/area/medical/site13/floor1/medkits
	name = "\improper Medical Supplies Storage"
	icon_state = "chem"

/area/medical/site13/floor1/surgery
	name = "\improper Operating Theatre"
	icon_state = "surgery"

/area/medical/site13/floor1/exam_room
	name = "\improper Exam Room"
	icon_state = "exam_room"

/area/maintenance/site13/floor1/battery
	name = "\improper LCZ Floor Power Storage"
	icon_state = "apmaint"

/area/medical/site13/floor1/toilets
	name = "\improper Toilets"
	icon_state = "toilet"

/area/security/site13/floor1/toilets
	name = "\improper Toilets"
	icon_state = "toilet"

/area/security/site13/floor1/armoury
	name = "\improper Armory"
	icon_state = "Warden"

/area/security/site13/floor1/dwest
	name = "\improper Class D Cells - West"
	icon_state = "brig"

/area/security/site13/floor1/deast
	name = "\improper Class D Cells - East"
	icon_state = "sec_prison"

/area/security/site13/floor1/process
	name = "\improper Processing Cells"
	icon_state = "sec_prison"

/area/security/site13/floor1/interrogation
	name = "\improper Interrogation Chamber"
	icon_state = "brig"

/area/security/site13/floor1/wing
	name = "\improper Security Wing"
	icon_state = "security"

/area/security/site13/floor1/ops
	name = "\improper Security Briefing Room"
	icon_state = "checkpoint"

/area/security/site13/floor1/exec
	name = "\improper Disposal Room"
	icon_state = "checkpoint"

/area/security/site13/floor1/range
	name = "\improper Firing Range"
	icon_state = "nuke_storage"

/area/security/site13/floor1/lockers
	name = "\improper Security Locker Room"
	icon_state = "brig"

/area/security/site13/floor1/schleep
	name = "\improper Sleeping Quaters"
	icon_state = "sec_prison"

/area/hydroponics/site13/floor1/prison
	name = "\improper Class D Garden"

/area/crew_quarters/site13/floor1/gym
	name = "\improper Class D Recreational Area"
	icon_state = "fitness"

/area/security/site13/floor1/dshowers
	name = "\improper Class D Shower Room"
	icon_state = "toilet"

/area/crew_quarters/site13/floor1/mess
	name = "\improper Class D Cafeteria"
	icon_state = "cafeteria"

/area/crew_quarters/site13/floor1/kitchen
	name = "\improper Class D Kitchen"
	icon_state = "kitchen"

/area/janitor/site13/floor1/closet
	name = "\improper Class D Custodial Closet"
	icon_state = "janitor"

/area/rnd/site13/floor1/library
	name = "\improper Class D Library"
	icon_state = "research"

/area/security/site13/floor1/delivery
	name = "\improper Class D Deliveries"
	icon_state = "sec_prison"



