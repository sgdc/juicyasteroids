/// @description Move the bullet in the correct direction

//After calculating the angle we need to shoot, multiply each component by the movement speed to make it travel
x += cos(shoot_angle) * movement_speed;
y += sin(shoot_angle) * movement_speed;

//Display our lovely particle effects!
if (global.juice3 == true){
	part_particles_create(bulletTrail,x,y,particle1,1);
}