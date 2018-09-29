/datum/event/rogue_drone
	endWhen = 1000
	var/list/drones_list = list()

/datum/event/rogue_drone/start()
	//spawn them at the same place as carp
	var/list/possible_spawns = list()
	for(var/landmark in global.landmark_list)
		var/obj/effect/landmark/L = landmark
		if(L.name == "carpspawn")
			possible_spawns.Add(L)

	//25% chance for this to be a false alarm
	var/num
	if(prob(25))
		num = 0
	else
		num = rand(2,6)
	for(var/i=0, i<num, i++)
		var/mob/living/simple_animal/hostile/retaliate/malf_drone/D = new(get_turf(pick(possible_spawns)))
		drones_list.Add(D)
		if(prob(25))
			D.disabled = rand(15, 60)

/datum/event/rogue_drone/announce()
	var/msg
	if(prob(33))
		msg = "Attention: unidentified patrol drones detected within proximity to [location_name()]"
	else if(prob(50))
		msg = "Unidentified Drones approaching [location_name()]."
	else
		msg = "Class II Laser Fire detected nearby [location_name()]."
	command_announcement.Announce(msg, "[location_name()] Sensor Array", zlevels = affecting_z)

/datum/event/rogue_drone/end()
	var/num_recovered = 0
	for(var/mob/living/simple_animal/hostile/retaliate/malf_drone/D in drones_list)
		var/datum/effect/effect/system/spark_spread/sparks = new /datum/effect/effect/system/spark_spread()
		sparks.set_up(3, 0, D.loc)
		sparks.start()
		D.z = GLOB.using_map.admin_levels[1]
		D.has_loot = 0

		qdel(D)
		num_recovered++

	if(num_recovered > drones_list.len * 0.75)
		command_announcement.Announce("Be advised: sensors indicate the unidentified drone has retreated.", "[location_name()] Sensor Array", zlevels = affecting_z)
	else
		command_announcement.Announce("Be advised: sensors indicate the unidentified drones have been destroyed. Security, collect the debris and report to the research department.", "[location_name()] Sensor Array", zlevels = affecting_z)
