///@description Movement and Bullets








// warp around the room
move_wrap(true, true, sprite_width / 2);






// shoots bullets
//if (keyboard_check_pressed(vk_space))
//{
//var inst = instance_create_layer(x, y, "Instances", obj_bullet);
//inst.direction = image_angle;
//}


// variables for movement
A = keyboard_check(ord("A"))
D = keyboard_check(ord("D"))
W = keyboard_check(ord("W"))

if keyboard_check(D){
	x = x + 4
}
if keyboard_check(A){
	x = x - 4
}





//base vspeed
if vspeed < 4 {vspeed += 1}
//walking
if keyboard_check(D){
	x = x + 0.5
}
if keyboard_check(A){
	x = x - 0.5
}


//collision + gravity 
if !place_empty(x, y+vspeed)
{
move_contact_solid(direction, 5);
vspeed = 0;
}

if !place_empty(x+hspeed, y)
{
move_contact_solid(direction, 5);
hspeed = 0;
}

//jumping
if keyboard_check_pressed(W) and !place_empty(x,y+1)
{
vspeed = -16;
}










