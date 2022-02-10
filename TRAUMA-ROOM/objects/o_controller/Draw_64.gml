// HUD

if (instance_exists(o_PlayerD) && (global.pdv == 3))
{
	draw_sprite(s_hud, 0, 50, 30)
} else if (instance_exists(o_PlayerD) && (global.pdv == 2))
{
	draw_sprite(s_hud, 1, 50, 30)
} else if (instance_exists(o_PlayerD) && (global.pdv == 1))
{
	draw_sprite(s_hud, 2, 50, 30)
}