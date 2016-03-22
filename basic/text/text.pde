String letters = "";

void setup(){
	size(512, 512);
	stroke(255);
	fill(0);
	textSize(20);
}

void draw(){
	background(204);
	float cousorPositon = textWidth(letters);
	line(cousorPositon, 0, cousorPositon, 100);
	text(letters, 0, 50);
}

void KeyPressed(){
	letters = letters + key;
	// if(key == BACKSPACE){
	// 	if(letters.length() > 0){
	// 		letters = letters.substring(0, letters.length() - 1);
	// 	}
	// } else if(textWidth(letters+key) < width){
	// 	letters  = letters + key;
	// 	println(width);
	// }
}
