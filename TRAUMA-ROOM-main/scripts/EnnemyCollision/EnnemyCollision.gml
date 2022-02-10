// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function EnnemyCollision(){
	
	if(global.power == false)
	{
		#region horizontal collisions
		if(place_meeting(x+hsp,y,oWall))
		{
			while(!place_meeting(x+sign(hsp),y,oWall))
			{
				x += sign(hsp);
			}
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
		}else
		{
			x += hsp;
		}
	
	#endregion

		#region vertical collisions

		if(place_meeting(x,y+vsp,oWall))
		{
			while(!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
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
		}else
		{
			y += vsp;
		} 
	
		#endregion
	
	}else if(global.power == true)
	{
		if(place_meeting(x+hsp,y,oWall))
		{
			while(!place_meeting(x+sign(hsp),y,oWall))
			{
				x += sign(hsp);
			}
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
		}else
		{
			x += hsp;
		}

	#region vertical collisions

		if(place_meeting(x,y+vsp,oWall))
		{
			while(!place_meeting(x,y+sign(vsp),oWall))
			{
				y = y + sign(vsp);
			}
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
		}else
		{
			y += vsp;
		} 
	
	#endregion
	}
	
}