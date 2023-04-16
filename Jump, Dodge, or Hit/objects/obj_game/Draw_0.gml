draw_set_font(Font1);

switch(room){
	case nivell_level1:
    draw_text(35, 10, "Best Time: " + string(score));
	
	draw_text(5, 350, "Move by pressing 'A' and 'D'" );
	var c = c_green;
	draw_text_transformed_color(5, 450, "And you better jump the green obstacles with 'W' or 'Space'",1,1,0,c,c,c,c,1);
	var c = c_blue;
	draw_text_transformed_color(5, 400, "Blue obstacles will slow you, dodge with 'S'",1,1,0,c,c,c,c,1);
	draw_text(620, 600, "Time starts ticking the moment you cross the line");
	draw_text_transformed(35, 750, "Don't fall down!!!", 1, 1, 20);
	draw_text(1700, 40, "GOAL");
	break;
	
	case nivell_main:
	
	var c = c_fuchsia;
	draw_text_transformed_color(room_width/5, 150, "Dodge, Jump or Hit",5,5,0,c,c,c,c,1);
	draw_text_transformed(room_width/5, 300, "Main Menu",4,4,0);
	
	break;
	
	case nivell_WinResults:
	
	var c = c_green;
	draw_text_transformed_color(room_width/5, 150, "",5,5,0,c,c,c,c,1);
	draw_text_transformed(room_width/5, 300, "Level completed!",4,4,0);
	draw_text(room_width/3+150, 540, "Your score was: "+string(score));
	
	break;
	
	case nivell_GameOver:
	
	var c = c_red;
	
	draw_text_transformed_color(room_width/5, 300, "Game Over",4,4,0,c,c,c,c,1);
		draw_text(room_width/3+150, 540, "Press 'Space' to retry");
	
	break;
	
		}

