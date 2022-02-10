if(room == rJeuClasse)
{
	x = 287;
	y=2880;
	life = 3;
}else if(room == rRoom)
{
	x=320;
	y=224;
}if(room == rJeuDrogue)
{
	instance_create_layer(60,155,"Instances",o_PlayerD);
	instance_destroy();
}