/datum/species/scp106
	name = "SCP-106"
	name_plural = "SCP-106s"

	darksight = 8
	has_organ = list()
	siemens_coefficient = 0

	blood_color = "#622a37"
	flesh_color = "#442A37"

	species_flags = SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_POISON
	spawn_flags = SPECIES_IS_RESTRICTED

	genders = list(MALE)

	// we're immune to just about everything
	virus_immune = TRUE
	breath_pressure = 0
	hazard_high_pressure = HAZARD_HIGH_PRESSURE*10  // Dangerously high pressure.
	warning_high_pressure = WARNING_HIGH_PRESSURE*10 // High pressure warning.
	warning_low_pressure = WARNING_LOW_PRESSURE*0.1   // Low pressure warning.
	hazard_low_pressure = HAZARD_LOW_PRESSURE*0.1     // Dangerously low pressure.

/datum/species/scp106/handle_npc(var/mob/living/carbon/human/scp106/H)
	if (!H.client)
		H.pursueTarget()