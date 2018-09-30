SUBSYSTEM_DEF(supply)
	name = "Supply"
	priority = SS_PRIORITY_SUPPLY
	init_order = INIT_ORDER_SUPPLY
	flags = SS_NO_INIT|SS_BACKGROUND
	runlevels = RUNLEVEL_GAME
	wait = 30 SECONDS

/datum/controller/subsystem/supply/fire()
	supply_controller.process()