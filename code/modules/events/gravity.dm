/datum/event/gravity
	announceWhen = 5

/datum/event/gravity/setup()
	endWhen = rand(15, 60)

/datum/event/gravity/announce()
	command_announcement.Announce("Containment breach of object class Euclid detected. Recontainment procedures initiated.", "Containment Failure", zlevels = affecting_z)

/datum/event/gravity/start()
	gravity_is_on = 0
	for(var/area in GLOB.areas)
		var/area/A = area
		if(A.z in GLOB.using_map.station_levels)
			A.gravitychange(gravity_is_on)

/datum/event/gravity/end()
	if(!gravity_is_on)
		gravity_is_on = 1

		for(var/area in GLOB.areas)
			var/area/A = area
			if((A.z in GLOB.using_map.station_levels) && initial(A.has_gravity))
				A.gravitychange(gravity_is_on)

		command_announcement.Announce("Object recontained. Amnestics available upon request.", "Object Contained", zlevels = affecting_z)
