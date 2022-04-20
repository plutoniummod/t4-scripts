main()
{
	maps\mp\mp_outskirts_fx::main();
	maps\mp\createart\mp_outskirts_art::main();
	
	maps\mp\_load::main();
	
	precachemodel("collision_geo_128x128x128");
	precachemodel("collision_wall_512x512x10");
	precachemodel("collision_geo_512x512x512");
	
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_outskirts");

	// If the team nationalites change in this file,
	// you must update the team nationality in the level's csc file as well!
	game["allies"] = "russian";
	game["axis"] = "german";
	game["attackers"] = "allies";
	game["defenders"] = "axis";
	game["allies_soldiertype"] = "german";
	game["axis_soldiertype"] = "german";

	game["strings"]["war_callsign_a"] = &"MPUI_CALLSIGN_OUTSKIRTS_A";
	game["strings"]["war_callsign_b"] = &"MPUI_CALLSIGN_OUTSKIRTS_B";
	game["strings"]["war_callsign_c"] = &"MPUI_CALLSIGN_OUTSKIRTS_C";
	game["strings"]["war_callsign_d"] = &"MPUI_CALLSIGN_OUTSKIRTS_D";
	game["strings"]["war_callsign_e"] = &"MPUI_CALLSIGN_OUTSKIRTS_E";

	game["strings_menu"]["war_callsign_a"] = "@MPUI_CALLSIGN_OUTSKIRTS_A";
	game["strings_menu"]["war_callsign_b"] = "@MPUI_CALLSIGN_OUTSKIRTS_B";
	game["strings_menu"]["war_callsign_c"] = "@MPUI_CALLSIGN_OUTSKIRTS_C";
	game["strings_menu"]["war_callsign_d"] = "@MPUI_CALLSIGN_OUTSKIRTS_D";
	game["strings_menu"]["war_callsign_e"] = "@MPUI_CALLSIGN_OUTSKIRTS_E";

	setdvar( "r_specularcolorscale", "1" );

	setdvar("compassmaxrange","2100");
	
	
	//small rubble room accross from church tower
	spawncollision("collision_geo_128x128x128","collider",(834, 1282, -1276), (0, 350, 0));
	//prevents crazy jump from church tower to telephone pole
	spawncollision("collision_geo_32x32x128","collider",(-408, 408, -1440), (0, 0, 0));
	//prevents players from getting on top of burned out rooftop caddycorner to church tower
	spawncollision("collision_geo_512x512x512","collider",(1002, 350, -1064), (0, 0, 0));
	//prevents tank bounce
	spawncollision("collision_wall_512x512x10","collider",(19, 2112, -1003), (0, 0, 0));


	// enable new spawning system
	maps\mp\gametypes\_spawning::level_use_unified_spawning(true);

}
