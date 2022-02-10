if(global.power = false)
{
	if(oPlayer.x - x > 0)
	{
		hsp = 1;
	}else if(oPlayer.x - x < 0)
	{
		hsp = -1;
	}else
	{
		hsp = 0;
	}
	if(oPlayer.y - y > 0)
	{
		vsp = 1;
	}else if(oPlayer.y - y < 0)
	{
		vsp = -1;
	}else
	{
		vsp = 0;
	}
}else if(global.power == false)
{
	if(oPlayer.x - x > 0)
	{
		hsp = -1;
	}else if(oPlayer.x - x < 0)
	{
		hsp = 1;
	}else
	{
		hsp = 0;
	}
	if(oPlayer.y - y > 0)
	{
		vsp = -1;
	}else if(oPlayer.y - y < 0)
	{
		vsp = 1;
	}else
	{
		vsp = 0;
	}
}

EnnemyCollision();