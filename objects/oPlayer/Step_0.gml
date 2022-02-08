keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));

if(room == rRoom)
{
	hsp = (keyRight - keyLeft) * walkSpeed;
	vsp += grav;
}

PlayerCollision();