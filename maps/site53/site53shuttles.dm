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