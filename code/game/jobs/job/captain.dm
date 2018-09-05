var/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/captain
	title = "Captain"
	department = "Command"
	head_position = 1
	department_flag = COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "company officials and Corporate Regulations"
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()
	minimal_player_age = 14
	economic_modifier = 20

	ideal_character_age = 70 // Old geezer captains ftw
	outfit_type = /decl/hierarchy/outfit/job/captain

/datum/job/captain/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(src)

/datum/job/captain/get_access()
	return get_all_station_access()

/datum/job/hop
	title = "Head of Personnel"
	head_position = 1
	department_flag = COM|CIV

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#2f2f7f"
	req_admin_notify = 1
	minimal_player_age = 14
	economic_modifier = 10
	ideal_character_age = 50

	access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)
	minimal_access = list(access_security, access_sec_doors, access_brig, access_forensics_lockers,
			            access_medical, access_engine, access_change_ids, access_ai_upload, access_eva, access_heads,
			            access_all_personal_lockers, access_maint_tunnels, access_bar, access_janitor, access_construction, access_morgue,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_library, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway)

	outfit_type = /decl/hierarchy/outfit/job/hop

/datum/job/commsofficer
	title = "Communications Officer"
	supervisors = "the Security Commander and Site Director"
	department = "Command"
	selection_color = "#2f2f7f"
	department_flag = COM|ENG|SEC
	minimal_player_age = 15
	economic_modifier = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/headofhr
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(
	/datum/mil_rank/security/w1,
	/datum/mil_rank/security/w2,
	/datum/mil_rank/security/w3,
	/datum/mil_rank/security/w4,
	/datum/mil_rank/security/w5
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(7,10), rand(7,10), rand(11,14))
		H.add_skills(rand(25,40), rand(25,40), rand(45,65), rand(40,60))


	access = list(
	access_mtflvl1,
	access_mtflvl2,
	access_mtflvl3,
	access_mtflvl4
	)
	minimal_access = list()

/datum/job/o5rep
	has_email = TRUE
	title = "O5 Representative"
	department = "Civilian"
	selection_color = "#2f2f7f"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	duties = "<big><b>As the O5 Representative, your task is to generally assess the site, and you are to fax the O5 Council of any wrongdoings or SOP violations. You can also mediate between two employees if it is absolutely necessary. <span style = 'color:red'>REMEMBER!</span> This is a heavy roleplay job, and bad roleplay will be punished. Your job is not to assess SCP's, nor will you have access there. So don't try."
	supervisors = "the Research Director"
	economic_modifier = 4
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/o5rep
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/classa
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(1,3), rand(0,3), rand(5,10)) // Str, Dex, Int.
		H.add_skills(rand(5,10), rand(5,10), rand(5,10), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_adminlvl1, access_adminlvl2, access_adminlvl3, access_adminlvl4, access_adminlvl5)
	minimal_access = list()

/datum/job/archivist
	has_email = TRUE
	title = "Archivist"
	department = "Civilian"
	selection_color = "#2f2f7f"
	department_flag = COM|SCI
	total_positions = 1
	spawn_positions = 1
	duties = "<big><b>As the Archivist, it is your job to make sure the proper test logs are digitalized and saved in the digital archive, thus safekeeping them forever. You must be picky and selective, and only get those with great quality out! <span style = 'color:red'>REMEMBER!</span> If you put in nonsensical things, or copypasta's such as Woody's got Wood, you will be permanently job banned WITHOUT chance to appeal.</span>"
	supervisors = "the Research Director"
	economic_modifier = 4
	minimal_player_age = 5
	ideal_character_age = 30
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/archivist
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/classa
	)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(1,3), rand(0,3), rand(5,10)) // Str, Dex, Int.
		H.add_skills(rand(5,10), rand(5,10), rand(5,10), rand(5,10)) // Melee, Ranged, Medical, Engineering.

	access = list(access_sciencelvl1, access_sciencelvl2, access_sciencelvl3)
	minimal_access = list()