///draw_sprite_shadow_tiled(spriteindex,imageindex,x,y,col)
// generates a single color image shaped like the input, then tiles it.

var l_sprite_index = argument[0];
var l_image_index = argument[1];
var l_x = argument[2];
var l_y = argument[3];
var l_color = argument[4];

// set up the shadow shader
shader_set(shdr_shadow);
shader_set_uniform_f(ushadowcolor, color_get_red(l_color) / 255, color_get_green(l_color) / 255, color_get_blue(l_color) / 255, 1.0);

// draw the sprite
draw_sprite_tiled(l_sprite_index, l_image_index, l_x, l_y);

// drop the shader
shader_reset();