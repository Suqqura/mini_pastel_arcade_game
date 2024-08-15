effect_create_above(ef_firework, x, y, 1, c_white);

instance_destroy(); // kannattaisi olla aina viimeisenä
audio_play_sound(explosionCrunch_000, 0, false);

obj_game.alarm[0] = 120;
