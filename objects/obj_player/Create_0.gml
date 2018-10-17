/// @description Initialize Player Variables

//Set the player's movement speed
movement_speed = 5;

//Prepare the ability to shoot the gun
recharge = 35;

//Used by one of the juice features
tween_value = 1;

//Particle Effects! Each is named as it was used
shootFlash = part_system_create();
particle2 = part_type_create();
part_type_shape(particle2,pt_shape_flare);
part_type_size(particle2,1,1,0,0);
part_type_scale(particle2,1,1);
part_type_color1(particle2,8394751);
part_type_alpha1(particle2,0.80);
part_type_blend(particle2,1);
part_type_life(particle2,2,2);

shipTrail = part_system_create();
particle5 = part_type_create();
part_type_shape(particle5,pt_shape_spark);
part_type_size(particle5,0.60,0.75,0,0);
part_type_scale(particle5,1,1);
part_type_color2(particle5,16777215,14483221);
part_type_alpha1(particle5,1);
part_type_speed(particle5,0.10,0.30,0.01,0);
part_type_direction(particle5,0,359,0,0);
part_type_blend(particle5,1);
part_type_life(particle5,20,40);

/* During our meeting, we created a second ship trail! Comment out the block above this to use this one!
shipTrail = part_system_create();
particle5 = part_type_create();
part_type_shape(particle5,pt_shape_flare);
part_type_size(particle5,0.50,0.50,0,1);
part_type_scale(particle5,1,1);
part_type_color3(particle5,16711680,8388736,16777215);
part_type_alpha1(particle5,1);
part_type_speed(particle5,1.50,1.50,0,10);
part_type_direction(particle5,0,359,0,2);
part_type_gravity(particle5,0,270);
part_type_orientation(particle5,50,55,0,0,1);
part_type_blend(particle5,1);
part_type_life(particle5,60,60);
*/

starTrail = part_system_create();
particle6 = part_type_create();
part_type_shape(particle6,pt_shape_star);
part_type_size(particle6,0.10,0.10,0,0);
part_type_scale(particle6,5,5);
part_type_color2(particle6,13041408,255);
part_type_alpha1(particle6,1);
part_type_speed(particle6,0.01,3,0,0);
part_type_direction(particle6,0,359,0,0);
part_type_gravity(particle6,0,270);
part_type_orientation(particle6,0,0,0,0,1);
part_type_blend(particle6,1);
part_type_life(particle6,60,60);