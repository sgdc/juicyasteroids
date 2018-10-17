/// @description Making the asteroid visually appealing

//The asteroids all rotate at an increasing speed slowly
spin_speed += 0.25;

//Display our asteroid, unless a global juice filter is applied.
if (global.juice1 == true){
	draw_sprite_ext(spr_asteroid_juiced, 0, x, y, (0.5 * random_size), (0.5 * random_size), spin_speed, c_white, 1);
}

if (global.juice1 == true && global.juice2 == true){
	draw_sprite_ext(spr_asteroid_juiced, 0, x, y, (0.5 * random_size) * tween_value, (0.5 * random_size) * tween_value, spin_speed, c_white, 1);
}

if (global.juice2 == true){
	draw_sprite_ext(spr_asteroid, 0, x, y, (0.5 * random_size) * tween_value, (0.5 * random_size) * tween_value, spin_speed, c_white, 1);
}

else{
	draw_sprite_ext(spr_asteroid, 0, x, y, (0.5 * random_size), (0.5 * random_size), spin_speed, c_white, 1);
}

//After the asteroid shrinks slightly, return it to normal size slowly
if (tween_value < 1){
	tween_value += 0.1;
}