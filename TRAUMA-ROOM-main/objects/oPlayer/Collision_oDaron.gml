if(global.power == true)
{
	with(other)
	{
		instance_destroy();
		room_goto(rRoom);
	}
}