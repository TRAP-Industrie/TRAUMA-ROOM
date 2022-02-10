if(global.power == true)
{
	global.power = false;
	if(global.DaronLife==0)
	{
		with(other)
		{
			instance_destroy();
			room_goto(rRoom);
		}
	}else
	{
		with(oDaron)
		{
			if(invulnarability == 120)
			{
				global.DaronLife -= 1;
				invulnarability -=1;
			}
		}
	}
}