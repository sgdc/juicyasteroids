/// @description On Collision with Asteroid

//Delete the player instance
instance_destroy();

//Juice Effect 3 : Particles
if (global.juice3 == true){
	part_particles_create(starTrail,x,y,particle6,40);
}

//Juice effect 5 : Sounds
if (global.juice5 == true){
	audio_play_sound(shipDeath, 1, false);
}


//Trigger the death sequence
global.player_dead = true;