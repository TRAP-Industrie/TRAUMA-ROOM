// Déplacements

if keyboard_check(vk_up) and (y > 60) || keyboard_check(ord("W")) and (y > 60)
{
	y-=4
}

if keyboard_check(vk_down) and (y < room_height - 60) || keyboard_check(ord("S")) and (y < room_height - 90)
{
	y+=4
}

if keyboard_check(vk_right) and (x < room_width - 150)|| keyboard_check(ord("D")) and (x < room_width - 150)
{
	x+=4
}

if keyboard_check(vk_left) and (x > 60) || keyboard_check(ord("A")) and (x > 60)
{
	x-=4
}

// Tir laser

if (keyboard_check(vk_space))
{
	if (is_firing == false)
	{
		is_firing = true;
		alarm_set(0, frequency);
		instance_create_layer(x,y, "Instances", o_shootD);
	}
}


// Hit

if(obj_Alpha > 0) {
	obj_Alpha -= 0.03
}

if (hp <= 0) {
	instance_destroy()
}