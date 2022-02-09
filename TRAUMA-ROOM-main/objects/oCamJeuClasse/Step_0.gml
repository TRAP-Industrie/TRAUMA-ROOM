if(instance_exists(follow))
{
	yTo = follow.y - 110;
}

y+=(yTo - y)/35;

x = clamp(x,cam_half_w,room_width-cam_half_w);
y = clamp(y,cam_half_h,room_height-cam_half_h);


camera_set_view_pos(cam,x-cam_half_w,y-cam_half_h); 