// muutettu pisteet 50 -> 1. 
event_user(0);

/*
obj_game.points += 1;

instance_destroy(other);
show_debug_message($"rock destroied {id}")
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	instance_copy(true);
	audio_play_sound(lowFrequency_explosion_001, 0, false);
}
else  if instance_number(obj_rock) < 12
{
	sprite_index = spr_rock_big;
	x = -100;
}
else
{
	instance_destroy();
}
