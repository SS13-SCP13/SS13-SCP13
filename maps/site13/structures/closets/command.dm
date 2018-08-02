/*
 * Torch Command
 */

/obj/structure/closet/secure_closet/administration/facilityadmin
	name = "facility director's locker"
	req_access = list(access_adminlvl5)
	icon_state = "flocked"
	icon_closed = "funlocked"
	icon_locked = "flocked"
	icon_opened = "fopen"
	icon_off = "foff"

/obj/structure/closet/secure_closet/administration/facilityadmin/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/megaphone,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder/blue,
		/obj/item/clothing/under/suit_jacket/charcoal,
		/obj/item/clothing/under/suit_jacket,
		/obj/item/clothing/under/suit_jacket/charcoal,
		/obj/item/clothing/shoes/dress,
		/obj/item/device/radio,
	)

/obj/structure/closet/secure_closet/administration/hop
	name = "head of personnel's locker"
	req_access = list(access_adminlvl5)
	icon_state = "flocked"
	icon_closed = "funlocked"
	icon_locked = "flocked"
	icon_opened = "fopen"
	icon_off = "foff"

/obj/structure/closet/secure_closet/administration/hop/WillContain()
	return list(
		/obj/item/clothing/under/suit_jacket/checkered,
		/obj/item/clothing/under/suit_jacket/checkered,
		/obj/item/clothing/under/gimmick/rank/head_of_personnel/suit,
		/obj/item/clothing/shoes/dress,
		/obj/item/device/radio,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/weapon/melee/telebaton,
		/obj/item/device/megaphone,
		/obj/item/weapon/storage/box/headset,
		/obj/item/weapon/clipboard,
		/obj/item/weapon/folder/blue,

	)
