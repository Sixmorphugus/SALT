///draw_sprite_tiled_lit(spriteindex,imageindex,x,y)

// Draws a sprite onto the light map

var l_sprite_index = argument[0];
var l_image_index = argument[1];
var l_x = argument[2];
var l_y = argument[3];

var spriteName = sprite_get_name(l_sprite_index);
var normalMapFound = asset_get_index(spriteName + "_N");
var specularMapFound = asset_get_index(spriteName + "_S");

var screenX = l_x - camera_get_view_x(camera_get_active());
var screenY = l_y - camera_get_view_y(camera_get_active());

// draw the normal sprite
lights_normal(1, 0);
if(sprite_exists(normalMapFound)) {
	draw_sprite_tiled(normalMapFound, l_image_index, screenX, screenY);
}
else {
	draw_sprite_shadow_tiled(l_sprite_index, 0, screenX, screenY, make_color_rgb(128, 128, 255));
}
lights_normal(0, 0);

// draw the specular sprite
lights_specular(1);
var spec = l_sprite_index;
if(sprite_exists(specularMapFound)) {
	spec = specularMapFound;
}
draw_sprite_tiled(spec, l_image_index, screenX, screenY);
lights_specular(0);

// draw the deffuse sprite
draw_sprite_tiled(l_sprite_index, l_image_index, l_x, l_y);

// done!