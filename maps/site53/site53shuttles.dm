//Some helpers because so much copypasta for pods
/datum/shuttle/autodock/ferry/escape_pod/torchpod
	category = /datum/shuttle/autodock/ferry/escape_pod/torchpod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	var/number

/datum/shuttle/autodock/ferry/escape_pod/torchpod/New()
	name = "Escape Pod [number]"
	dock_target = "escape_pod_[number]"
	arming_controller = "escape_pod_[number]_berth"
	waypoint_station = "escape_pod_[number]_start"
	landmark_transition = "escape_pod_[number]_internim"
	waypoint_offsite = "escape_pod_[number]_out"
	..()

/obj/effect/shuttle_landmark/escape_pod/
	var/number

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"

/obj/effect/shuttle_landmark/escape_pod/start/New()
	landmark_tag = "escape_pod_[number]_start"
	docking_controller = "escape_pod_[number]_berth"
	..()

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/transit/New()
	landmark_tag = "escape_pod_[number]_internim"
	..()

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

/obj/effect/shuttle_landmark/escape_pod/out/New()
	landmark_tag = "escape_pod_[number]_out"
	..()

//Pods

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod6
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod6/station
	number = 6
/obj/effect/shuttle_landmark/escape_pod/start/pod6
	number = 6
/obj/effect/shuttle_landmark/escape_pod/out/pod6
	number = 6
/obj/effect/shuttle_landmark/escape_pod/transit/pod6
	number = 6

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod7
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod7/station
	number = 7
/obj/effect/shuttle_landmark/escape_pod/start/pod7
	number = 7
/obj/effect/shuttle_landmark/escape_pod/out/pod7
	number = 7
/obj/effect/shuttle_landmark/escape_pod/transit/pod7
	number = 7

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod8
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod8/station
	number = 8
/obj/effect/shuttle_landmark/escape_pod/start/pod8
	number = 8
/obj/effect/shuttle_landmark/escape_pod/out/pod8
	number = 8
/obj/effect/shuttle_landmark/escape_pod/transit/pod8
	number = 8

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod9
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod9/station
	number = 9
/obj/effect/shuttle_landmark/escape_pod/start/pod9
	number = 9
/obj/effect/shuttle_landmark/escape_pod/out/pod9
	number = 9
/obj/effect/shuttle_landmark/escape_pod/transit/pod9
	number = 9

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod10
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod10/station
	number = 10
/obj/effect/shuttle_landmark/escape_pod/start/pod10
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 10
/obj/effect/shuttle_landmark/escape_pod/out/pod10
	number = 10
/obj/effect/shuttle_landmark/escape_pod/transit/pod10
	number = 10

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod11
	warmup_time = 10
	shuttle_area = /area/shuttle/escape_pod11/station
	number = 11
/obj/effect/shuttle_landmark/escape_pod/start/pod11
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 11
/obj/effect/shuttle_landmark/escape_pod/out/pod11
	number = 11
/obj/effect/shuttle_landmark/escape_pod/transit/pod11
	number = 11

//Smoll pods

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod12
	shuttle_area = /area/shuttle/escape_pod12/station
	number = 12
/obj/effect/shuttle_landmark/escape_pod/start/pod12
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 12
/obj/effect/shuttle_landmark/escape_pod/out/pod12
	number = 12
/obj/effect/shuttle_landmark/escape_pod/transit/pod12
	number = 12

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod13
	shuttle_area = /area/shuttle/escape_pod13/station
	number = 13
/obj/effect/shuttle_landmark/escape_pod/start/pod13
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 13
/obj/effect/shuttle_landmark/escape_pod/out/pod13
	number = 13
/obj/effect/shuttle_landmark/escape_pod/transit/pod13
	number = 13

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod14
	shuttle_area = /area/shuttle/escape_pod14/station
	number = 14
/obj/effect/shuttle_landmark/escape_pod/start/pod14
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 14
/obj/effect/shuttle_landmark/escape_pod/out/pod14
	number = 14
/obj/effect/shuttle_landmark/escape_pod/transit/pod14
	number = 14

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod15
	shuttle_area = /area/shuttle/escape_pod15/station
	number = 15
/obj/effect/shuttle_landmark/escape_pod/start/pod15
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 15
/obj/effect/shuttle_landmark/escape_pod/out/pod15
	number = 15
/obj/effect/shuttle_landmark/escape_pod/transit/pod15
	number = 15

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod116
	shuttle_area = /area/shuttle/escape_pod16/station
	number = 16
/obj/effect/shuttle_landmark/escape_pod/start/pod16
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 16
/obj/effect/shuttle_landmark/escape_pod/out/pod16
	number = 16
/obj/effect/shuttle_landmark/escape_pod/transit/pod16
	number = 16

/datum/shuttle/autodock/ferry/escape_pod/torchpod/escape_pod17
	shuttle_area = /area/shuttle/escape_pod17/station
	number = 17
/obj/effect/shuttle_landmark/escape_pod/start/pod17
	base_turf = /turf/simulated/floor/reinforced/airless
	number = 17
/obj/effect/shuttle_landmark/escape_pod/out/pod17
	number = 17
/obj/effect/shuttle_landmark/escape_pod/transit/pod17
	number = 17


/datum/shuttle/autodock/ferry/engineering
	name = "Engineering Tram"
	warmup_time = 10
	shuttle_area = list(/area/site53/tram/engineering)
	waypoint_station = "nav_engineering_start"
	waypoint_offsite = "nav_engineering_out"

/obj/effect/shuttle_landmark/engineering/start
	name = "Tram Hub"
	landmark_tag = "nav_engineering_start"

/obj/effect/shuttle_landmark/engineering/out
	name = "Engineering Department"
	landmark_tag = "nav_engineering_out"

/obj/effect/shuttle_landmark/engineering/internim
	name = "In transit"
	landmark_tag = "nav_engineering_transition"

/datum/shuttle/autodock/ferry/hcz
	name = "Heavy Containment Tram"
	warmup_time = 10
	shuttle_area = list(/area/site53/tram/hcz)
	waypoint_station = "nav_hcz_start"
	waypoint_offsite = "nav_hcz_out"

/obj/effect/shuttle_landmark/hcz/start
	name = "Tram Hub"
	landmark_tag = "nav_hcz_start"

/obj/effect/shuttle_landmark/hcz/out
	name = "Heavy Containment Zone"
	landmark_tag = "nav_hcz_out"

/datum/shuttle/autodock/ferry/lcz
	name = "Light Containment Tram"
	warmup_time = 10
	shuttle_area = list(/area/site53/tram/lcz)
	waypoint_station = "nav_lcz_start"
	waypoint_offsite = "nav_lcz_out"

/obj/effect/shuttle_landmark/lcz/start
	name = "Tram Hub"
	landmark_tag = "nav_lcz_start"

/obj/effect/shuttle_landmark/lcz/out
	name = "Light Containment Zone"
	landmark_tag = "nav_lcz_out"