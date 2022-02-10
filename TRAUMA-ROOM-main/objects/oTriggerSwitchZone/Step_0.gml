if(instance_exists(oPlayer)&&position_meeting(x,y,oPlayer))
{
	if(instance_exists(oDaron))
	{
		instance_destroy(oDaron);
	}
	global.room_to = room_to;
	global.targetY = targetY;
	global.targetX = targetX;
	global.spawnX = targetX;
	global.spawnY = targetY;
	room_goto(room_to);
	oPlayer.x = targetX;
	oPlayer.y =targetY; 
}