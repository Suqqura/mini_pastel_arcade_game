// Bullet 
shoot_timer = 0;
shoot_cooldown = 10;
has_bomb = false;

// ase 1. yksinkertainen ase joka ampuu lyhyin välein luodin
weapon_1 = function() {
	
	shoot_timer = shoot_cooldown;

	instance_create_layer(x, y, "Instances", obj_bullet);
	
	// lisätty ääni
	audio_play_sound(laserRetro_000, 0, false, 1, 0, random_range(0.8, 1.2))
}

// ase 2. Ampuu harvoin
weapon_2 = function() {
	
	shoot_timer = shoot_cooldown*3;

	instance_create_layer(x, y, "Instances", obj_bullet);
	
	// lisätty ääni
	audio_play_sound(laserRetro_000, 0, false, 1, 0, random_range(0.8, 1.2))
}

// ase 3. viuhkamainen ase, 3 luotia. ampuu tällä nyt yhtä usein kuin aikaisemmat
weapon_3 = function() {
	
	shoot_timer = shoot_cooldown;
	
	var _angle1 = image_angle - 30;
	var _angle2 = image_angle;		// suoraan
	var _angle3 = image_angle + 30;	
	

	instance_create_layer(x, y, "Instances", obj_bullet).direction = _angle1;
	instance_create_layer(x, y, "Instances", obj_bullet).direction = _angle2;
	instance_create_layer(x, y, "Instances", obj_bullet).direction = _angle3;
	
	// lisätty ääni
	audio_play_sound(laserRetro_000, 0, false, 1, 0, random_range(0.8, 1.2))
}

// ase 4. ampuu luodin joka räjähtää 3-5 luotiin lyhyen matkan kuluttua. Uudet
weapon_4 = function() {
	
	shoot_timer = shoot_cooldown*3;
	
	// Iiron tekemä osio
	
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet, {
		
		timer_frames : 15,
		timer_function : function(_time){
			
			var _callback = function()
			{ 
				repeat (irandom_range(3,5)) {
				    instance_create_layer(x, y, "Instances", obj_bullet).direction = direction + irandom_range(-30, 30)
				}
				
				effect_create_above(ef_star, x, y, 0, c_white)
				
				instance_destroy()
			}

			call_later(_time, time_source_units_frames, _callback);
		}
	});
	
	// Iiro loppuu.

	// lisätty ääni
	audio_play_sound(laserRetro_000, 0, false, 1, 0, random_range(0.8, 1.2))
	audio_play_sound(laserRetro_000, 0, false, 1, 0, random_range(0.6, 1.4))		
	
	//var _callback = function()
	//{
	//	if instance_exists(obj_bullet) {
	//		instance_destroy(obj_bullet.id, true);	
	//	}
	//}

	//var _handle call_later(60, time_source_units_frames, _callback);
		
}
