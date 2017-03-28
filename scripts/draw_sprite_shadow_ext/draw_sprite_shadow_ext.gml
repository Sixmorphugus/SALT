///draw_sprite_shadow_ext(spriteindex,imageindex,x,y,xscale,yscale,angle,color,alpha)
// generates a single color image shaped like the input.

var l_sprite_index = argument[0];
var l_image_index = argument[1];
var l_x = argument[2];
var l_y = argument[3];
var l_image_xscale = argument[4];
var l_image_yscale = argument[5];
var l_direction = argument[6];
var l_color = argument[7];
var l_alpha = argument[8];

// set up the shadow shader
shader_set(shdr_shadow);
shader_set_uniform_f(ushadowcolor, color_get_red(l_color) / 255, color_get_green(l_color) / 255, color_get_blue(l_color) / 255, 1.0);

// draw the sprite
draw_sprite_ext(l_sprite_index, l_image_index, l_x, l_y, l_image_xscale, l_image_yscale, l_direction, c_white, l_alpha);

// drop the shader
shader_reset();