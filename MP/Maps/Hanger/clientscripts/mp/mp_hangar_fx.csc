//
// file: mp_hangar_fx.gsc
// description: clientside fx script for mp_hangar: setup, special fx functions, etc.
// scripter: 		(initial clientside work - laufer)
//

#include clientscripts\mp\_utility; 


// load fx used by util scripts
precache_util_fx()
{	

}

precache_scripted_fx()
{
}


// --- AMBIENT SECTION ---//
precache_createfx_fx()
{

	  level._effect["mp_fire_small_detail"]							  = loadfx("maps/mp_maps/fx_mp_fire_small_detail");	
		level._effect["mp_fire_small"]							        = loadfx("maps/mp_maps/fx_mp_fire_small");		  
		level._effect["mp_fire_medium"]							        = loadfx("maps/mp_maps/fx_mp_fire_medium");	
		level._effect["mp_fire_large"]							        = loadfx("maps/mp_maps/fx_mp_fire_large");	
	  level._effect["mp_fire_tree_trunk"]							    = loadfx("maps/mp_maps/fx_mp_fire_tree_trunk");	
		level._effect["mp_insects_swarm"]							      = loadfx("maps/mp_maps/fx_mp_insect_swarm");	
		level._effect["mp_battlesmoke_large"]							  = loadfx("maps/mp_maps/fx_mp_battlesmoke_thick_large_area");	
	  level._effect["mp_battlesmoke_small"]							  = loadfx("maps/mp_maps/fx_mp_battlesmoke_thick_small_area");	
		level._effect["mp_fog_rolling_large"]							  = loadfx("maps/mp_maps/fx_mp_fog_rolling_thick_large_area");	
		level._effect["mp_fog_rolling_small"]							  = loadfx("maps/mp_maps/fx_mp_fog_rolling_thick_small_area");	
	  level._effect["mp_godray_white_large2"]						  = loadfx("maps/mp_maps/fx_mp_hangar_godray_white_large");			
	  level._effect["mp_godray_white_large"]						  = loadfx("maps/mp_maps/fx_mp_godray_white_large");	
		level._effect["mp_godray_white_medium"]					    = loadfx("maps/mp_maps/fx_mp_godray_white_medium");	
		level._effect["mp_godray_white_small"]						  = loadfx("maps/mp_maps/fx_mp_godray_white_small");	
	  level._effect["mp_godray_yellow_large"]						  = loadfx("maps/mp_maps/fx_mp_godray_yellow_large");	
		level._effect["mp_godray_yellow_medium"]					  = loadfx("maps/mp_maps/fx_mp_godray_yellow_medium");	
		level._effect["mp_godray_yellow_small"]						  = loadfx("maps/mp_maps/fx_mp_godray_yellow_small");	
	  level._effect["mp_smoke_ambiance_indoor"]					  = loadfx("maps/mp_maps/fx_mp_smoke_ambiance_indoor");	
		level._effect["mp_smoke_column_tall"]					      = loadfx("maps/mp_maps/fx_mp_smoke_column_tall");	
		level._effect["mp_smoke_column_short"]						  = loadfx("maps/mp_maps/fx_mp_smoke_column_short");	
		level._effect["mp_light_glow_indoor_short"]				  = loadfx("maps/mp_maps/fx_mp_light_glow_indoor_short");	
		level._effect["mp_light_glow_indoor_long"]				  = loadfx("maps/mp_maps/fx_mp_light_glow_indoor_long");
		level._effect["mp_light_glow_outdoor"]				      = loadfx("maps/mp_maps/fx_mp_light_glow_outdoor");				

}


main()
{
	clientscripts\mp\createfx\mp_hangar_fx::main();
	clientscripts\mp\_fx::reportNumEffects();
	
	precache_util_fx();
	precache_createfx_fx();
	
	disableFX = GetDvarInt( "disable_fx" );
	if( !IsDefined( disableFX ) || disableFX <= 0 )
	{
		precache_scripted_fx();
	}
}

