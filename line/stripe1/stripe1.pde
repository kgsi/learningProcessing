import gifAnimation.*;
GifMaker gifExport;


void setup(){
  size(560, 300);
  ellipseMode(CENTER);
  frameRate(30);
  background(255);
  setRecAnimation();
}

void draw(){
	if(mouseMoved()){
	  strokeCap(SQUARE);
	  noFill();
	  smooth();
	  translate(width/2, height/2);
	  //background(255);

	  float circleResolution = (int)map(mouseY, 0, height, 2, 10);
	  float radius = mouseX-width/2 + 0.5;
	  float angle = TWO_PI / circleResolution;

	  strokeWeight(mouseY/20);
	  stroke(random(255),random(255), 25);

	  beginShape();
	  for(int i = 0; i < circleResolution; i++){
		  float x = cos(angle * i) * radius;
		  float y = sin(angle * i) * radius;
		 line(0, 0, x, y);
	  }
	  endShape();
	}



}

void setRecAnimation(){
  gifExport = new GifMaker(this, "dist.gif"); // 'box.gif'という名前でGIFアニメを作成
  gifExport.setRepeat(0); // エンドレス再生する
  gifExport.setQuality(10); // クオリティ(デフォルト10)
  gifExport.setDelay(20); // アニメーションの間隔を20ms(=50fps)に設定
}

void recAnimation(){
  gifExport.addFrame();
  if (frameCount >= 100) { // 100コマアニメーションした時
	gifExport.finish(); // GIFアニメの作成を終了
	exit();
  }
}
