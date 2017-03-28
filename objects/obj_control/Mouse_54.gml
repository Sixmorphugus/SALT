var obj = obj_head;

if(random_range(0, 2) > 1) {
	obj = obj_rock;
}

instance_create_layer(mouse_x,mouse_y,layer,obj)

