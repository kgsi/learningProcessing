import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class text extends PApplet {

String letters = "";

public void setup(){
	
	stroke(255);
	fill(0);
	textSize(20);
}

public void draw(){
	background(204);
	// float cousorPositon = textWidth(letters);
	// line(cousorPositon, 0, cousorPositon, 100);
	if(KeyPressed == true) x++;
	// text(letters, 0, 50);
	line(x, 20, x-20, 80);
}

public void KeyPressed(){
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
  public void settings() { 	size(512, 512); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "text" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
