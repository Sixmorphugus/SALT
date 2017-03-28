///Add texture
image_angle += spd;

//Add diffuse texture to the diffuse map
draw_sprite_lit_ext(spr_head,0,x,y,1,1,image_angle,-1,1);

/*
//Add normal texture to the normal map
lights_normal(1,image_angle)//Rotated to image_angle
draw_sprite_ext(spr_rock,1,x,y,1,1,image_angle,-1,1)
lights_normal(0,0)

//Add specular texture to the specular map
lights_specular(1)
draw_sprite_ext(spr_rock,2,x,y,1,1,image_angle,-1,1)
lights_specular(0)
*/