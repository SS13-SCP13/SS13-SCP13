
/proc/power_failure(var/announce = 1, var/severity = 2, var/list/affected_z_levels)
	if(announce)
		GLOB.using_map.grid_check_announcement()

	for(var/obj/machinery/power/smes/buildable/S in SSmachines.all_machinery)
		S.energy_fail(rand(15 * severity,30 * severity))


	for(var/obj/machinery/power/apc/C in SSmachines.all_machinery)
		if(!C.is_critical && (!affected_z_levels || (C.z in affected_z_levels)))
			C.energy_fail(rand(30 * severity,60 * severity))

/proc/power_restore(var/announce = 1)
	if(announce)
		GLOB.using_map.grid_restored_announcement()
	for(var/obj/machinery/power/apc/C in SSmachines.all_machinery)
		C.failure_timer = 0
		if(C.cell)
			C.cell.charge = C.cell.maxcharge
	for(var/obj/machinery/power/smes/S in SSmachines.all_machinery)
		S.failure_timer = 0
		S.charge = S.capacity
		S.update_icon()
		S.power_change()

/proc/power_restore_quick(var/announce = 1)

	if(announce)
		command_announcement.Announce("All SMESs on the [station_name()] have been recharged. We apologize for the inconvenience.", "Power Systems Nominal", new_sound = GLOB.using_map.grid_restored_sound)
	for(var/obj/machinery/power/smes/S in SSmachines.all_machinery)
		S.failure_timer = 0
		S.charge = S.capacity
		S.output_level = S.output_level_max
		S.output_attempt = 1
		S.input_attempt = 1
		S.update_icon()
		S.power_change()
