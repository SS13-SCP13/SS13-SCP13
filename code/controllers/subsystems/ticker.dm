SUBSYSTEM_DEF(ticker)
	name = "Ticker"
	priority = SS_PRIORITY_TICKER
	init_order = INIT_ORDER_TICKER
	flags = SS_BACKGROUND
	wait = 1 SECOND
	var/lastTickerTimeDuration
	var/lastTickerTime

/datum/controller/subsystem/ticker/Initialize()
	
	lastTickerTime = world.timeofday

	if(!ticker)
		ticker = new

	ticker.pregame()
	
/datum/controller/subsystem/ticker/fire()
	var/currentTime = world.timeofday

	if(currentTime < lastTickerTime) // check for midnight rollover
		lastTickerTimeDuration = (currentTime - (lastTickerTime - TICKS_IN_DAY)) / TICKS_IN_SECOND
	else
		lastTickerTimeDuration = (currentTime - lastTickerTime) / TICKS_IN_SECOND

	lastTickerTime = currentTime

	ticker.process()

/datum/controller/subsystem/ticker/proc/getLastTickerTimeDuration()
	return lastTickerTimeDuration

/datum/controller/subsystem/ticker/proc/has_round_started()
	return (ticker && ticker.current_state >= GAME_STATE_PLAYING)