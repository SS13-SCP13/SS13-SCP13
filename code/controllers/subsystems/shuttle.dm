SUBSYSTEM_DEF(shuttle)
	name = "Shuttle"
	flags = SS_BACKGROUND
	runlevels = RUNLEVEL_GAME
	wait = 2 SECONDS

/datum/controller/subsystem/shuttle/Initialize()
	if(!shuttle_controller)
		shuttle_controller = new
	return ..()

/datum/controller/subsystem/shuttle/fire()
	shuttle_controller.process()