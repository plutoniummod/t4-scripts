// Test clientside script for mp_downfall

#include clientscripts\mp\_utility;

main()
{
	clientscripts\mp\_panzeriv::main( "vehicle_ger_tracked_panzer4_mp" );
	clientscripts\mp\_t34::main( "vehicle_rus_tracked_t34_mp" );


	clientscripts\mp\_load::main();
	
	clientscripts\mp\mp_downfall_fx::main();
	
	thread clientscripts\mp\_fx::fx_init(0);
	thread clientscripts\mp\_audio::audio_init(0);

	thread clientscripts\mp\mp_downfall_amb::main();

	println("*** Client : mp_downfall running...");
}
