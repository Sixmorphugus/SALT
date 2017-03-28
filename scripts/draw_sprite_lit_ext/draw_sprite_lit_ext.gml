///draw_sprite_lit_ext(spriteindex,imageindex,x,y,xscale,yscale,angle,color,alpha)

// Draws a sprite onto the light map

var l_sprite_index = argument[0];
var l_image_index = argument[1];
var l_x = argument[2];
var l_y = argument[3];
var l_image_xscale = argument[4];
var l_image_yscale = argument[5];
var l_direction = argument[6];
var l_color = argument[7];
var l_alpha = argument[8];

var spriteName = sprite_get_name(l_sprite_index);
var normalMapFound = asset_get_index(spriteName + "_N");
var specularMapFound = asset_get_index(spriteName + "_S");

var screenX = l_x - camera_get_view_x(camera_get_active());
var screenY = l_y - camera_get_view_y(camera_get_active());

// draw the normal sprite
lights_normal(1, l_direction);
if(sprite_exists(normalMapFound)) {
	draw_sprite_ext(normalMapFound, l_image_index, screenX, screenY, l_image_xscale, l_image_yscale, l_direction, l_color, l_alpha);
}
else {
	draw_sprite_shadow_ext(l_sprite_index, l_image_index, screenX, screenY, l_image_xscale, l_image_yscale, l_direction, make_color_rgb(128, 128, 255), l_alpha);
}
lights_normal(0, 0);

// draw the specular sprite
lights_specular(1);
var spec = l_sprite_index;
if(sprite_exists(specularMapFound)) {
	spec = specularMapFound;
}
draw_sprite_ext(spec, l_image_index, screenX, screenY, l_image_xscale, l_image_yscale, l_direction, l_color, l_alpha);
lights_specular(0);

// draw the deffuse sprite
draw_sprite_ext(l_sprite_index, l_image_index, l_x, l_y, l_image_xscale, l_image_yscale, l_direction, l_color, l_alpha);

// done!