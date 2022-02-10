if(room == rJeuClasse)
{
	x = 287;
	y=2880;
	life = 3;
}else if(room == rRoom)
{
	x=352;
	y=222;
}if(room == rJeuDrogue)
{
	instance_create_layer(60,155,"Instances",o_PlayerD);
	instance_destroy();
}