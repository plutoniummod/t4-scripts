//
// file: mp_vodka_amb.csc
// description: clientside ambient script for template: setup ambient sounds, etc.
// scripter: 		(initial clientside work - laufer)
//

#include clientscripts\mp\_utility; 
#include clientscripts\mp\_ambientpackage;

main()
{
	//************************************************************************************************
	//                                              Ambient Packages
	//************************************************************************************************

	//declare an ambientpackage, and populate it with elements
	//mandatory parameters are <package name>, <alias name>, <spawnMin>, <spawnMax>
	//followed by optional parameters <distMin>, <distMax>, <angleMin>, <angleMax>
	
	declareAmbientPackage( "outdoors_pkg" );
		addAmbientElement( "outdoors_pkg", "wind_gusts", .1, 1, 100, 300 );

	declareAmbientPackage( "small_room_pkg" );

	declareAmbientPackage( "partial_room_pkg" );



	
	//************************************************************************************************
	//                                       ROOMS
	//************************************************************************************************

	//explicitly activate the base ambientpackage, which is used when not touching any ambientPackageTriggers
	//the other trigger based packages will be activated automatically when the player is touching them
	//the same pattern is followed for setting up ambientRooms
	
	declareAmbientRoom( "outdoors_room" );
			setAmbientRoomTone( "outdoors_room", "outdoors_wind" );
			setAmbientRoomReverb( "outdoors_room", "mountains", 1, 1);


	declareAmbientRoom( "small_room" );
			setAmbientRoomTone( "small_room", "indoors_wind" );
			setAmbientRoomReverb( "small_room", "stoneroom", 1, .9);

	declareAmbientRoom( "partial_room" );
			setAmbientRoomTone( "partial_room", "partial_wind" );
			setAmbientRoomReverb( "partial_room", "partial_room", 1, 1);



	declareAmbientRoom( "indoors1_room" );
			setAmbientRoomTone( "indoors1_room", "indoors_wind" );
			setAmbientRoomReverb( "indoors1_room", "stoneroom", 1, .9);

	declareAmbientRoom( "indoors2_room" );
			setAmbientRoomTone( "indoors2_room", "partial_wind" );
			setAmbientRoomReverb( "indoors2_room", "wood_room", 1, 1);

	declareAmbientRoom( "partial_room" );
			setAmbientRoomTone( "partial_room", "outdoors_wind" );
			setAmbientRoomReverb( "partial_room", "partial_room", 1, 1);

	declareAmbientRoom( "steps_room" );
			setAmbientRoomTone( "steps_room", "outdoors_wind" );
			setAmbientRoomReverb( "steps_room", "stoneroom", 1, .5);

	declareAmbientRoom( "corridor_room" );
			setAmbientRoomTone( "corridor_room", "partial_wind" );
			setAmbientRoomReverb( "corridor_room", "stoneroom", 1, .8);

	declareAmbientRoom( "sewer_pipe_room" );
			setAmbientRoomTone( "sewer_pipe_room", "underground_wind" );
			setAmbientRoomReverb( "sewer_pipe_room", "SEWERPIPE", 1, 1);


	
	//************************************************************************************************
	//                                      ACTIVATE DEFAULT AMBIENT SETTINGS
	//************************************************************************************************


		activateAmbientPackage(0, "outdoors_pkg", 0 );
		activateAmbientRoom(0, "outdoors_room", 0 );


	// Unlike the server side, no need to wait for players to be set up on the client side - 
	// no players == no client scripts running yet.
	
		
}

