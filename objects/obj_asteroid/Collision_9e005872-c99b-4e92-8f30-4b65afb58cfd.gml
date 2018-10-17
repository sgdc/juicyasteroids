/// @description Bullet Collision

//The asteroid loses 1 hp.
asteroid_health--;

//Destroys the bullet
with (other){
	instance_destroy();	
}

//Juice Effect : Particles
if (global.juice3 == true){
	part_particles_create(asteroidHitBullet,x,y,particle3,5);
}

//Juice Effect : Tweening
if (global.juice2 == true){
	tween_value = 0.4;
}
