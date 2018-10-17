/// @description Player Movement and Shooting


//Variables used in tracking keyboard movement
hori_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vert_move = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Apply pressed buttons and movement speed to the player object
x += hori_move * movement_speed;
y += vert_move * movement_speed;

//If we can shoot, let's shoot!
if (mouse_check_button(mb_left) && recharge >= 35){
	//Juice Effect 3 : Particles
	if (global.juice3 == true){
		part_particles_create(shootFlash,x+cos(image_angle)*32,y+sin(image_angle)*32,particle2,1);
	}
	with (instance_create_depth(x, y, 0, obj_bullet)){
		//Before we let the bullet go flying, we find the angle at which to actually shoot the bullet
		shoot_angle = arctan2((mouse_y - y), (mouse_x - x));
	}
	//Reset the ship's recharge timer
	recharge = 0;
	//Juice Effect 2 : Tweening
	if (global.juice2 == true){
		tween_value = 1.8;
	}
}

//Recharges the player's ability to shoot
recharge++;

//Juice Effect: Ship Particle Trail
if (global.juice3 == true){
	part_particles_create(shipTrail,x,y,particle5,1);
}