// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
/*QUAKED actor_axis_jap_reg_wet_type99riflescoped (1.0 0.25 0.0) (-16 -16 0) (16 16 72) SPAWNER FORCESPAWN UNDELETABLE ENEMYINFO
defaultmdl="char_jap_impinf_fullbody"
"count" -- max AI to ever spawn from this spawner
SPAWNER -- makes this a spawner instead of a guy
FORCESPAWN -- will try to delete an AI if spawning fails from too many AI
UNDELETABLE -- this AI (or AI spawned from here) cannot be deleted to make room for FORCESPAWN guys
ENEMYINFO -- this AI when spawned will get a snapshot of perfect info about all enemies
*/
main()
{
	self.animTree = "";
	self.team = "axis";
	self.type = "human";
	self.accuracy = 0.2;
	self.health = 150;
	self.weapon = "type99_rifle_scoped_wet";
	self.secondaryweapon = "";
	self.sidearm = "nambu_wet";
	self.grenadeWeapon = "type97_frag";
	self.grenadeAmmo = 0;

	self setEngagementMinDist( 256.000000, 0.000000 );
	self setEngagementMaxDist( 768.000000, 1024.000000 );

	character\char_jap_makpelwet_rifle::main();
}

spawner()
{
	self setspawnerteam("axis");
}

precache()
{
	character\char_jap_makpelwet_rifle::precache();

	precacheItem("type99_rifle_scoped_wet");
	precacheItem("nambu_wet");
	precacheItem("type97_frag");
}
