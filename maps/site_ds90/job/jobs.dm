/////////////
//READ THIS//
/////////////
// WARNING: DO NOT ADD INTEGER VALUES ABOVE 20 FOR ANY STAT OR SKILL OTHER THAN INTELLIGENCE, MEDICAL AND ENGINEERING. - LION

/datum/map/site_ds90
/datum/map/site_ds90/setup_map()

/datum/job/assistant
	title = "Class D"
	department = "Civilian"

	total_positions = -1
	spawn_positions = -1
	supervisors = "Foundation Personnel"
	selection_color = "#E55700"
	economic_modifier = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/classd
	allowed_ranks = list(/datum/mil_rank/civ/classd)
	var/static/list/used_numbers = list()

/datum/job/assistant/equip(var/mob/living/carbon/human/H)
	..()
	var/r = rand(100,9000)
	while (used_numbers.Find(r))
		r = rand(100,9000)
	used_numbers += r
	H.name = "D-[used_numbers[used_numbers.len]]"
	H.real_name = H.name

/datum/job/captain
	title = "Site Director"
	supervisors = "the SCP Foundation and O5 Council"
	minimal_player_age = 20
	economic_modifier = 15
	ideal_character_age = 50
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/facilitydir
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classa)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(7,10), rand(7,10), rand(12,16))
		H.add_skills(rand(25,40), rand(25,40), rand(65,85), rand(50,70))

	access = list(
	access_adminlvl5,
	access_adminlvl4,
	access_adminlvl3,
	access_adminlvl2,
	access_adminlvl1,
	access_utilitylvl1,
	access_utilitylvl2,
	access_utilitylvl3,
	access_utilitylvl4,
	access_utilitylvl5
	)
	minimal_access = list()


/datum/job/hop
	title = "Head of Personnel"
	supervisors = "the Facility Director"
	department = "Command"
	department_flag = COM
	minimal_player_age = 15
	economic_modifier = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/headofhr
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classa)
	alt_titles = list("Personnel Director")
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(7,10), rand(7,10), rand(11,14))
		H.add_skills(rand(25,40), rand(25,40), rand(45,65), rand(40,60))


	access = list(
	access_adminlvl4,
	access_adminlvl3,
	access_adminlvl2,
	access_adminlvl1,
	access_utilitylvl1,
	access_utilitylvl2,
	access_utilitylvl3,
	access_utilitylvl4
	)
	minimal_access = list()

/datum/job/commsofficer
	title = "Communications Officer"
	supervisors = "the Security Commander and Site Director"
	department = "Command"
	department_flag = COM
	total_positions = 0
	spawn_positions = 0
	minimal_player_age = 15
	economic_modifier = 10
	ideal_character_age = 45
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/commsofficer
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


// AWAITING OVERHAUL

/datum/job/cmo
	title = "Chief Medical Officer"
	supervisors = "the Commanding Officer and the Executive Officer"
	economic_modifier = 10
	minimal_player_age = 21
	ideal_character_age = 48
	alt_titles = list("Medical Director")
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/command/cmo
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(/datum/mil_rank/security/w1,
	/datum/mil_rank/security/w2,
	/datum/mil_rank/security/w3)

	access = list(access_utilitylvl1, access_utilitylvl2, access_utilitylvl3, access_utilitylvl4, access_utilitylvl5)
	minimal_access = list()




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
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(12,18), rand(12,16), rand(10,12))
		H.add_skills(rand(60, 75), rand(60,75))

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
		/datum/mil_rank/security/o1,
		/datum/mil_rank/security/o2
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()

/datum/job/brigofficer
	title = "Cell Guard"
	department = "Security"
	department_flag = SEC
	total_positions = 4
	spawn_positions = 4
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
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(11,16), rand(10,14), rand(7,10))
		H.add_skills(rand(60, 75), rand(60,75))

// SCIENCE

/datum/job/juniorscientist
	title = "Junior Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director and anyone in a higher position than you"
	economic_modifier = 4
	alt_titles = list("Junior Xenobiologist", "Junior Xenoarcheologist")
	minimal_player_age = 0
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/juniorscientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classc)


	access = list(access_sciencelvl1)
	minimal_access = list()

/datum/job/scientist
	title = "Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director and anyone in a higher position than you"
	economic_modifier = 4
	alt_titles = list("Xenobiologist", "Xenoarcheologist")
	minimal_player_age = 5
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/scientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classc)


	access = list(access_sciencelvl1, access_sciencelvl2)
	minimal_access = list()

/datum/job/seniorscientist
	title = "Senior Scientist"
	department = "Science"
	department_flag = SCI
	total_positions = 6
	spawn_positions = 6
	supervisors = "the Research Director and anyone in a higher position than you"
	economic_modifier = 4
	alt_titles = list("Senior Xenobiologist", "Senior Xenoarcheologist")
	minimal_player_age = 10
	ideal_character_age = 22
	alt_titles = null
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/seniorscientist
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classb)


	access = list(access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()

/datum/job/rd
	title = "Research Director"
	supervisors = "Facility Director and the Head of Human Resources"
	total_positions = 1
	spawn_positions = 1
	economic_modifier = 20
	minimal_player_age = 15
	ideal_character_age = 60
	spawn_positions = 6
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/science/researchdirector
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/classa)
	equip(var/mob/living/carbon/human/H)
		..()
		H.add_stats(rand(6,8), rand(6,8), rand(14,17))
		H.add_skills(rand(25,40), rand(25,40), rand(65,85), rand(50,70))

	access = list(access_sciencelvl5,
	access_sciencelvl4,
	access_sciencelvl3,
	access_sciencelvl2,
	access_sciencelvl1)
	minimal_access = list()


// ENGINEERING


/datum/job/juneng
	title = "Junior Engineer"
	total_positions = 4
	spawn_positions = 4
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Junior Maintenance Technician",
		"Junior Engine Technician",
		"Junior Damage Control Technician",
		"Junior Electrician",
		"Junior Atmospheric Technician"
		)
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/juneng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e4
	)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/eng
	title = "Engineer"
	total_positions = 3
	spawn_positions = 3
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Maintenance Technician",
		"Engine Technician",
		"Damage Control Technician",
		"Electrician",
		"Atmospheric Technician"
		)
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/juneng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e5,
		/datum/mil_rank/security/e6
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3)
	minimal_access = list()

/datum/job/seneng
	title = "Senior Engineer"
	total_positions = 2
	spawn_positions = 2
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	alt_titles = list(
		"Senior Maintenance Technician",
		"Senior Engine Technician",
		"Senior Damage Control Technician",
		"Senior Electrician",
		"Senior Atmospheric Technician"
		)
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/seneng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/e7,
		/datum/mil_rank/security/e8,
		/datum/mil_rank/security/e9
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()

/datum/job/conteng
	title = "Containment Engineer"
	total_positions = 1
	spawn_positions = 1
	department_flag = ENG
	supervisors = "the Chief Engineer"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/engineering/conteng
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
		/datum/mil_rank/security/w1,
		/datum/mil_rank/security/w2,
		/datum/mil_rank/security/w3,
		/datum/mil_rank/security/w4,
		/datum/mil_rank/security/w5
	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4, access_sciencelvl1, access_sciencelvl2, access_sciencelvl3, access_sciencelvl4)
	minimal_access = list()



/datum/job/chief_engineer
	title = "Chief Engineer"
	supervisors = "the Security Commander and Facility Director"
	total_positions = 1
	spawn_positions = 1
	economic_modifier = 9
	ideal_character_age = 40
	minimal_player_age = 21
	outfit_type = /decl/hierarchy/outfit/job/ds90/crew/command/chief_engineer
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(/datum/mil_rank/security/o1, /datum/mil_rank/security/o2)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3, access_mtflvl4)
	minimal_access = list()

/datum/job/chemist
	title = "Chemist"
	department = "Medical"
	department_flag = MED

	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_modifier = 4
	ideal_character_age = 30
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/chemist
	allowed_branches = list(/datum/mil_branch/security)
	allowed_ranks = list(/datum/mil_rank/security/e3)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/psychiatrist
	title = "Psychiatrist"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	alt_titles = list("Counselor")
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/psychiatrist
	allowed_branches = list(
	/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/classa)


	access = list(access_mtflvl1)
	minimal_access = list()

/datum/job/medicaldoctor
	title = "Medical Doctor"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 3
	spawn_positions = 3
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/medicaldoctor
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e1,
		/datum/mil_rank/security/e2)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/virologist
	title = "Virologist"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 2
	spawn_positions = 2
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/virologist
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e3)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

/datum/job/surgeon
	title = "Surgeon"
	department = "Medical"
	department_flag = MED
	selection_color = "#013d3b"
	total_positions = 2
	spawn_positions = 2
	ideal_character_age = 40
	economic_modifier = 5
	supervisors = "the Chief Medical Officer"
	outfit_type = /decl/hierarchy/outfit/job/ds90/medical/surgeon
	allowed_branches = list(
	/datum/mil_branch/security)
	allowed_ranks = list(
		/datum/mil_rank/security/e4)


	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()


//LOGISTICS

/datum/job/qm
	title = "Logistics Officer"
	department = "Logistics"
	department_flag = SUP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Security Commander"
	selection_color = "#515151"
	economic_modifier = 5
	minimal_player_age = 7
	ideal_character_age = 35
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/logisticsofficer
	allowed_branches = list(
		/datum/mil_branch/security,
	)
	allowed_ranks = list(
		/datum/mil_rank/security/w1

	)

	access = list(access_mtflvl1, access_mtflvl2, access_mtflvl3)
	minimal_access = list()


/datum/job/cargo_tech
	title = "Logistics Specialist"
	department = "Logistics"
	department_flag = SUP
	total_positions = 2
	spawn_positions = 2
	selection_color = "#515151"
	supervisors = "the Logistics Officer"
	minimal_player_age = 3
	ideal_character_age = 24
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/command/logisticspecialist
	allowed_branches = list(
		/datum/mil_branch/security
	)
	allowed_ranks = list(
	/datum/mil_rank/security/e3
	)

	access = list(access_mtflvl1, access_mtflvl2)
	minimal_access = list()

// MISC JOBS

/datum/job/janitor
	title = "Janitor"
	department = "Civilian"
	department_flag = CIV
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Head of Personnel"
	ideal_character_age = 24
	alt_titles = list("Interior caretaker")
	outfit_type = /decl/hierarchy/outfit/job/site90/crew/civ/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
	/datum/mil_rank/civ/classd
	)

	access = list(access_sciencelvl1)
	minimal_access = list()