speed = 10;
if (instance_exists(obj_player)) {
	direction = obj_player.image_angle;
}

if (timer_function != -1) {

	timer_function(timer_frames);
}
