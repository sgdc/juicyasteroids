/// @description Initialize Bullet Variables

//Using a variable to control speed allows us to make easy changes to already existing logic
movement_speed = 10;

//Particles for the bullet trail
bulletTrail = part_system_create();
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_ring);
part_type_size(particle1,0.09,0.12,0,0);
part_type_scale(particle1,1,1);
part_type_color2(particle1,12124415,13827931);
part_type_alpha1(particle1,1);
part_type_speed(particle1,0.02,0.02,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_orientation(particle1,0,0,0,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,60,60);

//Juice Effect 5 : Sounds
if (global.juice5 == true){
	audio_play_sound(shootLaser, 1, false);
}