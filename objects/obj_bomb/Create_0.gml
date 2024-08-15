destroy_bomb = function() {
	
	global.bomb_exists = false;
	bomb_creation();
	instance_destroy(obj_bomb);
}
	
var _bomb_vanish = call_later(5, time_source_units_seconds, destroy_bomb)
