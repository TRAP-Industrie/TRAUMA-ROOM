// Hit

draw_self();

if(obj_Alpha > 0) {
	shader_set(sh_hit)
	draw_sprite_ext(sprite_index, image_index,x ,y, image_xscale, image_yscale, image_angle, obj_Color, obj_Alpha)
	shader_reset()
}