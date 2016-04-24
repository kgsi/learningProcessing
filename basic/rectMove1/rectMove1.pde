import gifAnimation.*;
GifMaker gifExport;

int x            = 0;
float randomX      = 0;
float randomY      = 0;
float randomWidth  = 0;
float randomHeight = 0;
float dx = 0;
float velocity = 0.05;

void setup(){
  size(128, 128);
  frameRate(50);
  stroke(255);
  setRecAnimation();
}

void draw(){
  background(204);
  for(float i =0; i <10; i++){
      randomX = random(128);
      randomY = random(128);
      rect(randomX, randomY, 10, 10);
  }
  
  recAnimation();
}

void setRecAnimation(){
  gifExport = new GifMaker(this, "rectMove1.gif"); // 'box.gif'という名前でGIFアニメを作成
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
  
  
  