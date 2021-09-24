if(point_in_circle(Obj_Alien.x, Obj_Alien.y, x, y, 128) && !instance_exists(Obj_Text)){
	with(instance_create_layer(x, y - 48, "Instances", Obj_Text)){
		text = other.text;
		length = string_length(text);
	}
	with(Obj_Camera){
		follow = other.id;
	}
}