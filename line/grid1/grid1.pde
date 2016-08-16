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
