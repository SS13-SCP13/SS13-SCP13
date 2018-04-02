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

/datum/job/ltofficer
	title = "Security Lieutenant"
	department = "Security"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Chief of Security"
	economic_modifier = 4
	alt_titles = list("Senior Agent")
	minimal_player_age = 10
	ideal_character_age = 45
	selection_color = "#601c1c"
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ncoofficer
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/o2
	)

/datum/job/brigofficer
	title = "Brig Officer"
	department = "Security"
	department_flag = SEC
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Chief of Security"
	economic_modifier = 4
	alt_titles = null
	minimal_player_age = 5
	ideal_character_age = 25
	selection_color = "#601c1c"
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/security/ltofficer
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
	alt_titles = list("Agent")

	total_positions = 6
	spawn_positions = 6
	supervisors = "the Security Commander"
	selection_color = "#601c1c"
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/officer

/datum/job/enlistedofficer
	title = "Security Private"
	department = "Security"
	department_flag = SEC
	alt_titles = list("Junior Agent")

	total_positions = 6
	spawn_positions = 6
	supervisors = "the Security Commander"
	selection_color = "#601c1c"
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /decl/hierarchy/outfit/job/security/officer

