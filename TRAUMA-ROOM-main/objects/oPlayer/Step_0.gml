#region player controls

if(room == rRoom)
{
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
}else if(room == rJeuClasse)
{
	keyRight = keyboard_check_pressed(vk_right) || keyboard_check(ord("D"));
	keyLeft = keyboard_check_pressed(vk_left) || keyboard_check(ord("A"));
}else if(room == rJeuPacMan1 || room == rJeuPacMan2 || room == rJeuPacMan3 || room == rJeuPacMan4)
{
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
	keyUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
	keyDown = keyboard_check(vk_down) || keyboard_check(ord("S"));

	inputDirection = point_direction(0,0,keyRight-keyLeft, keyDown - keyUp);
	inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0);
}

#endregion

#region player's mouvements

if(room == rRoom)
{
	hsp = (keyRight - keyLeft) * walkSpeed;
	vsp += grav;
}else if(room == rJeuClasse)
{
	vsp = -1.25;
	hsp = (keyRight - keyLeft) * 32;
}else if(room == rJeuPacMan1 || room == rJeuPacMan2 || room == rJeuPacMan3 || room == rJeuPacMan4)
{
	hsp = lengthdir_x(inputMagnitude*walkSpeed,inputDirection);
	vsp = lengthdir_y(inputMagnitude*walkSpeed,inputDirection);
}

#endregion

#region player's animations

if(hsp != 0) image_xscale = -sign(hsp) ;
if(room == rRoom)
{
	if(hsp != 0)
	{
		sprite_index = sPlayerWalk;
	}else
	{
		sprite_index = sPlayer;
	}
}

#endregion

PlayerCollision();