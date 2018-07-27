/*
 * Site13 Science
 */

/obj/structure/closet/secure_closet/RD_torch
	name = "research director's locker"
//	req_access = list(access_rd)
	icon_state = "rdsecure1"
	icon_closed = "rdsecure"
	icon_locked = "rdsecure1"
	icon_opened = "rdsecureopen"
	icon_off = "rdsecureoff"

/obj/structure/closet/secure_closet/RD_torch/WillContain()
	return list(
		/obj/item/clothing/suit/bio_suit/scientist,
		/obj/item/clothing/head/bio_hood/scientist,
		/obj/item/clothing/under/rank/research_director,
		/obj/item/clothing/under/rank/research_director/rdalt,
		/obj/item/clothing/under/rank/research_director/dress_rd,
		/obj/item/clothing/under/suit_jacket/nt,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/toggle/labcoat/science,
		/obj/item/clothing/suit/storage/toggle/labcoat/rd,
		/obj/item/weapon/cartridge/rd,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		/obj/item/device/radio/headset/heads/torchntcommand,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/clothing/mask/gas,
		/obj/item/device/flash,
		/obj/item/device/megaphone,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/taperoll/research,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/device/holowarrant,
		/obj/item/clothing/suit/armor/pcarrier/light,
		/obj/item/weapon/storage/box/secret_project_disks/science,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel_tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/scientist_torch
	name = "researcher's locker"
//	req_one_access = list(access_research)
	icon_state = "secureres1"
	icon_closed = "secureres"
	icon_locked = "secureres1"
	icon_opened = "secureresopen"
	icon_off = "secureresoff"

/obj/structure/closet/secure_closet/scientist_torch/WillContain()
	return list(
		/obj/item/clothing/under/rank/scientist,
		/obj/item/clothing/suit/storage/toggle/labcoat/science,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/shoes/white,
		/obj/item/weapon/cartridge/signal/science,
		/obj/item/device/radio/headset/torchnanotrasen,
		/obj/item/clothing/mask/gas/half,
		/obj/item/weapon/tank/emergency/oxygen/engi,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder,
		/obj/item/device/taperecorder,
		/obj/item/device/tape/random = 3,
		/obj/item/device/camera,
		/obj/item/device/analyzer,
		/obj/item/taperoll/research,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/glasses/science,
		new /datum/atom_creator/weighted(list(/obj/item/weapon/storage/backpack/toxins, /obj/item/weapon/storage/backpack/satchel_tox)),
		new /datum/atom_creator/simple(/obj/item/weapon/storage/backpack/messenger/tox, 50)
	)

/obj/structure/closet/secure_closet/scpscience/directorofscience
	name = "Research Director's Locker"
	req_access = list(access_sciencelvl5)
	icon_state = "dslocked"
	icon_closed = "dsunlocked"
	icon_locked = "dslocked"
	icon_opened = "dsopen"
	icon_broken = "dsbroken"
	icon_off = "dsoff"
/obj/structure/closet/secure_closet/scpscience/directorofscience/WillContain()
	return list(
		/obj/item/weapon/storage/backpack/dufflebag,
		/obj/item/clothing/under/rank/scientist,
		/obj/item/clothing/suit/storage/toggle/labcoat/rd,
		/obj/item/clothing/shoes/white,
		/obj/item/clothing/mask/gas,
		/obj/item/weapon/clipboard,
		/obj/item/taperoll/research
	)
