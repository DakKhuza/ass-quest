



key_right = scr_input_const("D",vk_right);
key_left = scr_input_const("A",vk_left);
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;
if(place_meeting(x,y,obj_wall)) hp--;

if(place_meeting(x+hsp,y,obj_liver_acid)) {
	while(!place_meeting(x+sign(hsp),y,obj_liver_acid)) {
		x = x + sign(hsp);
		hp = 0;
	}
	//hsp = 0;
}

if(place_meeting(x,y+vsp,obj_liver_acid)) {
	while(!place_meeting(x,y+sign(vsp),obj_liver_acid)) {
		y = y + sign(vsp);
		hp = 0;
	}
	//vsp = 0;

}
if(scr_input_const(vk_space)) && place_meeting(x,y+1,obj_wall) {
    vsp = -7;
}
if(place_meeting(x+hsp,y,obj_wall)) {
    while(!place_meeting(x+sign(hsp),y,obj_wall)) {
        x = x + sign(hsp);
    }
    hsp = 0;
}
x = x + hsp;
if(place_meeting(x,y+vsp,obj_wall)) {
    while(!place_meeting(x,y+sign(vsp),obj_wall)) {
        y = y + sign(vsp);
        
    }
    vsp = 0;
}
y = y + vsp;
    
if(hsp != 0) image_xscale = sign(hsp);
#region Animation
if(hsp != 0) {
    image_speed = 1;
} else {
    image_speed = 0;
}
#endregion
