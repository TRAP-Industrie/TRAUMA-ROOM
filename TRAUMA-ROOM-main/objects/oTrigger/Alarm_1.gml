var _spawn = irandom_range(1,5);
if(_spawn == 1)
{
	var _xspawn = 159+16
}if(_spawn == 2)
{
	var _xspawn = 191+16
}if(_spawn == 3)
{
	var _xspawn = 223+16
}if(_spawn == 4)
{
	var _xspawn = 255+16
}if(_spawn == 5)
{
	var _xspawn = 287+16
}
instance_create_layer(_xspawn,10,"Instances",oBoulesPapiers);
alarm[0] = 60;