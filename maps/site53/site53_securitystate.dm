/datum/map/site53 // setting the map to use this list
	security_state = /decl/security_state/default/site53

//Torch map alert levels. Refer to security_state.dm.
/decl/security_state/default/site53
	all_security_levels = list(/decl/security_level/default/site53/code_green, /decl/security_level/default/site53/code_blue, /decl/security_level/default/site53/code_red, /decl/security_level/default/site53/code_black, /decl/security_level/default/code_delta)
	standard_security_levels = list(/decl/security_level/default/site53/code_green, /decl/security_level/default/site53/code_blue, /decl/security_level/default/site53/code_red, /decl/security_level/default/site53/code_black)

/decl/security_level/default/site53
	icon = 'maps/site53/icons/security_state.dmi'

/decl/security_level/default/site53/code_green
	name = "code green"
	icon = 'icons/misc/security_state.dmi'

	light_range = 2
	light_power = 1
	light_color_alarm = COLOR_GREEN
	light_color_status_display = COLOR_GREEN

	overlay_alarm = "alarm_green"
	overlay_status_display = "status_display_green"

	var/static/datum/announcement/priority/security/security_announcement_green = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/AI/announcer/codegreen.ogg', volume = 150))

/decl/security_level/default/site53/code_green/switching_down_to()
	security_announcement_green.Announce("The situation has been resolved, and all personnel are to return to their regular duties.", "Attention! Alert level lowered to code green.")
	notify_station()
/*
/decl/security_level/default/torchdept/code_violet
	name = "code violet"

	light_range = 3
	light_power = 2
	light_color_alarm = COLOR_VIOLET
	light_color_status_display = COLOR_VIOLET

	overlay_alarm = "alarm_violet"
	overlay_status_display = "status_display_violet"

	up_description = "A major medical emergency has developed. Medical personnel are required to report to their supervisor for orders, and non-medical personnel are required to obey all relevant instructions from medical staff."
	down_description = "Code violet procedures are now in effect; Medical personnel are required to report to their supervisor for orders, and non-medical personnel are required to obey relevant instructions from medical staff."

/decl/security_level/default/torchdept/code_orange
	name = "code orange"

	light_range = 3
	light_power = 2
	light_color_alarm = COLOR_ORANGE
	light_color_status_display = COLOR_ORANGE
	overlay_alarm = "alarm_orange"
	overlay_status_display = "status_display_orange"

	up_description = "A major engineering emergency has developed. Engineering personnel are required to report to their supervisor for orders, and non-engineering personnel are required to evacuate any affected areas and obey relevant instructions from engineering staff."
	down_description = "Code orange procedures are now in effect; Engineering personnel are required to report to their supervisor for orders, and non-engineering personnel are required to evacuate any affected areas and obey relevant instructions from engineering staff."
*/

/decl/security_level/default/site53/code_blue
	name = "code blue"
	icon = 'icons/misc/security_state.dmi'

	light_range = 3
	light_power = 2
	light_color_alarm = COLOR_BLUE
	light_color_status_display = COLOR_BLUE
	overlay_alarm = "alarm_blue"
	overlay_status_display = "status_display_blue"

	up_description = "Code Blue procedures now in effect. A test on a Keter SCP will commence shortly. All class D should return to their cells and await the all-clear at this time. Guards are to be posted at sensitive entry area's and maintain their post there until the all clear. Engineering and Medical staff are confined to their departments or relevant work area's for this test. Civilian and Scientists unrelated to the on-going test are to be escorted to a safe place before the test commences and kept there until the all clear. Violation of these procedures is grounds for immediate termination."
	down_description = "Code Blue procedures now in effect. Code Red has been resolved, but all area's should be swept for threats extensively, and the integrity of all chambers should be inspected. All SCP's must be accounted for."

/decl/security_level/default/site53/code_red
	name = "code red"
	icon = 'icons/misc/security_state.dmi'

	light_range = 4
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_RED
	overlay_alarm = "alarm_red"
	overlay_status_display = "status_display_red"

	var/static/datum/announcement/priority/security/security_announcement_red = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/AI/announcer/codered.ogg'))

/decl/security_level/default/site53/code_red/switching_up_to()
	security_announcement_red.Announce("Code Red procedures are now in effect. A Keter SCP has broken containment and its current whereabouts are unknown. Security should investigate and focus on recontainment as a first priority, or request an MTF unit to assist.", "Attention! Code red alert procedures now in effect!")
	notify_station()

/decl/security_level/default/site53/code_red/switching_down_to()
	security_announcement_red.Announce("Code Red procedures now in effect. Code Black has been canceled, making the facility largely accessible once more, but one or more Keter SCP's remain at large. Security should focus their efforts on recontaining the SCP. Code Red evacuation procedures are now in effect, consult the relevant SoP section for more information.", "Attention! Code red alert procedures now in effect!")
	notify_station()

/decl/security_level/default/site53/code_black
	name = "code black"

	light_range = 4
	light_power = 2
	light_color_alarm = COLOR_RED
	light_color_status_display = COLOR_NAVY_BLUE

	overlay_alarm = "alarm_delta"
	overlay_status_display = "status_display_delta"

	var/static/datum/announcement/priority/security/security_announcement_black = new(do_log = 0, do_newscast = 1, new_sound = sound('sound/AI/announcer/codeblack.ogg'))

/decl/security_level/default/site53/code_black/switching_up_to()
	security_announcement_black.Announce("The site is experiencing multiple keter and euclid level containment breaches. Full site lockdown initiated.", "Attention! Code Black alert procedures now in effect!")
	notify_station()

/decl/security_level/default/site53/code_black/switching_down_to()
	security_announcement_black.Announce("The Site's Nuclear Detonation has been canceled, however several SCP's of both Euclid and Keter classification remain at large. Security should work with relevant responding emergency personnel, or request an MTF to be dispatched to recontain the SCP's and fix any damage occurred at this time in the facility. Code Black evacuation procedures now in effect. Consult your SoP book for more information.", "Attention! Code Black alert procedures now in effect!")
	notify_station()