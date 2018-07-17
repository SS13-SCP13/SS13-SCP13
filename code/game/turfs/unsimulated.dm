/turf/unsimulated
	name = "command"
	initial_gas = list("oxygen" = MOLES_O2STANDARD, "nitrogen" = MOLES_N2STANDARD)
	
/turf/unsimulated/New()
	..()
	GLOB.unsimulated_turfs += src 
	
/turf/unsimulated/Destroy()
	GLOB.unsimulated_turfs -= src 
	return ..()