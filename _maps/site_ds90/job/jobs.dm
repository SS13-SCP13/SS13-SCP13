/datum/map/site_ds90
/datum/map/site_ds90/setup_map()

/datum/job/captain
	title = "Facility Director"
	supervisors = "the SCP Foundation and O5 Council"
	minimal_player_age = 20
	economic_modifier = 15
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/facilitydir
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/scp)

/datum/job/hop
	title = "Head of Human Resources"
	supervisors = "the Facility Director"
	department = "Command"
	department_flag = COM
	minimal_player_age = 15
	economic_modifier = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/headofhr
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/scp)


	access = list(access_adminlvl4,
	access_adminlvl3,
	access_adminlvl2,
	access_adminlvl1)
	minimal_access = list()


/datum/job/rd
	title = "Director of Science"
	supervisors = "Facility Director and the Head of Human Resources"
	economic_modifier = 20
	minimal_player_age = 15
	ideal_character_age = 60
//	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/rd
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/scp)

	access = list(access_sciencelvl5,
	access_sciencelvl4,
	access_sciencelvl3,
	access_sciencelvl2,
	access_sciencelvl1)
	minimal_access = list()


// AWAITING OVERHAUL
/*
/datum/job/cmo
	title = "Chief Medical Officer"
	supervisors = "the Commanding Officer and the Executive Officer"
	economic_modifier = 10
	minimal_player_age = 21
	ideal_character_age = 48
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/cmo
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/cmo/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/o4,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/fleet/o2
	)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_heads,
			            access_chapel_office, access_crematorium, access_chemistry, access_virology,
			            access_cmo, access_surgery, access_RC_announce, access_keycard_auth, access_psychiatrist,
			            access_medical_equip, access_solgov_crew, access_senmed, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Commanding Officer and the Executive Officer"
	economic_modifier = 9
	ideal_character_age = 40
	minimal_player_age = 21
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/chief_engineer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/fleet/o3,
		/datum/mil_rank/fleet/o2
	)

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_heads,
			            access_tech_storage, access_robotics, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)
	minimal_access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_ai_upload, access_teleporter, access_eva, access_heads,
			            access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_network, access_ce, access_RC_announce, access_keycard_auth, access_tcomsat,
			            access_solgov_crew, access_robotics_engineering, access_seneng, access_hangar, access_robotics)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)
*/

// SECURITY
/datum/job/hos
	title = "Security Commander"
	supervisors = "The Facility Director"
	department = "Security"
	department_flag = SEC|COM
	economic_modifier = 8
	minimal_player_age = 21
	ideal_character_age = 55
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/cos
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o3
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_mtflvl5)
	minimal_access = list()

/datum/job/ltofficer
	title = "Security Lieutenant"
	department = "Security"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Security Commander"
	economic_modifier = 4
	alt_titles = list("Senior Agent")
	minimal_player_age = 10
	ideal_character_age = 45
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o2
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()

/datum/job/brigofficer
	title = "Brig Officer"
	department = "Security"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Security Commander"
	economic_modifier = 4
	alt_titles = null
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/brigofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e7,
		/datum/mil_rank/security/e8
	)

/datum/job/ncoofficer
	title = "Security Officer"
	department = "Security"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Security Commander"
	economic_modifier = 4
	alt_titles = list("Agent")
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4,
		/datum/mil_rank/security/e5,
		/datum/mil_rank/security/e6
	)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/enlistedofficer
	title = "Junior Security Officer"
	department = "Security"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Security Commander"
	economic_modifier = 4
	alt_titles = list("Junior Agent")
	minimal_player_age = 0
	ideal_character_age = 25
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/enlistedofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e1,
		/datum/mil_rank/security/e2
	)


	access = list(access_mtflvl1)
	minimal_access = list()

// SCIENCE

/datum/job/juniorscientist
	title = "Junior Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director"
	economic_modifier = 4
	alt_titles = null
	minimal_player_age = 0
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/juniorscientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/scp)


	access = list(access_sciencelvl1)
	minimal_access = list()

/*
/datum/job/liaison
	title = "NanoTrasen Liaison"
	department = "Support"
	department_flag = SPT

	total_positions = 1
	spawn_positions = 1
	supervisors = "NanoTrasen and Corporate Regulations"
	selection_color = "#2f2f7f"
	economic_modifier = 15
	minimal_player_age = 10
	alt_titles = list(
		"NanoTrasen Representative",
		"NanoTrasen Executive"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/cl
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt)

	access = list(access_liaison, access_tox, access_tox_storage, access_heads, access_research,
						access_mining, access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_nanotrasen, access_sec_guard,
						access_hangar, access_petrov, access_petrov_helm)

/datum/job/representative
	title = "SolGov Representative"
	department = "Support"
	department_flag = SPT

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Sol Central Government and the SCG Charter"
	selection_color = "#2f2f7f"
	economic_modifier = 15
	minimal_player_age = 10
	alt_titles = list(
		"Inspector General"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/representative
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

	access = list(access_representative, access_security,access_medical, access_engine,
			            access_heads, access_cargo, access_solgov_crew, access_hangar)


/datum/job/sea
	title = "Senior Enlisted Advisor"
	department = "Support"
	department_flag = SPT

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 21
	economic_modifier = 8
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e9,
		/datum/mil_rank/fleet/e9_alt1,
		/datum/mil_rank/fleet/e8
	)


	access = list(access_security, access_medical, access_engine, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_heads, access_all_personal_lockers, access_janitor,
			            access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_guppy_helm,
			            access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_emergency_armory)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor)

/datum/job/bridgeofficer
	title = "Bridge Officer"
	department = "Support"
	department_flag = SPT

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Commanding Officer and heads of staff"
	selection_color = "#2f2f7f"
	minimal_player_age = 18
	economic_modifier = 7
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/command/bridgeofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o1
	)


	access = list(access_security, access_medical, access_engine, access_maint_tunnels, access_emergency_storage,
			            access_heads, access_janitor, access_kitchen, access_cargo, access_RC_announce, access_keycard_auth,
			            access_solgov_crew, access_aquila, access_aquila_helm, access_guppy, access_guppy_helm, access_external_airlocks,
			            access_eva, access_hangar, access_cent_creed, access_explorer)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/pathfinder
	title = "Pathfinder"
	department = "Exploration"
	department_flag = EXP

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#68099e"
	minimal_player_age = 7
	economic_modifier = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/exploration/pathfinder
	allowed_branches = list(/datum/mil_branch/expeditionary_corps)
	allowed_ranks = list(
		/datum/mil_rank/ec/o3,
		/datum/mil_rank/ec/o1
	)


	access = list(access_pathfinder, access_explorer, access_eva, access_maint_tunnels, access_heads, access_emergency_storage, access_tech_storage, access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_cent_creed)

/datum/job/explorer
	title = "Explorer"
	department = "Exploration"
	department_flag = EXP
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Commanding Officer, Executive Officer, and Pathfinder"
	selection_color = "#68099e"
	minimal_player_age = 4
	ideal_character_age = 20
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/exploration/explorer
	allowed_branches = list(/datum/mil_branch/expeditionary_corps)

	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5
	)

	access = list(access_explorer, access_maint_tunnels, access_eva, access_emergency_storage, access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar, access_cent_creed)

/datum/job/senior_engineer
	title = "Senior Engineer"
	department = "Engineering"
	department_flag = ENG

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Engineer"
	selection_color = "#5b4d20"
	economic_modifier = 6
	minimal_player_age = 14
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e8,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/ec/e5
	)

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_tcomsat, access_solgov_crew, access_seneng, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer
	title = "Engineer"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Maintenance Technician",
		"Engine Technician",
		"Damage Control Technician",
		"EVA Technician",
		"Electrician",
		"Atmospheric Technician",
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2
	)

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_solgov_crew, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/engineer_contractor
	title = "Engineering Contractor"
	department = "Engineering"
	department_flag = ENG

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Engineer and Engineering Personnel"
	minimal_player_age = 7
	selection_color = "#5b4d20"
	alt_titles = list(
		"Maintenance Assistant",
		"Structural Integrity Specialist",
		"Electrical Systems Specialist",
		"Information Systems Technician",
		"Reactor Technician",
		"Life Support Systems Specialist")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/contractor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_engine, access_engine_equip, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_teleporter, access_eva, access_tech_storage, access_atmospherics, access_janitor, access_construction,
			            access_solgov_crew, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/roboticist
	title = "Roboticist"
	department = "Engineering"
	department_flag = ENG

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Engineer"
	selection_color = "#5b4d20"
	economic_modifier = 6
	alt_titles = list(
		"Biomechanical Engineer",
		"Mechsuit Technician")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/engineering/roboticist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_robotics, access_robotics_engineering, access_tech_storage, access_morgue, access_medical, access_robotics_engineering, access_solgov_crew)
	minimal_access = list()


/datum/job/warden
	title = "Brig Officer"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Security Commander"
	economic_modifier = 5
	minimal_player_age = 14
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/brig_officer
	allowed_branches = list(
		/datum/mil_rank/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e5
	)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/detective
	title = "Forensic Technician"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief of Security"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 35
	alt_titles = list("Criminal Investigator")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/fleet,
		/datum/mil_branch/civilian = /decl/hierarchy/outfit/job/torch/crew/security/forensic_tech/civ
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/civ/marshal
	)

	access = list(access_security, access_brig, access_forensics_lockers,
			            access_maint_tunnels, access_emergency_storage,
			            access_sec_doors, access_solgov_crew, access_morgue)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/officer
	title = "Master at Arms"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Chief of Security"
	economic_modifier = 4
	minimal_player_age = 10
	ideal_character_age = 25
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/security/maa
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/security/maa/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)


	access = list(access_security, access_brig, access_maint_tunnels,
						access_external_airlocks, access_emergency_storage,
			            access_eva, access_sec_doors, access_solgov_crew)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/senior_doctor
	title = "Physician"
	department = "Medical"
	department_flag = MED

	minimal_player_age = 14
	ideal_character_age = 45
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_modifier = 8
	alt_titles = list(
		"Surgeon",
		"Trauma Surgeon")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/senior
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/senior/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o1
	)

	access = list(access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
			            access_crematorium, access_chemistry, access_surgery,
			            access_medical_equip, access_solgov_crew, access_senmed)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/doctor
	title = "Corpsman"
	minimal_player_age = 7
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Chief Medical Officer"
	economic_modifier = 7
	ideal_character_age = 40
	alt_titles = list(
		"Field Medic" = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/medic,
		"Medical Technician",
		"Nurse")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/doctor/fleet
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/medical/doctor,
		/datum/mil_branch/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6
	)

	access = list(access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
			            access_eva, access_surgery, access_medical_equip, access_solgov_crew, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/doctor_contractor
	title = "Medical Contractor"
	department = "Medical"
	department_flag = MED

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer and Medical Personnel"
	selection_color = "#013d3b"
	economic_modifier = 3
	ideal_character_age = 30
	alt_titles = list(
		"Orderly" = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/orderly,
		"Virologist" = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/virologist,
		"Xenosurgeon" = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/xenosurgeon,
		"Paramedic" = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/paramedic)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/contractor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_medical, access_morgue, access_crematorium, access_virology, access_surgery, access_medical_equip, access_solgov_crew,
		            access_eva, access_maint_tunnels, access_emergency_storage, access_external_airlocks, access_hangar)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/chemist
	title = "Chemist"
	department = "Medical"
	department_flag = MED

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Medical Officer and Medical Personnel"
	selection_color = "#013d3b"
	economic_modifier = 4
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/contractor/chemist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_medical, access_maint_tunnels, access_emergency_storage, access_medical_equip, access_solgov_crew, access_chemistry)
	minimal_access = list()

/datum/job/psychiatrist
	title = "Counselor"
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	alt_titles = list(
		"Psychiatrist" = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/psychiatrist,
		"Chaplain" = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/chaplain,
	)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/medical/counselor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/medical/counselor/fleet)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/ec/o1)


	access = list(access_medical, access_morgue, access_chapel_office, access_crematorium, access_psychiatrist, access_solgov_crew)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/qm
	title = "Deck Officer"
	department = "Supply"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Executive Officer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/o1 = /decl/hierarchy/outfit/job/torch/crew/supply/deckofficer/comissioned,
		/datum/mil_rank/fleet/o1,
		/datum/mil_rank/fleet/o2,
		/datum/mil_rank/fleet/e5,
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/ec/e5,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8
	)

	access = list(access_maint_tunnels, access_heads, access_emergency_storage, access_tech_storage,  access_cargo, access_guppy_helm,
						access_cargo_bot, access_qm, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply)

/datum/job/cargo_tech
	title = "Deck Technician"
	department = "Supply"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Deck Officer and Executive Officer"
	minimal_player_age = 3
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/tech
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/supply/tech/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)

	access = list(access_maint_tunnels, access_emergency_storage, access_cargo, access_guppy_helm,
						access_cargo_bot, access_mailsorting, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar)
	minimal_access = list()

	software_on_spawn = list(/datum/computer_file/program/supply)

/datum/job/cargo_contractor
	title = "Supply Assistant"
	department = "Supply"
	department_flag = SUP

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Deck Officer and Supply Personnel"
	ideal_character_age = 20
	selection_color = "#515151"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/supply/contractor
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mailsorting, access_hangar, access_guppy, access_guppy_helm, access_solgov_crew)

	software_on_spawn = list(/datum/computer_file/program/supply)

/datum/job/janitor
	title = "Sanitation Technician"
	department = "Service"
	department_flag = SRV

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer"
	ideal_character_age = 20
	alt_titles = list(
		"Janitor")
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/service/janitor/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/janitor/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)

	access = list(access_maint_tunnels, access_emergency_storage, access_janitor, access_solgov_crew)
	minimal_access = list()

/datum/job/chef
	title = "Cook"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Executive Officer"
	alt_titles = list(
		"Chef",
		"Culinary Specialist"
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/cook
	allowed_branches = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/expeditionary_corps = /decl/hierarchy/outfit/job/torch/crew/service/cook/ec,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/cook/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/contractor,
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)

	access = list(access_maint_tunnels, access_hydroponics, access_kitchen, access_solgov_crew, access_bar)
	minimal_access = list()

/datum/job/bartender
	department = "Service"
	department_flag = SRV
	supervisors = "the Executive Officer"
	ideal_character_age = 30
	selection_color = "#515151"
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/bartender
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)

	access = list(access_hydroponics, access_bar, access_solgov_crew, access_kitchen)
	minimal_access = list()


/datum/job/crew
	title = "Crewman"
	department = "Service"
	department_flag = SRV

	total_positions = 5
	spawn_positions = 5
	supervisors = "the Executive Officer and SolGov Personnel"
	selection_color = "#515151"
	ideal_character_age = 20
	alt_titles = list(
		"Engineer Trainee",
		"Corpsman Trainee",
		)
	outfit_type = /decl/hierarchy/outfit/job/torch/crew/service/crewman
	allowed_branches = list(
		/datum/mil_branch/expeditionary_corps,
		/datum/mil_branch/fleet = /decl/hierarchy/outfit/job/torch/crew/service/crewman/fleet
	)
	allowed_ranks = list(
		/datum/mil_rank/ec/e3,
		/datum/mil_rank/fleet/e2,
		/datum/mil_rank/fleet/e3,
		/datum/mil_rank/fleet/e4
	)


	access = list(access_maint_tunnels, access_emergency_storage, access_solgov_crew)

/datum/job/senior_scientist
	title = "Senior Researcher"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Research Director"
	selection_color = "#633d63"
	economic_modifier = 12
	minimal_player_age = 10
	ideal_character_age = 50
	alt_titles = list(
		"Research Supervisor")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/senior_scientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt)

	access = list(access_tox, access_tox_storage, access_research, access_mining, access_mining_office,
						access_mining_station, access_xenobiology, access_xenoarch, access_nanotrasen,
						access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm)

/datum/job/nt_pilot
	title = "NanoTrasen Pilot"
	supervisors = "the Research Director"
	department = "Science"
	department_flag = SCI

	total_positions = 1
	spawn_positions = 1
	supervisors = "the Research Director and NanoTrasen Personnel"
	selection_color = "#633d63"
	economic_modifier = 10
	minimal_player_age = 5
	ideal_character_age = 40
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/nt_pilot
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt)

	access = list(access_research, access_mining_office,
						access_mining_station, access_nanotrasen, access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy,
						access_hangar, access_petrov, access_petrov_helm, access_guppy_helm, access_mining)
/datum/job/scientist
	title = "Scientist"
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director"
	economic_modifier = 10
	minimal_player_age = 7
	ideal_character_age = 45
	alt_titles = list(
		"Xenoarcheologist",
		"Anomalist",
		"Researcher",
		"Xenobiologist",
		"Xenobotanist",
		"Psychologist" = /decl/hierarchy/outfit/job/torch/passenger/research/scientist/psych)

	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/scientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt)

	access = list(access_tox, access_tox_storage, access_research, access_petrov, access_petrov_helm,
						access_mining_office, access_mining_station, access_xenobiology, access_guppy_helm,
						access_xenoarch, access_nanotrasen, access_expedition_shuttle, access_guppy, access_hangar)
	minimal_access = list()


/datum/job/mining
	title = "Prospector"
	department = "Science"
	department_flag = SCI
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Research Director"
	selection_color = "#633d63"
	economic_modifier = 7
	ideal_character_age = 25
	alt_titles = list(
		"Drill Technician",
		"Shaft Miner",
		"Salvage Technician")

	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/prospector
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt)

	access = list(access_research, access_mining, access_mining_office, access_mining_station, access_nanotrasen,
						access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_guppy_helm)
	minimal_access = list()


/datum/job/guard
	title = "Security Guard"
	department = "Science"
	department_flag = SCI

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Research Director and NanoTrasen Personnel"
	selection_color = "#633d63"
	economic_modifier = 6
	minimal_player_age = 3
	ideal_character_age = 25
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/guard
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt, /datum/mil_rank/civ/contractor)

	access = list(access_tox, access_tox_storage,access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology,
						access_xenoarch, access_nanotrasen, access_sec_guard, access_hangar, access_petrov, access_expedition_shuttle, access_guppy)


/datum/job/scientist_assistant
	title = "Research Assistant"
	department = "Science"
	department_flag = SCI

	total_positions = 4
	spawn_positions = 4
	supervisors = "the Research Director and NanoTrasen Personnel"
	selection_color = "#633d63"
	economic_modifier = 3
	ideal_character_age = 30
	alt_titles = list(
		"Custodian" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/janitor,
		"Testing Assistant" = /decl/hierarchy/outfit/job/torch/passenger/research/assist/testsubject,
		"Laboratory Technician",
		"Intern",
		"Clerk",
		"Field Assistant")

	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/research/assist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/nt)

	access = list(access_research, access_mining_office, access_nanotrasen, access_petrov, access_expedition_shuttle, access_guppy, access_hangar)


/datum/job/assistant
	title = "Passenger"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Executive Officer"
	selection_color = "#515151"
	economic_modifier = 6
	alt_titles = list(
		"Private Investigator" = /decl/hierarchy/outfit/job/torch/passenger/passenger/PI,
		"Journalist" = /decl/hierarchy/outfit/job/torch/passenger/passenger/journalist,
		"Historian",
		"Botanist",
		"Investor" = /decl/hierarchy/outfit/job/torch/passenger/passenger/investor,
		"Naturalist",
		"Ecologist",
		"Entertainer",
		"Independent Observer",
		"Sociologist",
		"Trainer",
		"Off-Duty")
	outfit_type = /decl/hierarchy/outfit/job/torch/passenger/passenger
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/offduty,
		/datum/mil_rank/civ/nt
	)

/datum/job/cyborg
	total_positions = 3
	spawn_positions = 3
	supervisors = "your laws"


/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV

	total_positions = 2
	spawn_positions = 2
	availablity_chance = 30
	supervisors = "the invisible hand of the market"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 7
	create_record = 0
	outfit_type = /decl/hierarchy/outfit/job/torch/merchant
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	latejoin_at_spawnpoints = 1
	access = list(access_merchant)
	announced = FALSE

/datum/job/stowaway
	title = "Stowaway"
	department = "Civilian"
	department_flag = CIV

	total_positions = 1
	spawn_positions = 1
	availablity_chance = 20
	supervisors = "yourself"
	selection_color = "#515151"
	ideal_character_age = 30
	minimal_player_age = 7
	create_record = 0
	account_allowed = 0
	outfit_type = /decl/hierarchy/outfit/job/torch/stowaway
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	latejoin_at_spawnpoints = 1
	announced = FALSE
*/