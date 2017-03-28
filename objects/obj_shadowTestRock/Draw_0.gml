/// @description Draw self with the shadow shader

shader_set(shdr_shadow);
shader_set_uniform_f(ushadowcolor, color_get_red(shCol) / 255, color_get_green(shCol) / 255, color_get_blue(shCol) / 255, 1.0);

draw_self();

shader_reset();