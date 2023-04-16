/// @description hmm..
 



//Col·lisions horitzontals:
if (place_meeting(x + hsp,y,obj_terra)){
    while(!place_meeting(x+sign(hsp),y,obj_terra)) {
		x= x+sign(hsp);
	}
	hsp=0;
	}
	x = x + hsp;
//..............................................................................................................


//Per poder tenir el personatge afectat per la gravetat:
vsp = vsp + grv;


//Col·lisions verticals:
if (place_meeting(x,y+vsp,obj_terra)){
	 
    while(!place_meeting(x,y+sign(vsp),obj_terra)) {
		y = y + sign(vsp);
	}
	vsp=0;
	}
	y = y + vsp;


//..............................................................................................................
// Si es fa clic amb el ratolí, o es clica E el jugador fa un hit:

