/// @description Tracks multiple important states

//Constantly tick towards creating more asteroids
spawn_timer--;

//Spawns New Asteroid
if (spawn_timer <= 0){
	instance_create_depth(x, y, 0, obj_asteroid);
	spawn_timer = 60;
}

//If the player died, give the game time to play the destroyed particle effect, then reset the room
if (!instance_exists(obj_player) && global.player_dead){
	//Juice Effect 4 : Screen Shake
	if (global.juice4 == true){
		instance_create_depth(x, y, 0, obj_shake);
	}
	alarm[0] = 120;
	global.player_dead = false;
}

