with(other){
	with(instance_create_layer(x, y + 16, "Bullets", Obj_Enemy_Bullet)){
		speed = 25;
		direction = other.direction;
	} 
	with(instance_create_layer(x, y - 16, "Bullets", Obj_Enemy_Bullet)){
		speed = 25;
		direction = other.direction;
	}
}