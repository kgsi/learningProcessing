import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import gifAnimation.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class grid1 extends PApplet {


GifMaker gifExport;


public void setup(){
  
  ellipseMode(CENTER);
  frameRate(30);
  background(255);
  setRecAnimation();
}

public void draw(){

	int tileCount = 20;
	strokeCap(ROUND);

	for(int gridY = 0; gridY < tileCount; gridY++){
		for(int gridX = 0; gridX < tileCount; gridX++){

			int posX = width/tileCount*gridX;
			int posY = height/tileCount*gridY;

			int toggle = (int) random(0,2);

			if(toggle == 0) {
				strokeWeight(mouseX/20);
				line(posX, posY, posX + width/tileCount, posY + height/tileCount);
			};

			if(toggle == 1) {
				strokeWeight(mouseY/20);
				line(posX, posY + height/tileCount, posX + width/tileCount, posY);
			};

		}
	}

	// for(int gridY = 0; gridY < tileCount; gridY++){
	// 	for(int gridX = 0; gridX < tileCount; gridX++){
	// 		int posX = 560 / gridX * tileCount;
	// 		int posY = 300 / gridY * tileCount;
	// 		// line(posX, posY, 10, 10);
	// 	}
	// }


}

public void setRecAnimation(){
  gifExport = new GifMaker(this, "dist.gif"); // 'box.gif'\u3068\u3044\u3046\u540d\u524d\u3067GIF\u30a2\u30cb\u30e1\u3092\u4f5c\u6210
  gifExport.setRepeat(0); // \u30a8\u30f3\u30c9\u30ec\u30b9\u518d\u751f\u3059\u308b
  gifExport.setQuality(10); // \u30af\u30aa\u30ea\u30c6\u30a3(\u30c7\u30d5\u30a9\u30eb\u30c810)
  gifExport.setDelay(20); // \u30a2\u30cb\u30e1\u30fc\u30b7\u30e7\u30f3\u306e\u9593\u9694\u309220ms(=50fps)\u306b\u8a2d\u5b9a
}

public void recAnimation(){
  gifExport.addFrame();
  if (frameCount >= 100) { // 100\u30b3\u30de\u30a2\u30cb\u30e1\u30fc\u30b7\u30e7\u30f3\u3057\u305f\u6642
	gifExport.finish(); // GIF\u30a2\u30cb\u30e1\u306e\u4f5c\u6210\u3092\u7d42\u4e86
	exit();
  }
}
  public void settings() {  size(560, 300); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "grid1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
