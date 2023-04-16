/// @description hmm...








//Si el jugador el salta:

// This condition checks if the player's vertical velocity is greater than 0, meaning it's falling down.
if (vsp > 0)
{
	// This checks if the bottom point of the player's collision mask was above the enemy mask's top
	// point, in the previous frame.
	// If this is true, it proves that the player is falling on top of the enemy from above, as it was
	// previously above it.
	// We get the bottom position for the previous frame by subtracting this frame's Y velocity from it.
	if ((bbox_bottom - vsp) < (other.bbox_top - other.vsp))
	{
		// Set the HP of the 'other' instance (which is the enemy) to 0, so that it's defeated.
		other.hp = 0;
		//Després de colisionar es destruït
		if (other.hp = 0){
		instance_destroy(other);}
	
		// Set the vertical velocity of the player to -jump_speed so it bounces off the enemy.
		vsp = -jumpsp *0.5;
	
		// Change the sprite to spr_player_jump as the player is now jumping (and not falling anymore).
		
	
		// The animation speed at this point would be 0 if the fall animation had finished, so we reset
		// it to 1 so the jump animation can play.
	//	image_speed = 1;
	
		// This creates an instance of obj_effect_jump at the bottom of the player's mask. This is the
		// jump VFX animation.
	//	instance_create_layer(x, bbox_bottom, "Instances", obj_effect_jump);
	
		// Play the enemy hit sound effect
	//	audio_play_sound(snd_enemy_hit, 0, 0);
		
		// Play the jump sound with a random pitch
	//	var _sound = audio_play_sound(snd_jump, 0, 0);
	//	audio_sound_pitch(_sound, random_range(0.8, 1));
	
		// Finally, exit the event so the rest of the actions don't run (they make the player hurt)
		exit;
	}

	
}else if ((bbox_right -hsp) < (other.bbox_left - other.hsp)) {
//Si fa knockback al jugador:
alarm[1] = 60;
affected = true; 
move_towards_point( x-6, y-6, 9 );
other.hp = 0;

//Després de colisionar es destruït
if (other.hp = 0){
instance_destroy(other);}
}else {
//Si fa knockback al jugador:
alarm[1] = 60;
affected = true; 
move_towards_point( x-6, y-6, 9 );
other.hp = 0;

//Després de colisionar es destruït
if (other.hp = 0){
instance_destroy(other);}
}





