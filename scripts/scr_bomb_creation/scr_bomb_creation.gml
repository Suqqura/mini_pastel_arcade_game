function bomb_creation() {
//// BOMB
	var _create_bomb = function() {

		if (global.bomb_exists) {

			return;
		}
	
		// where bomb is generated
		var _center_x = room_width / 2;
		var _center_y = room_height / 2;

		var _radius = room_width * 0.25;
		var _angle = random(360);

		var _x = _center_x + lengthdir_x(_radius, _angle);
		var _y = _center_y + lengthdir_y(_radius, _angle);

		// Create obj_bomb
		instance_create_layer(_x, _y, "Instances", obj_bomb);
		global.bomb_exists = true;
	
};

	var _time_bomb = random_range(10, 15);
	var _bomb_loop = call_later(_time_bomb, time_source_units_seconds, _create_bomb);
	
}
