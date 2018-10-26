/obj/item/clothing/suit/storage/toggle/labcoat
	name = "labcoat"
	desc = "A suit that protects against minor chemical spills."
	icon_state = "labcoat_open"
	//item_state = "labcoat" //Is this even used for anything?
	icon_open = "labcoat_open"
	icon_closed = "labcoat"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|ARMS
	allowed = list(/obj/item/device/analyzer,/obj/item/stack/medical,/obj/item/weapon/reagent_containers/dropper,/obj/item/weapon/reagent_containers/syringe,/obj/item/weapon/reagent_containers/hypospray,/obj/item/device/healthanalyzer,/obj/item/device/flashlight/pen,/obj/item/weapon/reagent_containers/glass/bottle,/obj/item/weapon/reagent_containers/glass/beaker,/obj/item/weapon/reagent_containers/pill,/obj/item/weapon/storage/pill_bottle,/obj/item/weapon/paper)
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 50, rad = 0)
	valid_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)

/obj/item/clothing/suit/storage/toggle/labcoat/cmo
	name = "chief medical officer's labcoat"
	desc = "Bluer than the standard model."
	icon_state = "labcoat_cmo_open"
	//item_state = "labcoat_cmo"
	icon_open = "labcoat_cmo_open"
	icon_closed = "labcoat_cmo"

/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt
	name = "chief medical officer labcoat"
	desc = "A labcoat with command blue highlights."
	icon_state = "labcoat_cmoalt_open"
	icon_open = "labcoat_cmoalt_open"
	icon_closed = "labcoat_cmoalt"

/obj/item/clothing/suit/storage/toggle/labcoat/donators/aptare
	name = "Dr. Fields' Labcoat"
	desc = "An augmented CMO labcoat with golden stripes and a name etched into the fabric on the left side; Dr. Matthew Fields."
	icon_state = "labcoat_aptare_open"
	icon_open = "labcoat_aptare_open"
	icon_closed = "labcoat_aptare"

/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt
	name = "chief medical officer labcoat"
	desc = "A labcoat with command blue highlights."
	icon_state = "labcoat_cmoalt_open"
	icon_open = "labcoat_aptare_open"
	icon_closed = "labcoat_aptare"

/obj/item/clothing/suit/storage/toggle/labcoat/mad
	name = "The Mad's labcoat"
	desc = "It makes you look capable of konking someone on the noggin and shooting them into space."
	icon_state = "labgreen_open"
	//item_state = "labgreen"
	icon_open = "labgreen_open"
	icon_closed = "labgreen"

/obj/item/clothing/suit/storage/toggle/labcoat/genetics
	name = "labcoat"
	desc = "A suit that protects against minor chemical spills. Has a blue stripe on the shoulder."
	icon_state = "labcoat_gen_open"
	icon_open = "labcoat_gen_open"
	icon_closed = "labcoat_gen"

/obj/item/clothing/suit/storage/toggle/labcoat/chemist
	name = "Chemist labcoat"
	desc = "A suit that protects against minor chemical spills. Has an orange stripe on the shoulder."
	icon_state = "labcoat_chem_open"
	icon_open = "labcoat_chem_open"
	icon_closed = "labcoat_chem"

/obj/item/clothing/suit/storage/toggle/labcoat/virologist
	name = "Virologist labcoat"
	desc = "A suit that protects against minor chemical spills. Offers slightly more protection against biohazards than the standard model. Has a green stripe on the shoulder."
	icon_state = "labcoat_vir_open"
	icon_open = "labcoat_vir_open"
	icon_closed = "labcoat_vir"
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 60, rad = 0)

/obj/item/clothing/suit/storage/toggle/labcoat/science
	name = "labcoat"
	desc = "A suit that protects against minor chemical spills. Has a red stripe on the shoulder and red trim on the sleeves, denoting it as a Sciebtust labcoat."
	icon_state = "labcoat_nt_open"
	icon_open = "labcoat_nt_open"
	icon_closed = "labcoat_nt"

/obj/item/clothing/suit/storage/toggle/labcoat/rd
	name = "research director's labcoat"
	desc = "A full-body labcoat covered in red and black designs, denoting it as a Foundation management coat. Judging by the amount of designs on it, it is only to be worn by the most enthusiastic of Foundation employees."
	icon_state = "labcoat_rd_open"
	icon_open = "labcoat_rd_open"
	icon_closed = "labcoat_rd"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS

/obj/item/clothing/suit/storage/toggle/labcoat/blue
	name = "blue-edged labcoat"
	desc = "A suit that protects against minor chemical spills. This one has blue trim."
	icon_state = "blue_edge_labcoat_open"
	icon_open = "blue_edge_labcoat_open"
	icon_closed = "blue_edge_labcoat"

/obj/item/clothing/suit/storage/toggle/labcoat/coat
	name = "coat"
	desc = "A cozy overcoat."
	color = "#292929"

/obj/item/clothing/suit/storage/toggle/labcoat/xyn_machine
	name = "\improper Xynergy labcoat"
	desc = "A stiffened, stylised labcoat designed to fit IPCs. It has blue and purple trim, denoting it as a Xynergy labcoat."
	icon_state = "labcoat_xy"
	icon_open = "labcoat_xy_open"
	icon_closed = "labcoat_xy"
	armor = list(melee = 10, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 20, rad = 0)
	species_restricted = list(SPECIES_IPC)

/obj/item/clothing/suit/storage/toggle/labcoat/rd2
	name = "scientist labcoat"
	desc = "A full-body labcoat. It has a small Foundation logo on the front."
	icon_state = "labcoat_rd2_open"
	icon_open = "labcoat_rd2_open"
	icon_closed = "labcoat_rd2"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	
// Donator labcoats
/obj/item/clothing/suit/storage/toggle/labcoat/flip
	name = "Alper Flip's labcoat"
	desc = "A full-body labcoat. It has a small Foundation logo on the front. The name 'Alper Flip' is sewn into the collar."
	icon_state = "Labcoat Table O"
	icon_open = "Labcoat Table O"
	icon_closed = "Labcoat Table C"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	
/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt/fields
	name = "Dr. Fields' labcoat"
	desc = "A full-body labcoat. It has a small Foundation logo on the front. The name 'Fields' is sewn in on the left-hand side."
	icon_state = "Dr. Fields' Labcoat Open"
	icon_open = "Dr. Fields' Labcoat Open"
	icon_closed = "Dr. Fields' Labcoat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	
/obj/item/clothing/suit/storage/toggle/labcoat/poehl
	name = "Dr. Poehl's labcoat"
	desc = "This dark custom labcoat has blue crosses on either sleeve, and the name tag on the left side front says 'Dr. Poehl'. You can see a few coffee stains on the front. There's a silver Walkman peeking out from one of the front pockets."
	icon_state = "Fishii Labcoat Open"
	icon_open = "Fishii Labcoat Open"
	icon_closed = "Fishii Labcoat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS