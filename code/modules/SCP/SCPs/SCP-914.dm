#define CLOCKMODE_ROUGH 1
#define CLOCKMODE_COARSE 2
#define CLOCKMODE_ONEONE 3
#define CLOCKMODE_FINE 4
#define CLOCKMODE_VERYFINE 5

/* SCP 914 - Clockwork mechanism
Put things into INTAKE booth, click on panel in the middle - take resulting product from OUTPUT booth
TO ADD RECIPES:
1. find an item you want to use.
2. put following lists to item's definition:
  rough = list(<list of items for that mode>)
  (required) coarse = list(...)
  (required) oneone = list(...)
  (required) fine = list(...)
  veryfine = list(...)
You may use only one list, but then selected item would be transformed only on mode where corresponding list is defined.
By default Rough/Very Fine will process item on Coarse/Fine twice, define coarse/veryfine lists to specify any desired transformation
Proc /atom/scp914_act(var/mode) can be overriden to define any additional effects by your desire (for example, transfer mind from initial mob to processed one)
*/
/datum/scp/SCP_914
  name = "SCP-914"
  designation = "914"
  classification = SAFE
  component = /datum/component/scp/SCP_914

/datum/component/scp/SCP_914
	signal_procs = list(COMSIG_PARENT_ATTACKBY = .proc/transform)
	var/clockwork = FALSE

/datum/component/scp/SCP_914/proc/transform(obj/item/W, mob/user, var/click_params)
  if(!W || clockwork)
    return
  var/atom/movable/product = W.scp914_act(rand(CLOCKMODE_ROUGH,CLOCKMODE_VERYFINE))
  to_chat(user, "Your [W] turned into [product]!")
  qdel(W)
  if(isitem(product))
    user.put_in_active_hand(product)

/obj/machinery/scp914
  name = "clockwork machine"
  desc = "Strange machinery with a lot of screw drives, belts, pulleys, gears, springs and other clockwork."
  icon = 'icons/obj/scp914.dmi'
  icon_state = "main"
  var/switch_state = "switch-1"
  var/process_time = 50
  anchored = 1
  density = 1
  var/obj/structure/closet/scp914/int/intake
  var/obj/structure/closet/scp914/out/outputter
  var/mode = CLOCKMODE_ROUGH
  var/processing = FALSE
  SCP = /datum/scp/SCP_914

/obj/machinery/scp914/New()
  var/intake_loc = locate(x-1,y,z)
  var/output_loc = locate(x+4,y,z)
  intake = new /obj/structure/closet/scp914/int(intake_loc)
  outputter = new /obj/structure/closet/scp914/out(output_loc)
  var/datum/scp/iniSCP = new /datum/scp/SCP_914
  var/datum/component/scp/SCP_914/inicomponent = new /datum/component/scp/SCP_914
  inicomponent.clockwork = FALSE
  iniSCP.component = inicomponent
  SCP = iniSCP
  change_switch_icon()

/obj/machinery/scp914/proc/switch_mode(var/switching_mode) //0 is counter-clockwise, 1 is clockwise
  if(!switching_mode)
    if(mode <= CLOCKMODE_ROUGH)
      mode = CLOCKMODE_VERYFINE
    else
      mode--
  else
    if(mode >= CLOCKMODE_VERYFINE)
      mode = CLOCKMODE_ROUGH
    else
      mode++
  change_switch_icon()

/obj/machinery/scp914/proc/change_switch_icon()
  var/switch_state = "switch-[mode]"
  overlays.Cut()
  var/I = image(icon, switch_state)
  overlays += I

/obj/machinery/scp914/CtrlClick(var/mob/user)
  decrease_mode(user)

/obj/machinery/scp914/proc/decrease_mode(var/mob/user)
  switch_mode(FALSE)
  user.visible_message("[user] turned knob counter-clockwise, switching mode to [get_mode()]", "You switched mode to [get_mode()]")

/obj/machinery/scp914/AltClick(var/mob/user)
  increase_mode(user)

/obj/machinery/scp914/proc/increase_mode(var/mob/user)
  switch_mode(TRUE)
  user.visible_message("[user] turned knob clockwise, switching mode to [get_mode()]", "You switched mode to [get_mode()]")

/obj/machinery/scp914/proc/get_mode()
  var/text = "NONE"
  switch(mode)
    if(CLOCKMODE_ROUGH)
      text = "Rough"
    if(CLOCKMODE_COARSE)
      text = "Coarse"
    if(CLOCKMODE_ONEONE)
      text = "1:1"
    if(CLOCKMODE_FINE)
      text = "Fine"
    if(CLOCKMODE_VERYFINE)
      text = "Very Fine"
  return text

/obj/machinery/scp914/proc/get_timer()
  var/timer = 0
  switch(mode)
    if(CLOCKMODE_VERYFINE)
      timer = process_time*3
    if(CLOCKMODE_FINE)
      timer = process_time*2
    if(CLOCKMODE_ONEONE)
      timer = process_time
    if(CLOCKMODE_COARSE)
      timer = process_time
    if(CLOCKMODE_ROUGH)
      timer = process_time
  return timer

/obj/machinery/scp914/attack_hand(mob/user)
  if(processing)
    to_chat(user, "It's no use - machine is processing right now!")
    return
  start_processsing()

/obj/machinery/scp914/proc/start_processsing()
  intake.close()
  outputter.close()
  var/time = get_timer()
  spawn(time)
    finish_processing()

/obj/machinery/scp914/proc/finish_processing()
  for(var/atom/movable/AM in intake)
    if(istype(AM, /obj/structure/closet/scp914/int))
      continue
    AM.forceMove(outputter.loc)
    var/atom/movable/product = AM.scp914_act(mode)
    if(product)
      product.forceMove(outputter.loc)
      qdel(AM)

  intake.open()
  outputter.open()

/obj/machinery/scp914/ex_act(severity)
  return

/obj/machinery/scp914/emp_act(severity)
  return

/obj/machinery/scp914/emag_act(var/remaining_charges, var/mob/user, var/emag_source, var/visual_feedback = "", var/audible_feedback = "")
  return

/obj/machinery/scp914/bullet_act(var/obj/item/projectile/Proj)
  return

//Copper booth - functionally similar to lockers
//You can't interact with them directly - only via panel

/obj/structure/closet/scp914/ex_act(severity)
  return

/obj/structure/closet/scp914/emp_act(severity)
  return

/obj/structure/closet/scp914/emag_act(var/remaining_charges, var/mob/user, var/emag_source, var/visual_feedback = "", var/audible_feedback = "")
  return

/obj/structure/closet/scp914/bullet_act(var/obj/item/projectile/Proj)
  return

/obj/structure/closet/scp914/attackby(obj/item/weapon/W as obj, mob/user as mob)
  return

/obj/structure/closet/scp914/toggle(mob/user as mob)
  return

/obj/structure/closet/scp914/attack_ai(mob/user)
	return

/obj/structure/closet/scp914/relaymove(mob/user as mob)
	return

/obj/structure/closet/scp914/attack_hand(mob/user as mob)
	return

/obj/structure/closet/scp914/attack_self_tk(mob/user as mob)
	return

/obj/structure/closet/scp914/attack_ghost(mob/ghost)
	return

/obj/structure/closet/scp914/attack_generic(var/mob/user, var/damage, var/attack_message = "destroys", var/wallbreaker)
  return

/obj/structure/closet/scp914/mob_breakout(var/mob/living/escapee)
  to_chat(escapee, "Looks like you can't break out from this place...")
  return

/obj/structure/closet/scp914/int
  name = "intake booth"
  desc = "Large copper booth labeled INTAKE."
  icon = 'icons/obj/scp914booth.dmi'
  icon_state = "intakeopen"
  icon_closed = "intake"
  icon_opened = "intakeopen"
  anchored = 1

/obj/structure/closet/scp914/int/Initialize()
  open()

/obj/structure/closet/scp914/out
  name = "output booth"
  desc = "Large copper booth labeled OUTPUT."
  icon = 'icons/obj/scp914booth.dmi'
  icon_state = "outputopen"
  icon_closed = "output"
  icon_opened = "outputopen"
  anchored = 1

/obj/structure/closet/scp914/out/Initialize()
  open()
