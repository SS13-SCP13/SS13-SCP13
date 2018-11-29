/*********************
* Deep Space Site 90 *
*********************/


// GO FROM 200, EACH DEPARTMENT SHOULD START FROM 50 INCREMENTS. I.E: 250 - MEDICAL, 300 - ENGINEERING, ETC. USE 251-299 FOR SUB ACCESS, LIKE EQUIPMENT ROOMS ETC. ~LION
// USE THE FOLLOWING TO INDICATE NEW DEPARTMENTS BEFORE THEY START.
// ACCESS REGION TYPES ARE: COMMAND, MEDBAY, RESEARCH, ENGINEERING, SECURITY, GENERAL AND SUPPLY. THESE ARE HARDCODED BUT APPEAR IN-GAME FINE.
// IF AN ACCESS TYPE IS NOT MEANT TO SHOW UP, YOU DO ACCESS_REGION_NONE
// THE LEVELS 1 TO 5 ACCESS ARE USED FOR SCP CONTAINMENT CHAMBERS. FOR LOCKERS, EQUIPMENT, ETC THERE NEEDS TO BE A SPECIFIC ACCESS VARIABLE.

/*######################
###UNNAMED DEPARTMENT###
######################*/

/*######################
#####ADMINISTRATION#####
######################*/

/var/const/access_com_comms = 1006 // THESE DO NOT GO ON DOORS!!!
/datum/access/com_comms
	id = access_com_comms
	desc = "Command Communications Channel"
	region = ACCESS_REGION_COMMAND

/var/const/access_command = 200
/datum/access/command
	id = access_command
	desc = "Command Access"
	region = ACCESS_REGION_COMMAND

/var/const/access_sitedirect = 201
/datum/access/sitedirect
	id = access_sitedirect
	desc = "Site Director's Office"
	region = ACCESS_REGION_COMMAND

/var/const/access_cmo = 202
/datum/access/cmo
	id = access_cmo
	desc = "CMO's Office"
	region = ACCESS_REGION_COMMAND

/var/const/access_ce = 203
/datum/access/ce
	id = access_ce
	desc = "Chief Engineer's Office"
	region = ACCESS_REGION_COMMAND

/var/const/access_gc = 204
/datum/access/gc
	id = access_gc
	desc = "Guard Commander's Office"
	region = ACCESS_REGION_COMMAND

/var/const/access_rd = 205
/datum/access/rd
	id = access_rd
	desc = "Research Director's Office"
	region = ACCESS_REGION_COMMAND

/*######################
########SECURITY########
######################*/

/var/const/access_sec_comms = 1002
/datum/access/sec_comms
	id = access_sec_comms
	desc = "Security Comms"
	region = ACCESS_REGION_NONE

/var/const/access_seclvl1 = 250
/datum/access/seclvl1
	id = access_seclvl1
	desc = "Security level one"
	region = ACCESS_REGION_SECURITY

/var/const/access_seclvl2 = 251
/datum/access/seclvl2
	id = access_seclvl2
	desc = "Security level two"
	region = ACCESS_REGION_SECURITY

/var/const/access_seclvl3 = 252
/datum/access/seclvl3
	id = access_seclvl3
	desc = "Security level three"
	region = ACCESS_REGION_SECURITY

/var/const/access_seclvl4 = 253
/datum/access/seclvl4
	id = access_seclvl4
	desc = "Security level four"
	region = ACCESS_REGION_SECURITY

/var/const/access_seclvl5 = 254
/datum/access/seclvl5
	id = access_seclvl5
	desc = "Security level five"
	region = ACCESS_REGION_SECURITY

/var/const/access_hcz = 255
/datum/access/hcz
	id = access_hcz
	desc = "Basic Heavy Containment Zone Access"
	region = ACCESS_REGION_SECURITY

/var/const/access_lcz = 256
/datum/access/lcz
	id = access_lcz
	desc = "Basic Light Containment Zone Access"
	region = ACCESS_REGION_SECURITY

/var/const/access_qm = 257
/datum/access/qm
	id = access_qm
	desc = "Quarter Master"
	region = ACCESS_REGION_SECURITY

/*######################
########RESEARCH########
######################*/

/var/const/access_sci_comms = 1001
/datum/access/sci_comms
	id = access_sci_comms
	desc = "Research Comms"
	region = ACCESS_REGION_NONE

/var/const/access_scilvl1 = 300
/datum/access/scilvl1
	id = access_scilvl1
	desc = "Science level one"
	region = ACCESS_REGION_RESEARCH

/var/const/access_scilvl2 = 301
/datum/access/scilvl2
	id = access_scilvl2
	desc = "Science level one"
	region = ACCESS_REGION_RESEARCH

/var/const/access_scilvl3 = 302
/datum/access/scilvl3
	id = access_scilvl3
	desc = "Science level one"
	region = ACCESS_REGION_RESEARCH

/var/const/access_scilvl4 = 303
/datum/access/scilvl4
	id = access_scilvl4
	desc = "Science level one"
	region = ACCESS_REGION_RESEARCH

/var/const/access_scilvl5 = 304
/datum/access/scilvl5
	id = access_scilvl5
	desc = "Science level one"
	region = ACCESS_REGION_RESEARCH

/*######################
#######ENGINEERING######
######################*/

/var/const/access_eng_comms = 1000
/datum/access/eng_comms
	id = access_eng_comms
	desc = "Engineering Comms"
	region = ACCESS_REGION_NONE

/var/const/access_engineering = 350
/datum/access/engineering
	id = access_engineering
	desc = "Engineering"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_atmospherics = 351
/datum/access/atmospherics
	id = access_atmospherics
	desc = "Atmospherics"
	region = ACCESS_REGION_ENGINEERING

/var/const/access_maintenance = 352
/datum/access/maintenance
	id = access_maintenance
	desc = "Maintenance"
	region = ACCESS_REGION_ENGINEERING

/*######################
#########MEDICAL########
######################*/

/var/const/access_med_comms = 1005
/datum/access/med_comms
	id = access_med_comms
	desc = "Medical Comms"
	region = ACCESS_REGION_NONE

/var/const/access_medical = 400
/datum/access/medical
	id = access_medical
	desc = "Medical Bay"
	region = ACCESS_REGION_MEDBAY

/var/const/access_medicalequip = 401
/datum/access/medicalequip
	id = access_medicalequip
	desc = "Medical Equipment"
	region = ACCESS_REGION_MEDBAY

/var/const/access_chemistry = 402
/datum/access/chemistry
	id = access_chemistry
	desc = "Chemistry"
	region = ACCESS_REGION_MEDBAY

/var/const/access_virology = 403
/datum/access/virology
	id = access_virology
	desc = "Virology"
	region = ACCESS_REGION_MEDBAY

/var/const/access_psychiatry = 404
/datum/access/psychiatry
	id = access_psychiatry
	desc = "Psychiatry"
	region = ACCESS_REGION_MEDBAY

/*######################
#######LOGISTICS########
######################*/

/var/const/access_log_comms = 1003
/datum/access/log_comms
	id = access_log_comms
	desc = "Logistics Comms"
	region = ACCESS_REGION_NONE

/var/const/access_logistics = 450
/datum/access/logistics
	id = access_logistics
	desc = "Logistics"
	region = ACCESS_REGION_SUPPLY

/var/const/access_logoff = 451
/datum/access/logoff
	id = access_logoff
	desc = "Logistics Officer"
	region = ACCESS_REGION_SUPPLY

/*######################
#####COMMUNICATIONS#####
######################*/

/var/const/access_comms = 500
/datum/access/comms
	id = access_comms
	desc = "Communications"
	region = ACCESS_REGION_COMMAND

/var/const/access_commoff = 501
/datum/access/commoff
	id = access_commoff
	desc = "Communications Officer"
	region = ACCESS_REGION_COMMAND

/var/const/access_commtech = 502
/datum/access/commtech
	id = access_commtech
	desc = "Communications Technician"
	region = ACCESS_REGION_ENGINEERING

/*######################
########CIVILIAN########
######################*/

/var/const/access_civ_comms = 1004
/datum/access/civ_comms
	id = access_civ_comms
	desc = "Civilian Comms"
	region = ACCESS_REGION_NONE

/*######################
########D-CLASS$########
######################*/

/var/const/access_dclassbotany = 950
/datum/access/dclassbotany
	id = access_dclassbotany
	desc = "D-Class Botany (!)"
	region = ACCESS_REGION_GENERAL

/var/const/access_dclasskitchen = 951
/datum/access/dclasskitchen
	id = access_dclasskitchen
	desc = "D-Class Kitchen (!)"
	region = ACCESS_REGION_GENERAL

/var/const/access_dclassmining = 952
/datum/access/dclassmining
	id = access_dclassmining
	desc = "D-Class Mining (!)"
	region = ACCESS_REGION_GENERAL

