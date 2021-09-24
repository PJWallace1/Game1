hsp = 0; //horizontal speed
vsp = 0; //vertical speed
grv = 0.15; //gravity
walksp = 4; //walk speed
hascontrol = true;
hp = 1;

instance_create_layer(x, y, "Player", Obj_Camera);
gunID = instance_create_layer(x, y, "Gun", Obj_Gun);

if(global.checkpointR == room){
	x = global.checkpointx;
	y = global.checkpointy;
}