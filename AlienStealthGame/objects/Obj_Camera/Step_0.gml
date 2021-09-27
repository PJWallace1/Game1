/// @description Update Camera

//Update Destination
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Position
x += (xTo - x) / 25; //25 allows smooth movement because camera 
y += (yTo - y) / 25; //will move 1/25 from current location to desired position.

x = clamp(x, 0 + view_w_half, room_width - view_w_half); //Keeps the camera view within the room
y = clamp(y, 0 + view_h_half, room_height - view_h_half);

//Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half); //Puts player is center of camera