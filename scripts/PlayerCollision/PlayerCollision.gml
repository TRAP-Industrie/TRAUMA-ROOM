// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function PlayerCollision(){
	
	#region horizontal collisions
	
		if(place_meeting(x+hsp,y,oWall))
		{
			while(!place_meeting(x+sign(hsp),y,oWall))
			{
				x += sign(hsp);
			}
			hsp = 0;
		}else
		{
			x += hsp;
		}
	
	#endregion

	if(place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}else
	{
		y += vsp;
	} 
}