// Destroy

if (hp <= 0)
{
	instance_destroy();	
}

if (x <= 30)
{
	instance_destroy();	
}

// Tir

if (is_firing == false)
{
		is_firing = true;
		alarm_set(0, frequency);
		instance_create_layer(x,y, "Instances_enemies", o_shootD1);
}

// Hit

if(obj_Alpha > 0) {
	obj_Alpha -= 0.03
}