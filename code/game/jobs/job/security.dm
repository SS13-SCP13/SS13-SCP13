/datum/job/hos
	title = "Head of Security"
	head_position = 1
	department = "Security"
	department_flag = SEC|COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_modifier = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/security/hos

/datum/job/hos/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/datum/job/ltofficerez
	has_email = TRUE
	title = "EZ Senior Agent"
	department = "LCZ Personnel"
	selection_color = "#8e2929"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Guard Commander"
	duties = "<big><b>As the Entrance Zone Senior Agent, you and your team work independently from the guard commander and regular security structure. In this zone, you are tasked with the protection of administrative personnel, together with the agents stationed here. You should not leave your zone under usual SoP, or allow administration to go without protection detail into the facility.</span>"
	economic_modifier = 4
	minimal_player_age = 10
	ideal_character_age = 45
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/w5
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(80,100), rand(80,100), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_adminlvl1, access_adminlvl2, access_adminlvl3, access_adminlvl4)
	minimal_access = list()

/datum/job/ncoofficerez
	has_email = TRUE
	title = "EZ Agent"
	department = "Entrance Zone Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	duties = "<big><b>As the Agent you have more access than a Junior Agent, but do not control them. You are to guard tests and SCP's in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You also have the duty of guarding the D-Class Cell Blocks. You should not leave your zone under usual SoP."
	supervisors = "the Guard/Senior Agent"
	economic_modifier = 4
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficerez
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e7,
		/datum/mil_rank/security/e8
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(60,80), rand(60,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_adminlvl1, access_adminlvl2, access_adminlvl3)
	minimal_access = list()

/datum/job/enlistedofficerez
	has_email = TRUE
	title = "EZ Junior Agent"
	department = "Entrance Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 8
	spawn_positions = 8
	duties = "<big><b>As the Junior Guard you have minimal access. You are to guard tests, SCP's and provide support in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You should not leave your zone under usual SoP."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
	minimal_player_age = 0
	ideal_character_age = 27
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/enlistedofficerez
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4,
		/datum/mil_rank/security/e5
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(50,80), rand(50,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_adminlvl1, access_adminlvl2)
	minimal_access = list()

/datum/job/ltofficerhcz
	has_email = TRUE
	title = "HCZ Zone Commander"
	department = "HCZ Personnel"
	selection_color = "#8e2929"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Guard Commander"
	duties = "<big><b>As the Zone Commander, you're the right hand of the Guard Commander, and in charge of a specific zone. In this zone, you have full command of the guards stationed there in every situation, except Code Red or higher. You should not leave your zone under usual SoP</span>"
	economic_modifier = 4
	minimal_player_age = 10
	ideal_character_age = 45
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o2
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(80,100), rand(80,100), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()

/datum/job/ncoofficerhcz
	has_email = TRUE
	title = "HCZ Guard"
	department = "HCZ Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	duties = "<big><b>As the Guard you have more access than a Junior Guard, but do not control them. You are to guard tests and SCP's in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You also have the duty of guarding the D-Class Cell Blocks. You should not leave your zone under usual SoP."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
	minimal_player_age = 5
	ideal_character_age = 25
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4,
		/datum/mil_rank/security/e5,
		/datum/mil_rank/security/e6
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(60,80), rand(60,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3)
	minimal_access = list()

/datum/job/enlistedofficerhcz
	has_email = TRUE
	title = "HCZ Junior Guard"
	department = "HCZ Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 8
	spawn_positions = 8
	duties = "<big><b>As the Junior Guard you have minimal access. You are to guard tests, SCP's and provide support in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You should not leave your zone under usual SoP."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
//	minimal_player_age = 0
	ideal_character_age = 25
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/enlistedofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e3,
		/datum/mil_rank/security/e4
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(50,80), rand(50,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_sciencelvl1)
	minimal_access = list()

/datum/job/ltofficerlcz
	has_email = TRUE
	title = "LCZ Zone Commander"
	department = "LCZ Personnel"
	selection_color = "#8e2929"
	department_flag = SEC
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Guard Commander"
	duties = "<big><b>As the Zone Commander, you're the right hand of the Guard Commander, and in charge of a specific zone. In this zone, you have full command of the guards stationed there in every situation, except Code Red or higher. You also carry the responsibility of guarding the D-Cells. You should not leave your zone under usual SoP</span>"
	economic_modifier = 4
	minimal_player_age = 10
	ideal_character_age = 45
	alt_titles = null
//	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o1
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(80,100), rand(80,100), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()

/datum/job/ncoofficerlcz
	has_email = TRUE
	title = "LCZ Guard"
	department = "Light Containment Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 4
	spawn_positions = 4
	duties = "<big><b>As the Guard you have more access than a Junior Guard, but do not control them. You are to guard tests and SCP's in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You also have the duty of guarding the D-Class Cell Blocks. You should not leave your zone under usual SoP."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
	minimal_player_age = 5
	ideal_character_age = 25
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficerlcz
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e2,
		/datum/mil_rank/security/e3,
		/datum/mil_rank/security/e4,
		/datum/mil_rank/security/e5
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(60,80), rand(60,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_mtflvl2, access_sciencelvl1, access_sciencelvl2)
	minimal_access = list()

/datum/job/enlistedofficerlcz
	has_email = TRUE
	title = "LCZ Junior Guard"
	department = "Light Containment Personnel"
	selection_color = "#601c1c"
	department_flag = SEC
	total_positions = 10
	spawn_positions = 10
	duties = "<big><b>As the Junior Guard you have minimal access. You are to guard tests, SCP's and provide support in the zone you spawned in. If in doubt, ask your Zone or Guard Commander. You also have the duty of guarding the D-Class Cell Blocks. You should not leave your zone under usual SoP."
	supervisors = "the Guard/Zone Commander"
	economic_modifier = 4
//	minimal_player_age = 0
	ideal_character_age = 25
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/enlistedofficerlcz
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e1,
		/datum/mil_rank/security/e2
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(10), rand(10), rand(15,20)) // Str, Dex, Int.
		H.add_skills(rand(50,80), rand(50,80), rand(15,30), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_mtflvl1, access_sciencelvl1)
	minimal_access = list()
