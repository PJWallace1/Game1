/// @description Set Up Camera

cam = view_camera[0];
follow = Obj_Alien;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart; //The x direction the camera is moving to
yTo = ystart; //The y direction the camera is moving to