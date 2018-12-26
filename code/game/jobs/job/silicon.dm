/datum/job/ai
	title = "AiAD"
	department_flag = MSC

	total_positions = 0 // Not used for AI, see is_position_available below and modules/mob/living/silicon/ai/latejoin.dm
	spawn_positions = 0
	selection_color = "#3f823f"
	supervisors = "your laws"
	duties = "<big><b><span style = 'color:red'>You are an AiAD!</span></b></big><br>As an AiAD your primary purpose is to assist legitimate site staff, and act within your laws. Your duties may change if your laws are changed. Remind yourself that laws are not up for interpretation or bending. Should you wish to learn more about this role, please approach the staff in an adminhelp. You should likewise adminhelp if you have questions regarding your laws, law changes or what they mean.<br><br>Enjoy your round!"
	req_admin_notify = 1
	minimal_player_age = 14
	account_allowed = 0
	economic_modifier = 0
	outfit_type = /decl/hierarchy/outfit/job/silicon/ai
	loadout_allowed = FALSE
	hud_icon = "hudblank"

/datum/job/ai/equip(var/mob/living/carbon/human/H)
	if(!H)	return 0
	return 1

/datum/job/ai/is_position_available()
	return (empty_playable_ai_cores.len != 0)
