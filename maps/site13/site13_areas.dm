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

/area/site13/surface/storage/tech
	name = "Technical Storage"
	icon_state = "storage"

/area/site13/surface/storage/medical
	name = "Medical Storage"
	icon_state = "exam_room"

/area/site13/surface/rnd/officevac
	name = "Vacant Offices"
	icon_state = "devlab"

/area/site13/surface/hallway/gatea
	name = "\improper Gate A Hallway"
	icon_state = "hallF"

/area/site13/surface/hallway/gatec
	name = "\improper Gate C Hallway"
	icon_state = "hallF"

/area/site13/surface/hallway/elevator
	name = "\improper Surface Elevator Hallway"
	icon_state = "hallC1"

/area/site13/surface/hallway/office
	name = "\improper Office Hallway"
	icon_state = "hallA"

/area/site13/surface/hallway/headsleft
	name = "\improper Staff Heads Hallway - West"
	icon_state = "hallC1"

/area/site13/surface/hallway/headsright
	name = "\improper Staff Heads Hallway - East"
	icon_state = "hallC1"

/area/site13/surface/hallway/ogatea
	name = "Outside Gate A"
	icon_state = "hallF"

/area/site13/surface/hallway/ogateb
	name = "Outside Gate B"
	icon_state = "hallF"

/area/site13/surface/hallway/ogatec
	name = "Outside Gate C"
	icon_state = "hallF"

/area/site13/surface/rnd/officestorage
	name = "\improper Office Storage"
	icon_state = "toxstorage"

/area/site13/surface/rnd/office
	name = "\improper Office"
	icon_state = "devlab"

/area/site13/surface/rnd/checkpoint
	name = "\improper Office Security Checkpoint"
	icon_state = "checkpoint1"

/area/site13/surface/janitor/closet
	name = "\improper Surface Custodial Closet"
	icon_state = "janitor"

/area/site13/surface/crew_quaters/schleep
	name = "\improper Bunk Room"
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/site13/surface/crew_quaters/cryo2
	name = "\improper Auxiliary Cryogenic Storage"
	icon_state = "Sleep"

/area/site13/surface/crew_quaters/cryo1
	name = "\improper Cryogenic Storage"
	icon_state = "Sleep"

/area/site13/surface/crew_quaters/toilets
	name = "\improper Toilets"
	icon_state = "toilet"

/area/site13/surface/crew_quaters/washing
	name = "\improper Washing Machine Room"
	icon_state = "toilet"

/area/site13/surface/crew_quaters/mess
	name = "\improper Main Cafeteria"
	icon_state = "cafeteria"

/area/site13/surface/crew_quaters/kitchen
	name = "\improper Kitchen"
	icon_state = "kitchen"

/area/site13/surface/crew_quaters/kitchenbackroom
	name = "\improper Kitchen Cold Storage"
	icon_state = "kitchen"

/area/site13/surface/quatermaster/storage
	name = "\improper Cargonia"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED

/area/site13/surface/quatermaster/secstorage
	name = "\improper Cargo Secure Storage"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/site13/surface/quatermaster/quarters
	name = "\improper Cargo Bunk Room"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/site13/surface/quatermaster/storagedepot
	name = "\improper Cargo Depot"
	icon_state = "quartstorage"
	sound_env = LARGE_ENCLOSED

/area/site13/surface/security/gateco
	name = "\improper Gate C Outside"
	icon_state = "checkpoint"

/area/site13/surface/security/gatebo
	name = "\improper Gate B Outside"
	icon_state = "checkpoint"

/area/site13/surface/security/gateao
	name = "\improper Gate A Outside"
	icon_state = "checkpoint"

/area/site13/surface/security/gateci
	name = "\improper Gate C Inside"
	icon_state = "checkpoint1"

/area/site13/surface/security/gatebi
	name = "\improper Gate B Inside"
	icon_state = "checkpoint1"

/area/site13/surface/security/gateai
	name = "\improper Gate A Inside"
	icon_state = "checkpoint1"

/area/site13/surface/acting/backstage
	name = "\improper Surface Common Room Storage"
	icon_state = "red"

/area/site13/surface/acting/stage
	name = "\improper Surface Common Room"
	icon_state = "yellow"

/area/site13/surface/desert
	dynamic_lighting = 0
	icon_state = "yellow"

/area/site13/surface/tcommsat/main
	name = "\improper Telecoms"
	icon_state = "tcomsatcomp"

/area/site13/surface/shuttle/helipad1
	icon_state = "shuttle"

/area/site13/surface/shuttle/helipad2
	icon_state = "shuttle"

/area/site13/surface/shuttle/helipad3
	icon_state = "shuttle"

/area/site13/surface/shuttle/helipad4
	icon_state = "shuttle"

/area/site13/surface/security/headarmory
	name = "\improper External Emergency Storage"
	icon_state = "security"

/area/site13/surface/security/headmedical
	name = "\improper External Medical Storage"
	icon_state = "security"

/area/site13/surface/maintenance/battery
	name = "\improper Surface Power Storage"
	icon_state = "apmaint"

/area/site13/surface/maintenance/kitchapcom
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"

/area/site13/surface/maintenance/cryoff
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"

/area/site13/surface/maintenance/cargo
	name = "\improper Surface Maintenance"
	icon_state = "apmaint"

/area/site13/surface/crew_quaters/sd
	name = "\improper SD's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/rd
	name = "\improper RD's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/sc
	name = "\improper SC's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/ce
	name = "\improper CE's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/clo
	name = "\improper CLO's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/cmo
	name = "\improper CMO's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/hop
	name = "\improper HoP's Office"
	icon_state = "head_quarters"

/area/site13/surface/crew_quaters/conference
	name = "\improper Conference Room"
	icon_state = "bridge"

/area/site13/surface/crew_quaters/bunker
	name = "\improper Evacuation Shelter"
	icon_state = "bridge"

/area/site13/surface/engineering/solars
	name = "\improper Solar Farm"
	icon_state = "engine_smes"

/area/site13/floor1/security/lczwo
	name = "\improper LCZ Floor West Checkpoint Outside"
	icon_state = "checkpoint"

/area/site13/floor1/security/lczso
	name = "\improper LCZ Floor South Checkpoint Outside"
	icon_state = "checkpoint"

/area/site13/floor1/security/lczno
	name = "\improper LCZ Floor North Checkpoint Outside"
	icon_state = "checkpoint"

/area/site13/floor1/security/lczni
	name = "\improper LCZ Floor North Checkpoint Inside"
	icon_state = "checkpoint1"

/area/site13/floor1/security/lczsi
	name = "\improper LCZ Floor South Checkpoint Inside"
	icon_state = "checkpoint1"

/area/site13/floor1/security/lczwi
	name = "\improper LCZ Floor West Checkpoint Inside"
	icon_state = "checkpoint1"

/area/site13/floor1/hallway/elevator
	name = "\improper LCZ Floor Elevator Hallway"
	icon_state = "hallC1"

/area/site13/floor1/hallway/lczeast
	name = "\improper Light Containment Zone East Hallway"
	icon_state = "hallC1"

/area/site13/floor1/rnd/lounge
	name = "\improper Scientist Lounge"
	icon_state = "researchbreak"

/area/site13/floor1/rnd/archives
	name = "\improper Archives"
	icon_state = "research"

/area/site13/floor1/rnd/briefing
	name = "\improper Briefing Room"
	icon_state = "research"

/area/site13/floor1/rnd/scp173
	name = "\improper Archives"
	icon_state = "research"

/area/site13/floor1/rnd/humanoid
	name = "Humanoid Containment Chamber"
	icon_state = "research"

/area/site13/floor1/rnd/humanoid2
	name = "Humanoid Containment Chamber"
	icon_state = "research"

/area/site13/floor1/rnd/scp151
	name = "\improper SCP 151's Chamber"
	icon_state = "research"

/area/site13/floor1/rnd/securestorage
	name = "\improper Secure Storage"
	icon_state = "research"

/area/site13/floor1/crew_quarters/rd
	name = "\improper RD's Office"
	icon_state = "head_quarters"

/area/site13/floor1/crew_quarters/sc
	name = "\improper SC's Office"
	icon_state = "head_quarters"

/area/site13/floor2/crew_quarters/ce
	name = "\improper CE's Office"
	icon_state = "head_quarters"

/area/site13/floor1/crew_quarters/cmo
	name = "\improper CMO's Office"
	icon_state = "head_quarters"

/area/site13/floor1/medical/sleeper
	name = "\improper Acute Treatment Centre"
	icon_state = "exam_room"

/area/site13/floor1/medical/bed
	name = "\improper Sub-Acute Treatment Centre"
	icon_state = "medbay"

/area/site13/floor1/medical/equipstorage
	name = "\improper Locker Room"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')

/area/site13/floor1/medical/barracks
	name = "\improper Barracks"
	icon_state = "medbay"

/area/site13/floor1/medical/mentalhealth
	name = "\improper Mental Health"
	icon_state = "medbay3"
	ambience = list('sound/ambience/signal.ogg')

/area/site13/floor1/medical/chemistry
	name = "\improper Chemistry"
	icon_state = "chem"

/area/site13/floor1/medical/morgue
	name = "\improper Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')

/area/site13/floor1/medical/infirmary
	name = "\improper Infirmary Hallway"
	icon_state = "medbay"

/area/site13/floor1/medical/infirmreception
	name = "\improper Infirmary Reception"
	icon_state = "medbay2"
	ambience = list('sound/ambience/signal.ogg')

/area/site13/floor1/security/medical
	name = "\improper LCZ Floor Infirmary Checkpoint"
	icon_state = "checkpoint"

/area/site13/floor1/medical/medkits
	name = "\improper Medical Supplies Storage"
	icon_state = "chem"

/area/site13/floor1/medical/surgery
	name = "\improper Operating Theatre"
	icon_state = "surgery"

/area/site13/floor1/medical/exam_room
	name = "\improper Exam Room"
	icon_state = "exam_room"

/area/site13/floor1/maintenance/battery
	name = "\improper LCZ Floor Power Storage"
	icon_state = "apmaint"

/area/site13/floor1/medical/toilets
	name = "\improper Toilets"
	icon_state = "toilet"

/area/site13/floor1/security/toilets
	name = "\improper Toilets"
	icon_state = "toilet"

/area/site13/floor1/security/armoury
	name = "\improper Armory"
	icon_state = "Warden"

/area/site13/floor1/security/dwest
	name = "\improper Class D Cells - West"
	icon_state = "brig"

/area/site13/floor1/security/deast
	name = "\improper Class D Cells - East"
	icon_state = "sec_prison"

/area/site13/floor1/security/process
	name = "\improper Processing Cells"
	icon_state = "sec_prison"

/area/site13/floor1/security/interrogation
	name = "\improper Interrogation Chamber"
	icon_state = "brig"

/area/site13/floor1/security/wing
	name = "\improper Security Wing"
	icon_state = "security"

/area/site13/floor1/security/ops
	name = "\improper Security Briefing Room"
	icon_state = "checkpoint"

/area/site13/floor1/security/exec
	name = "\improper Disposal Room"
	icon_state = "checkpoint"

/area/site13/floor1/security/range
	name = "\improper Firing Range"
	icon_state = "nuke_storage"

/area/site13/floor1/security/lockers
	name = "\improper Security Locker Room"
	icon_state = "brig"

/area/site13/floor1/security/schleep
	name = "\improper Sleeping Quaters"
	icon_state = "sec_prison"

/area/site13/floor1/hydroponics/prison
	name = "\improper Class D Garden"

/area/site13/floor1/crew_quarters/gym
	name = "\improper Class D Recreational Area"
	icon_state = "fitness"

/area/site13/floor1/security/dshowers
	name = "\improper Class D Shower Room"
	icon_state = "toilet"

/area/site13/floor1/crew_quarters/mess
	name = "\improper Class D Cafeteria"
	icon_state = "cafeteria"

/area/site13/floor1/crew_quarters/kitchen
	name = "\improper Class D Kitchen"
	icon_state = "kitchen"

/area/site13/floor1/janitor/closet
	name = "\improper Class D Custodial Closet"
	icon_state = "janitor"

/area/site13/floor1/rnd/library
	name = "\improper Class D Library"
	icon_state = "research"

/area/site13/floor1/security/delivery
	name = "\improper Class D Deliveries"
	icon_state = "sec_prison"

/area/site13/floor1/security/brigcontrol
	name = "\improper Cell Guard Quaters"
	icon_state = "sec_prison"

/area/site13/floor1/maintenance/science
	name = "\improper LCZ Floor Maintenance"
	icon_state = "apmaint"

/area/site13/floor1/maintenance/dbois
	name = "\improper LCZ Floor Maintenance"
	icon_state = "apmaint"

/area/site13/floor1/maintenance/lczsec
	name = "\improper LCZ Floor Maintenance"
	icon_state = "apmaint"



