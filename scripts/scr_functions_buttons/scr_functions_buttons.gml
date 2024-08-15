
global.paused = false;

function game_pause() {
	
	if (!global.paused) {
		
		obj_player.speed = 0;
		if instance_exists(obj_bullet) {
			obj_bullet.speed = 0; }
		global.paused = true;
		
		layer_sequence_headdir(obj_UI.seq_pause, seqdir_right);
		layer_sequence_play(obj_UI.seq_pause);
	}
}

function game_resume() {
	
	if (global.paused) {
		
		obj_bullet.speed = 5;
		obj_player.speed = 5;
		global.paused = false;
		
		layer_sequence_headdir(obj_UI.seq_pause, seqdir_left);
		layer_sequence_play(obj_UI.seq_pause);
		
	}
}
