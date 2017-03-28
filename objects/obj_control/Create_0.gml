///Setup
randomize()
l = 0;//Variable for the placement light id
lights_init()//Setup for required variables
lights_set_ambiance(make_colour_rgb(1,1,1))//Set ambiance color

application_surface_draw_enable(false); // the application_surface is now the diffuse surface

camera = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, -1, -1, -1, 32, 32);
view_set_camera(0, camera);

s = 10;

si = 40;
csi = si;