/// @description Initialize Asteroid Variables

//Health, pretty self-explanatory
asteroid_health = 3;

//Picks a random size, rotation speed, and movement speed to avoid constant repetition (*)
random_size = irandom_range(1, 3);
spin_speed = irandom_range(1, 2);
travel_speed = irandom_range(1, 3);

//Spawns the asteroid on the left side of the screen
x = 0;

//Randomly spawned from bottom to top of the screen (*)
y = irandom_range(0, room_height);

//Used to show when an asteroid takes damage
tween_value = 1;

//Particle Effects
asteroidHitBullet = part_system_create();
particle3 = part_type_create();
part_type_shape(particle3,pt_shape_disk);
part_type_size(particle3,0.10,0.10,0,0);
part_type_scale(particle3,1,1);
part_type_color1(particle3,16777215);
part_type_alpha1(particle3,1);
part_type_speed(particle3,0.60,0.75,0,0);
part_type_direction(particle3,0,359,0,0);
part_type_blend(particle3,1);
part_type_life(particle3,35,40);

asteroidDeath = part_system_create();
particle4 = part_type_create();
part_type_shape(particle4,pt_shape_cloud);
part_type_size(particle4,0.90,1.10,0,0);
part_type_scale(particle4,1,1);
part_type_color2(particle4,65535,8224125);
part_type_alpha1(particle4,1);
part_type_speed(particle4,1.10,4,0.01,0);
part_type_direction(particle4,-60,60,0,0);
part_type_blend(particle4,1);
part_type_life(particle4,20,40);
