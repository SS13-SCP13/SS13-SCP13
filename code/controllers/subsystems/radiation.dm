SUBSYSTEM_DEF(radiation)
	name = "Radiation"
	priority = SS_PRIORITY_RADIATION
	init_order = INIT_ORDER_RADIATION
	flags = SS_NO_INIT|SS_BACKGROUND
	wait = 2 SECONDS

/datum/controller/subsystem/radiation/fire()
	sources_decay()
	cache_expires()
	irradiate_targets()

// Step 1 - Sources Decay
/datum/controller/subsystem/radiation/proc/sources_decay()
	var/list/sources = radiation_repository.sources
	for(var/thing in sources)
		var/datum/radiation_source/S = thing
		if(QDELETED(S))
			sources.Remove(S)
			continue
		if(S.decay)
			S.update_rad_power(S.rad_power - config.radiation_decay_rate)
		if(S.rad_power <= config.radiation_lower_limit)
			sources.Remove(S)
		SCHECK // This scheck probably just wastes resources, but better safe than sorry in this case.

// Step 2 - Cache Expires
/datum/controller/subsystem/radiation/proc/cache_expires()
	var/list/resistance_cache = radiation_repository.resistance_cache
	for(var/thing in resistance_cache)
		var/turf/T = thing
		if(QDELETED(T))
			resistance_cache.Remove(T)
			continue
		if((length(T.contents) + 1) != resistance_cache[T])
			resistance_cache.Remove(T) // If its stale REMOVE it! It will get added if its needed.
		SCHECK

// Step 3 - Registered irradiatable things are checked for radiation
/datum/controller/subsystem/radiation/proc/irradiate_targets()
	var/list/registered_listeners = GLOB.living_mob_list_ // For now just use this. Nothing else is interested anyway.
	if(length(radiation_repository.sources))
		for(var/thing in registered_listeners)
			var/atom/A = thing
			if(QDELETED(A))
				continue
			var/turf/T = get_turf(thing)
			var/rads = radiation_repository.get_rads_at_turf(T)
			if(rads)
				A.rad_act(rads)
		SCHECK

/datum/controller/subsystem/radiation/stat_entry()
	..("[radiation_repository.sources.len] sources, [radiation_repository.resistance_cache.len] cached turfs")