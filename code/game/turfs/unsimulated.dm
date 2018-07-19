/turf/unsimulated
	name = "command"
	initial_gas = list("oxygen" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)
	
/turf/unsimulated/New()
	..()
	global.unsimulated_turf_list += src 
	
/turf/unsimulated/Destroy()
	global.unsimulated_turf_list -= src 
	return ..()