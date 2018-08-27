GLOBAL_LIST_EMPTY(scp012s)

/obj/item/paper/scp012
	icon = 'icons/mob/scp012.dmi'
	name = "On Mount Golgotha"
	desc = "An old paper of handwritten sheet music, titled \"On Mount Golgotha\". The writing is in a conspicuous blood red."
	ITEM_SIZE_NO_CONTAINER
	SCP = /datum/scp/SCP_012
	var/mob/living/carbon/human/affecting = null
	var/ticks = 0

/datum/scp/SCP_012
	name = "SCP-012"
	designation = "012"
	classification = EUCLID

/obj/item/paper/scp012/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)
	GLOB.scp012s += src

/obj/item/paper/scp012/Destroy()
	STOP_PROCESSING(SSobj, src)
	GLOB.scp012s -= src
	return ..()

/obj/item/paper/scp012/Process()

	++ticks

	// find a victim in case the last one is gone
	affecting = null
	for (var/mob/living/carbon/human/H in shuffle(view(2, src)))
		if (H.stat == CONSCIOUS)
			affecting = H
			break

	// we're done here
	if (!affecting)
		return

	// make the victim come towards us
	if (!(affecting in view(1, src)))
		affecting.Move(get_step(affecting, get_dir(affecting, src)))

	// why is this such a horrible system
	var/datum/gender/T = gender_datums[affecting.get_gender()]

	// do fun stuff
	if (affecting in view(1, src))

		// once every 20 seconds
		if (!(ticks % 20))
			affecting.visible_message("<span class = \"danger\"><em>[affecting] rips into [T.his] own flesh and covers [T.his] hands in blood!</em></span>")
			affecting.emote("scream")
			affecting.adjustBruteLoss(25)
			affecting.drip(50)
		// once every 15 seconds
		else if (!(ticks % 15) && affecting.getBruteLoss())
			affecting.visible_message("<span class = \"warning\">[affecting] smears [T.his] blood on \"[name]\", writing musical notes...")
		// otherwise
		else if (prob(5))
			if (prob(50))
				affecting.visible_message("<span class = \"notice\">[affecting] looks at \"[name]\" and sighs dejectedly.</span>")
				affecting.emote("sigh")
			else
				affecting.visible_message("<span class = \"notice\">[affecting] looks at \"[name]\" and cries.</span>")
				affecting.emote("cry")
