/* testing
var _keyUp = max(keyboard_check(vk_up), keyboard_check(ord("W")));
var _keyDown = max(keyboard_check(vk_down), keyboard_check(ord("S")));
var _throttle = _keyUp - _keyDown;

if (_keyUp != 0 || _keyDown != 0) {
    motion_add(image_angle, 0.1 * _throttle);
}
else {
    motion_set(0, 0);
}

if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    image_angle += 4;
}
if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    image_angle -= 4;
}

move_wrap(true, true, 0);
*/

var _keyUp = max( keyboard_check(vk_up), keyboard_check(ord("W")));
var _keyDown = max( keyboard_check(vk_down), keyboard_check(ord("S")));
var _throttle = _keyUp - _keyDown

motion_add(image_angle, 0.1 * _throttle);

//if keyboard_check(vk_up) or keyboard_check(ord("W"))
//{
//	motion_add(image_angle, 0.1);
//}

//// lisätty peruutus, peruuttaako sukkulat? :o
//if keyboard_check(vk_down) or keyboard_check(ord("S"))
//{
//	motion_add(image_angle, -0.1);
//}

if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	image_angle += 4;
}
if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	image_angle -= 4;
}

move_wrap(true, true, 0);


// Bullet // lisää hiiren napautus kun UI toimii...
shoot_key = keyboard_check(ord(" "));


if (shoot_timer > 0) { 
	shoot_timer -= 1; 
};

if shoot_key and shoot_timer <= 0
{	
	weapon_4();
}

// Tarkista pommin räjäyttäminen
if (keyboard_check_pressed(ord("R"))) {
	
    // Tarkista, onko pelaajalla pommi
    if (obj_player.has_bomb == true) {
		
		global.bomb_exists = false;
		
		bomb_creation();
		
        // Räjäytä pommi ja tuhoa kaikki kivet ruudulla
		show_debug_message("pommi ja kiviä?")
		
        with (obj_rock) {
		    event_user(0);
		};
        
        has_bomb = false; // Pelaajalla ei ole enää pommia
		sprite_index = spr_player;
    }
}
