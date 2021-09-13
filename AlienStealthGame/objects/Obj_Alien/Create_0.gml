hsp = 0; //horizontal speed
vsp = 0; //vertical speed
grv = 0.15; //gravity
walksp = 4; //walk speed

instance_create_layer(x, y, "Player", Obj_Camera);
instance_create_layer(x, y, "Gun", Obj_Gun);