
//inputs del jugador:
// Si D o A es clicat:

if (!affected){
k_left= keyboard_check(ord("A"));
k_right= keyboard_check(ord("D"));
} else if affected then {
k_left=0;
k_right=0;
}
 //La var pasa segueix la lògica del boleans sent considerats 1 per true i -1 per false, per tant 
//dona 1 si es clica "D", -1 si "A", i 0 si es cliquen a l'hora o cap.
 pasa = k_right - k_left;
 
//per moure's horitzontalment s'aplica la posició del chara:
hsp = pasa * walksp;


//Col·lisions horitzontals:
if (place_meeting(x + hsp,y,obj_terra)){
    while(!place_meeting(x+sign(hsp),y,obj_terra)) {
		x= x+sign(hsp);
	}
	hsp=0;
	}
	

	x = x + hsp;	
	
//..............................................................................................................

// Si W o L'espai es clicat:
 if(keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space)){
    k_jump=true;
	
}else{ 
    k_jump=false; }
	



//per poder saltar i tenir el personatge afectat per la gravetat:
vsp = vsp + grv;

//Saltar permís per només poder saltar estant en una superfície:

if (place_meeting(x,y+1,obj_terra)) and (k_jump) {
 vsp= -jumpsp;
}

//Col·lisions verticals:
if (place_meeting(x,y+vsp,obj_terra)){
	 
    while(!place_meeting(x,y+sign(vsp),obj_terra)) {
		y = y + sign(vsp);
	}
	vsp=0;
	}
	y = y + vsp;


//..............................................................................................................


//Si es prem S es fa dodge:

if(keyboard_check(ord("S"))){
    k_dodge=true;
	sprite_index = choose(spr_chara_dodge);
}else{ 
    k_dodge=false; 
	sprite_index = choose(spr_chara);
	}






// Si es fa clic amb el ratolí, o es clica E el jugador fa un hit:

