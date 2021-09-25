
if(doesRotate){
	if(image_angle > 75 || image_angle < -75){
	rotateRight = !rotateRight;
	}
	if(rotateRight){
		image_angle -= 0.5;
	}else{
		image_angle += 0.5;
	}
}
