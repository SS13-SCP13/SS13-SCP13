SUBSYSTEM_DEF(tram)
	name = "Tram"
	priority = SS_PRIORITY_PROCESSING
	flags = SS_BACKGROUND|SS_NO_INIT
	wait = 1
	var/list/trams = list()

/datum/controller/subsystem/tram/fire(resumed = 0)
	for(var/obj/tram/tram_controller/T in trams)
		if(!T.automode)
			continue
		T.process()