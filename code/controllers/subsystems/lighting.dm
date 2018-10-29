SUBSYSTEM_DEF(lighting)

	name = "Lighting"
	wait = 0.1 SECONDS
	priority = SS_PRIORITY_LIGHTING
	init_order = INIT_ORDER_LIGHTING

	var/lighting_overlays_initialised = FALSE

	// misc lists
	var/list/update_lights    = list()    // List of lighting sources  queued for update.
	var/list/update_corners   = list()    // List of lighting corners  queued for update.
	var/list/update_overlays  = list()    // List of lighting overlays queued for update.

	var/list/update_lights_old    = list()    // List of lighting sources  currently being updated.
	var/list/update_corners_old   = list()    // List of lighting corners  currently being updated.
	var/list/update_overlays_old  = list()    // List of lighting overlays currently being updated.

	// misc stats 
	var/total_lighting_sources = 0
	var/total_lighting_corners = 0
	var/total_lighting_overlays = 0

/datum/controller/subsystem/lighting/Initialize() 
	create_all_lighting_overlays()
	lighting_overlays_initialised = TRUE 
	fire()
	..()

/datum/controller/subsystem/lighting/fire()

	update_lights_old = update_lights //We use a different list so any additions to the update lists during a delay from scheck() don't cause things to be cut from the list without being updated.
	update_lights = list()

	for(var/source in update_lights_old)

		var/datum/light_source/L = source

		if(L.check() || L.destroyed || L.force_update)
			L.remove_lum()
			if(!L.destroyed)
				L.apply_lum()

		else if(L.vis_update)	//We smartly update only tiles that became (in) visible to use.
			L.smart_vis_update()

		L.vis_update   = FALSE
		L.force_update = FALSE
		L.needs_update = FALSE

		CHECK_TICK

	update_corners_old = update_corners //Same as above.
	update_corners = list()

	for(var/A in update_corners_old)
		var/datum/lighting_corner/C = A

		C.update_overlays()

		C.needs_update = FALSE

		CHECK_TICK

	update_overlays_old = update_overlays //Same as above.
	update_overlays = list()

	for(var/A in update_overlays_old)
		var/atom/movable/lighting_overlay/O = A
		O.update_overlay()
		O.needs_update = 0
		CHECK_TICK

/datum/controller/subsystem/lighting/stat_entry()
	. = ..("[total_lighting_sources] sources, [total_lighting_corners] corners, [total_lighting_overlays] overlays")