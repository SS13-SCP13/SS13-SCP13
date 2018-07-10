//Mild traumas are the most common; they are generally minor annoyances.
//They can be suppressed with escitalopram, but not chemically cured, although brain surgery still works.
//Most of the old brain damage effects have been transferred to the dumbness trauma.

/datum/brain_trauma/mild

/datum/brain_trauma/mild/hallucinations
	name = "Hallucinations"
	desc = "Patient suffers constant hallucinations."
	scan_desc = "schizophrenia"
	gain_text = "<span class='warning'>You feel your grip on reality slipping...</span>"
	lose_text = "<span class='notice'>You feel more grounded.</span>"

/datum/brain_trauma/mild/hallucinations/on_life()
	owner.hallucination_power = min(owner.hallucination_power + 10, 50)
	..()

/datum/brain_trauma/mild/hallucinations/on_lose()
	owner.hallucination_power = 0
	..()

/datum/brain_trauma/mild/stuttering
	name = "Stuttering"
	desc = "Patient can't speak properly."
	scan_desc = "reduced mouth coordination"
	gain_text = "<span class='warning'>Speaking clearly is getting harder.</span>"
	lose_text = "<span class='notice'>You feel in control of your speech.</span>"


/datum/brain_trauma/mild/stuttering/on_life()
	owner.stuttering = min(owner.stuttering + 5, 25)
	..()

/datum/brain_trauma/mild/stuttering/on_lose()
	owner.stuttering = 0
	..()

/datum/brain_trauma/mild/speech_impediment
	name = "Speech Impediment"
	desc = "Patient is unable to form coherent sentences."
	scan_desc = "communication disorder"
	gain_text = "You feel lost for words!"
	lose_text = "You regain your bearing!"


/datum/brain_trauma/mild/speech_impediment/on_gain()
	owner.disabilities |= UNINTELLIGIBLE
	..()

/datum/brain_trauma/mild/speech_impediment/on_lose()
	owner.disabilities &= ~UNINTELLIGIBLE
	..()

/datum/brain_trauma/mild/tourettes
	name = "Tourettes Syndrome"
	desc = "Patient is compelled to vulgarity."
	scan_desc = "vulgarity problem"
	gain_text = "Your mind fills with foul language!"
	lose_text = "Your mind returns to decency."
	can_gain = FALSE

/datum/brain_trauma/mild/tourettes/on_gain()
	owner.disabilities |= TOURETTES
	..()

/datum/brain_trauma/mild/tourettes/on_lose()
	owner.disabilities &= ~TOURETTES
	..()

/datum/brain_trauma/mild/gertie
	name = "Gerstmann Syndrome"
	desc = "Patient displays severe left right disorientation."
	scan_desc = "left-right disorientation"
	gain_text = "You wonder to yourself, does three rights really make a left?!"
	lose_text = "You remember that you can just turn left directly!"

/datum/brain_trauma/mild/gertie/on_gain()
	owner.disabilities |= GERTIE
	..()

/datum/brain_trauma/mild/gertie/on_lose()
	owner.disabilities &= ~GERTIE
	..()

/datum/brain_trauma/mild/muscle_weakness
	name = "Muscle Weakness"
	desc = "Patient experiences occasional bouts of muscle weakness."
	scan_desc = "weak motor nerve signal"
	gain_text = "<span class='warning'>Your muscles feel oddly faint.</span>"
	lose_text = "<span class='notice'>You feel in control of your muscles again.</span>"


/datum/brain_trauma/mild/muscle_weakness/on_life()
	var/fall_chance = 5
	if(owner.m_intent == "run")
		fall_chance += 15
	if(prob(fall_chance) && !owner.lying && !owner.buckled)
		to_chat(owner, "<span class='warning'>Your leg gives out!</span>")
		owner.Weaken(5)

	else if(owner.get_active_hand())
		var/drop_chance = 15
		var/obj/item/I = owner.get_active_hand()
		drop_chance += I.w_class
		if(prob(drop_chance) && owner.drop_from_inventory(I))
			to_chat(owner, "<span class='warning'>You drop [I]!</span>")

	else if(prob(3))
		to_chat(owner, "<span class='warning'>You feel a sudden weakness in your muscles!</span>")
		owner.adjustHalLoss(25)
	..()

/datum/brain_trauma/mild/nearsightedness
	name = "Cerebral Near-Blindness"
	desc = "Patient's brain is loosely connected to its eyes."
	scan_desc = "minor damage to the brain's occipital lobe"
	gain_text = "<span class='warning'>You can barely see!</span>"
	lose_text = "<span class='notice'>Your vision returns.</span>"

/datum/brain_trauma/mild/nearsightedness/on_gain()
	owner.disabilities |= NEARSIGHTED
	..()

//no fiddling with genetics to get out of this one
/datum/brain_trauma/mild/nearsightedness/on_life()
	if(!(owner.disabilities & NEARSIGHTED))
		on_gain()
	..()

/datum/brain_trauma/mild/nearsightedness/on_lose()
	if(owner.disabilities & NEARSIGHTED)
		owner.disabilities &= ~NEARSIGHTED
	..()