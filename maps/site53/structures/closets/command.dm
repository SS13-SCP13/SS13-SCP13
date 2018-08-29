/*
 * Site53 Command
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
		/obj/item/clothing/under/scp/suittie,
		/obj/item/clothing/shoes/dress,
		/obj/item/device/radio,
		/obj/item/clothing/suit/storage/toggle/suit/black,
	)