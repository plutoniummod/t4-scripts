main()
{
	//maps\mp\mp_cargoship_fx::main();
	//maps\createart\mp_cargoship_art::main();
	//needs to be first for create fx
	
	maps\mp\mp_asylum_fx::main();
	maps\mp\createart\mp_asylum_art::main();
	
	maps\mp\_load::main();

	maps\mp\mp_asylum_amb::main();
	
	maps\mp\_compass::setupMiniMap("compass_map_mp_asylum");
	
	//setExpFog(300, 1400, 0.5, 0.5, 0.5, 0);
	//VisionSetNaked( "mp_cargoship" );
	//ambientPlay("ambient_cargoshipmp_ext");

	// If the team nationalites change in this file,
	// you must update the team nationality in the level's csc file as well!
	game["allies"] = "russian";
	game["axis"] = "german";
	game["attackers"] = "allies";
	game["defenders"] = "axis";
	game["allies_soldiertype"] = "german";
	game["axis_soldiertype"] = "german";

	setdvar( "r_specularcolorscale", "1" );

	setdvar("compassmaxrange","2100");

	game["strings"]["war_callsign_a"] = &"MPUI_CALLSIGN_ASYLUM_A";
	game["strings"]["war_callsign_b"] = &"MPUI_CALLSIGN_ASYLUM_B";
	game["strings"]["war_callsign_c"] = &"MPUI_CALLSIGN_ASYLUM_C";
	game["strings"]["war_callsign_d"] = &"MPUI_CALLSIGN_ASYLUM_D";
	game["strings"]["war_callsign_e"] = &"MPUI_CALLSIGN_ASYLUM_E";

	game["strings_menu"]["war_callsign_a"] = "@MPUI_CALLSIGN_ASYLUM_A";
	game["strings_menu"]["war_callsign_b"] = "@MPUI_CALLSIGN_ASYLUM_B";
	game["strings_menu"]["war_callsign_c"] = "@MPUI_CALLSIGN_ASYLUM_C";
	game["strings_menu"]["war_callsign_d"] = "@MPUI_CALLSIGN_ASYLUM_D";
	game["strings_menu"]["war_callsign_e"] = "@MPUI_CALLSIGN_ASYLUM_E";


	// enable new player spawning system
	maps\mp\gametypes\_spawning::level_use_unified_spawning(true);
	
createSpawnpoint( "mp_ctf_spawn_allies", (-1322.6, 365.3, 246), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-724.4, -3.59998, 232), 90 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-691.4, -163.4, 230), 180 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (1257.8, -353.2, 68), 180 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (691.722, -389.541, 74), 145.4 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (605.861, -492.475, 230), 229.8 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (219.38, -480.925, 230), 192.8 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (458.5, -599.7, 64), 90 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (303.3, -689.5, 87), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (998.5, -922.3, 68), 180 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (137.3, -878.5, 87), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-80.7, -998.5, 65), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (998.479, -1300.7, 65), 115 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-722.438, -661.421, 230), 142 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-1244.46, -658.647, 230), 40.6 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-1393.57, -768.573, 230), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-1154.3, -1098.51, 70), 6.4 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-844.478, -1174.71, 89), 63.6 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-524.7, -1172.5, 89), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-196.7, -1252.5, 27), 0 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (238.493, -1509.7, -15), 15.2 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (134.5, -1868.7, 45), 90 ); 
createSpawnpoint( "mp_ctf_spawn_allies", (-236.473, -1800.71, 5), 57.8 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (-219.211, 1973.9, 252), 317 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1903.89, 1777.28, 196), 228 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1573.9, 1994.2, 194), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1206.9, 1987.2, 194), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (816.1, 1782.8, 230), 180 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1106, 1565, 141), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (-154.2, 1569.9, 231), 0 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (229.2, 1378.1, 230), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1028, 1401, 132), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (482, 1263, 151), 0 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (370.021, 1174.86, 245), 232.6 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1535, 1149, 70), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (-227.1, 1124.2, 231), 270 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (501, 1019, 166), 0 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (811, 765, 68), 0 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1255, 734, 233), 180 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1565, 661, 68), 180 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (1220.28, 373.036, 230), 136 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (805, 421, 68), 212.6 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (805, 405.3, 230), 180 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (692.586, 499.821, 68), 8.8 ); 
createSpawnpoint( "mp_ctf_spawn_axis", (299.608, 683.781, 68), 352 );			
}

createSpawnpoint( classname, origin, yaw )
{
	spawnpoint = spawn( "script_origin", origin );
	spawnpoint.angles = (0,yaw,0);
	
	if ( !isdefined( level.extraSpawnpoints ) )
		level.extraSpawnpoints = [];
	if ( !isdefined( level.extraSpawnpoints[classname] ) )
		level.extraSpawnpoints[classname] = [];
	level.extraSpawnpoints[classname][ level.extraSpawnpoints[classname].size ] = spawnpoint;
}

