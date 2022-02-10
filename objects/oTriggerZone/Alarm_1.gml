var _spawn = irandom_range(1,5);
if(_spawn == 1)
{
	var _xspawn = 192+8;
}if(_spawn == 2)
{
	var _xspawn = 224+8;
}if(_spawn == 3)
{
	var _xspawn = 256+8;
}if(_spawn == 4)
{
	var _xspawn = 288+8;
}if(_spawn == 5)
{
	var _xspawn = 320+8;
}
instance_create_layer(_xspawn,10,"Instances",oBoulesPapiers);
alarm[0] = 60; 