/// @description Draw the player

//Calculate the direction from the player to the mouse, and set that as our angle
var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), 10) * sign(dd);

//Don't forget to draw yourself! ... in many different formats.
if (global.juice1 == true){
	sprite_index = spr_player_juiced;
}

//draw_self();
//Draw the ship at the correct values. 
draw_sprite_ext(sprite_index, 0, x, y, tween_value, tween_value, image_angle, c_white, 1);

//Once the ship's size is changed, we have to make sure we reset it too
if (tween_value > 1){
	tween_value -= 0.1;
}