/datum/species/scp106
	name = "SCP-106"
	name_plural = "SCP-106"

	// WIP
	icobase = 'icons/mob/human_races/r_shadow.dmi'
	deform = 'icons/mob/human_races/r_shadow.dmi'

	darksight = 8
	has_organ = list()
	siemens_coefficient = 0

	blood_color = "#cccccc"
	flesh_color = "#aaaaaa"

	death_message = "dissolves into ash..."

	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_POISON | SPECIES_FLAG_NO_EMBED
	spawn_flags = SPECIES_IS_RESTRICTED

	genders = list(MALE)

/datum/species/scp106/handle_npc(var/mob/living/carbon/human/H)
	if (!H.client)
		H.pursueTarget()