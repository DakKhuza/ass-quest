/// @description ?
cam = view_camera[0];

follow = obj_b_player;

view_h_half = camera_get_view_height(cam) * 0.5;
view_w_half = camera_get_view_width(cam) * 0.5;

xTo = xstart;
yTo = ystart;

if(!layer_exists("GUI"))  layerid = layer_create(1,"GUI");