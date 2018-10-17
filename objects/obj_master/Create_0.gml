/// @description Initialize game overhead

//Randomizes anything using random generation, denoted by this -> (*)
randomize();

//Setting the speed at which we spawn asteroids
spawn_timer = 60;

//Track the status of the player
global.player_dead = false;

//Sets up the game to handle each juice effect in tandem
global.juice1 = false;
global.juice2 = false;
global.juice3 = false;
global.juice4 = false;
global.juice5 = false;