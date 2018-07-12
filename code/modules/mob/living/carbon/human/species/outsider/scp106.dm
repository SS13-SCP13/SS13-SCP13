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

/datum/species/scp106/handle_npc(var/mob/living/carbon/human/scp106/H)
	if (!H.client)
		H.pursueTarget()
