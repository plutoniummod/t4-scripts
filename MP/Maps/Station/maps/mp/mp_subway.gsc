main()
{
	// enable new spawning system

 maps\mp\gametypes\_spawning::level_use_unified_spawning(true);

	
	maps\mp\mp_subway_fx::main();		
	maps\mp\_load::main();
	maps\mp\mp_subway_amb::main();

	precachemodel("collision_geo_128x128x10");

	
	maps\mp\_compass::setupMiniMap("compass_map_mp_subway");
	
	// If the team nationalites change in this file,
	// you must update the team nationality in the level's csc file as well!
	game["allies"] = "russian";
	game["axis"] = "german";
	game["attackers"] = "axis";
	game["defenders"] = "allies";
	game["allies_soldiertype"] = "russian";
	game["axis_soldiertype"] = "german";

	game["strings"]["war_callsign_a"] = &"PATCH_CALLSIGN_SUBWAY_A";
	game["strings"]["war_callsign_b"] = &"PATCH_CALLSIGN_SUBWAY_B";
	game["strings"]["war_callsign_c"] = &"PATCH_CALLSIGN_SUBWAY_C";
	game["strings"]["war_callsign_d"] = &"PATCH_CALLSIGN_SUBWAY_D";
	game["strings"]["war_callsign_e"] = &"PATCH_CALLSIGN_SUBWAY_E";

	game["strings_menu"]["war_callsign_a"] = "@PATCH_CALLSIGN_SUBWAY_A";
	game["strings_menu"]["war_callsign_b"] = "@PATCH_CALLSIGN_SUBWAY_B";
	game["strings_menu"]["war_callsign_c"] = "@PATCH_CALLSIGN_SUBWAY_C";
	game["strings_menu"]["war_callsign_d"] = "@PATCH_CALLSIGN_SUBWAY_D";
	game["strings_menu"]["war_callsign_e"] = "@PATCH_CALLSIGN_SUBWAY_E";

	setdvar( "r_specularcolorscale", "1" );

	setdvar("compassmaxrange","2100");
	
	//stuck spot by subway car, issue ID 44449
	spawncollision("collision_geo_128x128x10","collider",(-2676, 2908, 715), (0, 24.6, 0));
	
	
}
