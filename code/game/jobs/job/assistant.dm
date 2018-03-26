/datum/job/assistant
	title = "Class D"
	department = "Civilian"
	department_flag = CIV
	selection_color = "#FFA500"

	total_positions = -1
	spawn_positions = -1
	supervisors = "Foundation Personnel"
	selection_color = "#FF6A00"
	economic_modifier = 1
	access = list()			//See /datum/job/assistant/get_access()
	minimal_access = list()	//See /datum/job/assistant/get_access()
	outfit_type = /decl/hierarchy/outfit/job/assistant

/datum/job/assistant/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()
