GLOBAL_VAR(spawntypes)

/proc/spawntypes()
	if(!GLOB.spawntypes)
		GLOB.spawntypes = list()
		for(var/type in typesof(/datum/spawnpoint)-/datum/spawnpoint)
			var/datum/spawnpoint/S = type
			var/display_name = initial(S.display_name)
			if((display_name in GLOB.using_map.allowed_spawns) || initial(S.always_visible))
				GLOB.spawntypes[display_name] = new S
	return GLOB.spawntypes

/datum/spawnpoint
	var/msg		  //Message to display on the arrivals computer.
	var/list/turfs   //List of turfs to spawn on.
	var/display_name //Name used in preference setup.
	var/always_visible = FALSE	// Whether this spawn point is always visible in selection, ignoring map-specific settings.
	var/list/restrict_job = null
	var/list/disallow_job = null

/datum/spawnpoint/proc/check_job_spawning(job)
	if(restrict_job && !(job in restrict_job))
		return 0

	if(disallow_job && (job in disallow_job))
		return 0

	return 1

#ifdef UNIT_TEST
/datum/spawnpoint/Del()
	crash_with("Spawn deleted: [log_info_line(src)]")
	..()

/datum/spawnpoint/Destroy()
	crash_with("Spawn destroyed: [log_info_line(src)]")
	. = ..()
#endif

/datum/spawnpoint/arrivals
	display_name = "Arrivals Shuttle"
	msg = "has arrived on the station"

/datum/spawnpoint/arrivals/New()
	..()
	turfs = GLOB.latejoin

/datum/spawnpoint/gateway
	display_name = "Gateway"
	msg = "has completed translation from offsite gateway"

/datum/spawnpoint/gateway/New()
	..()
	turfs = GLOB.latejoin_gateway

/datum/spawnpoint/cryo
	display_name = "Cryogenic Storage"
	msg = "has woken up from cryogenics storage"
	disallow_job = list(
	"Cyborg",
	"Class D",
	"Assistant",
	"Security Commander",
	"Security Lieutenant",
	"Security Officer",
	"Junior Security Officer")

/datum/spawnpoint/cryo/New()
	..()
	turfs = GLOB.latejoin_cryo

/datum/spawnpoint/dclass
	display_name = "D-Cells"
	msg = "has been delivered to the Class D Area"
	restrict_job = list("Class D", "Assistant")

/datum/spawnpoint/dclass/New()
	..()
	turfs = GLOB.latejoin_dclass

/datum/spawnpoint/lcz
	display_name = "Light Containment Zone"
	msg = "has entered the light containment zone"
	restrict_job = list(
	"Junior Scientist",
	"Scientist",
	"Senior Scientist",
	"Research Director")
	disallow_job = list(
	"Class D",
	"Chief Engineer",
	"Senior Engineer",
	"Containment Engineer",
	"Junior Engineer",
	"Engineer",
	"Security Commander",
	"Security Lieutenant",
	"Security Officer",
	"Junior Security Officer",
	"Chief Medical Officer",
	"Surgeon",
	"Virologist",
	"Medical Doctor",
	"Chemist"
	)

/datum/spawnpoint/security
	display_name = "Security Base"
	msg = "has started the shift in the Security Base dorms"
	restrict_job = list(
	"Security Commander",
	"Security Lieutenant",
	"Security Officer",
	"Junior Security Officer")
	disallow_job = list(
	"Class D",
	"Chief Engineer",
	"Senior Engineer",
	"Containment Engineer",
	"Junior Engineer",
	"Engineer",
	"Chief Medical Officer",
	"Surgeon",
	"Virologist",
	"Medical Doctor",
	"Chemist"
	)

/datum/spawnpoint/lcz/New()
	..()
	turfs = GLOB.latejoin_lcz


/datum/spawnpoint/cyborg
	display_name = "Cyborg Storage"
	msg = "has been activated from storage"
	restrict_job = list("Cyborg")

/datum/spawnpoint/cyborg/New()
	..()
	turfs = GLOB.latejoin_cyborg