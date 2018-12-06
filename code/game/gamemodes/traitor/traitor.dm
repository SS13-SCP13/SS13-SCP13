/datum/game_mode/traitor
	name = "CI Operative"
	round_description = "There is a Chaos Insurgency operative on-site. Do not let the operative succeed!"
	extended_round_description = "WIP"
	config_tag = "cioperative"
	required_players = 0
	required_enemies = 1
	antag_tags = list(MODE_TRAITOR)
	antag_scaling_coeff = 5
	end_on_antag_death = 0
	latejoin_antag_tags = list(MODE_TRAITOR)