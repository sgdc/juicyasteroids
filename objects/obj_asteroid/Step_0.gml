/// @description

//Tracking each asteroid's health individually
if (asteroid_health <= 0){
	//Juice Effect 3 : Particles
	if (global.juice3 == true){
		part_particles_create(asteroidDeath,x,y,particle4,15);
	}
	//Juice Effect 5 : Sounds
	if (global.juice5 == true){
		audio_play_sound(asteroid_dead, 1, false);
	}
	instance_destroy();
}

//Moving the asteroid across the screen at whatever random value was picked upon creation
x += travel_speed;