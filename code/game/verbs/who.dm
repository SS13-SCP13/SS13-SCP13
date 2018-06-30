
/client/verb/who()
	set name = "Who"
	set category = "OOC"

	var/msg = "<b>Current Players:</b>\n"

	var/list/Lines = list()

	if(check_rights(R_INVESTIGATE, 0))
		for(var/client/C in GLOB.clients)
			var/entry = "\t[C.key]"
			if(!C.mob) //If mob is null, print error and skip rest of info for client.
				entry += " - <font color='red'><i>HAS NO MOB</i></font>"
				Lines += entry
				continue

			entry += " - Playing as [C.mob.real_name]"
			switch(C.mob.stat)
				if(UNCONSCIOUS)
					entry += " - <font color='darkgray'><b>Unconscious</b></font>"
				if(DEAD)
					if(isghost(C.mob))
						var/mob/observer/ghost/O = C.mob
						if(O.started_as_observer)
							entry += " - <font color='gray'>Observing</font>"
						else
							entry += " - <font color='black'><b>DEAD</b></font>"
					else
						entry += " - <font color='black'><b>DEAD</b></font>"

			var/age
			if(isnum(C.player_age))
				age = C.player_age
			else
				age = 0

			if(age <= 1)
				age = "<font color='#ff0000'><b>[age]</b></font>"
			else if(age < 10)
				age = "<font color='#ff8c00'><b>[age]</b></font>"

			entry += " - [age]"

			if(is_special_character(C.mob))
				entry += " - <b><font color='red'>Antagonist</font></b>"
			if(C.is_afk())
				entry += " (AFK - [C.inactivity2text()])"
			entry += " (<A HREF='?_src_=holder;adminmoreinfo=\ref[C.mob]'>?</A>)"
			Lines += entry
	else
		for(var/client/C in GLOB.clients)
			if(!C.is_stealthed())
				Lines += C.key

	for(var/line in sortList(Lines))
		msg += "[line]\n"

	msg += "<b>Total Players: [length(Lines)]</b>"
	to_chat(src, msg)

//New SEXY Staffwho verb
/client/verb/staffwho()
	set category = "Admin"
	set name = "StaffWho"
	var/adminwho = ""
	var/modwho = ""
	var/mentwho = ""
	var/devwho = ""
	var/msg = ""
	var/admin_count = 0
	var/mod_count = 0
	var/ment_count = 0
	var/dev_count = 0

	if(holder)
		for(var/client/X in GLOB.admins)
			if(R_ADMIN & X.holder.rights)
				if(is_stealthed() && (!R_ADMIN & holder.rights && !R_MOD & holder.rights))		//Mentors can't see stealthmins
					continue
				adminwho += "[X] is a <b>[X.holder.rank]</b>"
				if(is_stealthed())
					adminwho += " <b><i>(as [is_stealthed()])</i></b>"
				if(isobserver(X.mob))
					adminwho += " - Observing"
				else if(istype(X.mob,/mob/new_player))
					adminwho += " - Lobby"
				else
					adminwho += " - Playing"
				if(X.is_afk())
					adminwho += " (AFK)"
				admin_count++
			else if (R_MOD & X.holder.rights)
				modwho += "[X] is a <i>[X.holder.rank]</i>"
				if(is_stealthed())
					modwho += " <i>(as [is_stealthed()])</i>"
				if(isobserver(X.mob))
					modwho += " - Observing"
				else if(istype(X.mob,/mob/new_player))
					modwho += " - Lobby"
				else
					modwho += " - Playing"
				if(X.is_afk())
					modwho += " (AFK)"
				mod_count++
			else if (R_MENTOR & X.holder.rights)
				mentwho += " [X] is a [X.holder.rank]"
				if(is_stealthed())
					mentwho += " <i>(as [is_stealthed()]</i>"
				if(isobserver(X.mob))
					mentwho += " - Observing"
				else if(istype(X.mob,/mob/new_player))
					mentwho += " - Lobby"
				else
					mentwho += " - Playing"
				if(X.is_afk())
					mentwho += " (AFK)"
				ment_count++
			else if (R_VAREDIT & X.holder.rights)
				devwho += "/t [X] is a [X.holder.rank]"
				if(is_stealthed())
					devwho += " <i>(as [is_stealthed()]</i>"
				if(isobserver(X.mob))
					devwho += " - Observing"
				else if(istype(X.mob,/mob/new_player))
					devwho += " - Lobby"
				else
					devwho += " - Playing"
				if(X.is_afk())
					devwho += " (AFK)"
				dev_count++


	else
		for(var/client/X in GLOB.admins)
			if(R_ADMIN & X.holder.rights && !(R_MOD & X.holder.rights))
				if(is_stealthed())
					adminwho += "[X] is a [X.holder.rank]"
					admin_count++
			else if (R_MOD & X.holder.rights)
				modwho += "[X] is a [X.holder.rank]"
				mod_count++
	to_chat(src, "<b>Online staff:</b>")
	to_chat(src, "<b>Current Admins ([admin_count]):</b>") +adminwho
	to_chat(src, "")
	to_chat(src, "<b>Current Moderators ([mod_count]):</b>") +modwho
	to_chat(src, "")
	to_chat(src, "<b>Current Mentors ([ment_count]):</b>") +mentwho
	to_chat(src, "")
	to_chat(src, "<b>Current Developers ([dev_count]):</b>") +devwho
	src << msg


/* OLD STUFF.
/client/verb/staffwho()
	set category = "Admin"
	set name = "Staffwho"

	var/list/msg = list()
	var/active_staff = 0
	var/total_staff = 0
	var/can_investigate = check_rights(R_INVESTIGATE, 0)

	for(var/client/C in GLOB.admins)
		var/line = list()
		if(!can_investigate && C.is_stealthed())
			continue
		total_staff++
		if(check_rights(R_ADMIN,0,C))
			line += "\t[C] is \an <b>["\improper[C.holder.rank]"]</b>"
		else
			line += "\t[C] is \an ["\improper[C.holder.rank]"]"
		if(!C.is_afk())
			active_staff++
		if(can_investigate)
			if(C.is_afk())
				line += " (AFK - [C.inactivity2text()])"
			if(isghost(C.mob))
				line += " - Observing"
			else if(istype(C.mob,/mob/new_player))
				line += " - Lobby"
			else
				line += " - Playing"
			if(C.is_stealthed())
				line += " (Stealthed)"
		line = jointext(line,null)
		if(check_rights(R_ADMIN,0,C))
			msg.Insert(1, line)
		else
			msg += line

	if(config.admin_irc)
		to_chat(src, "<span class='info'>Adminhelps are also sent to IRC. If no admins are available in game try anyway and an admin on IRC may see it and respond.</span>")
	to_chat(src, "<b>Current Staff ([active_staff]/[total_staff]):</b>")
	to_chat(src, jointext(msg,"\n"))

*/