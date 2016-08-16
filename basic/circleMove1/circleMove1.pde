import gifAnimation.*;
GifMaker gifExport;

int x              = 0;
int y              = 0;
float randomFill   = 0;
float randomX      = 0;
float randomY      = 0;
float randomWidth  = 0;
float randomHeight = 0;
float size         = 0;
float dx = 0;
float velocity = 0.05;
float t;
int r;
 
void setup(){
  size(560, 300);
  ellipseMode(CENTER);
  frameRate(30);
  noStroke();
  background(0);
  fill(255, 0, 255);
  smooth();
  setRecAnimation();
}

void draw(){
  background(0);
  if (size <= 300) {
    size += 0.01;
  }
  for(int i = 0; i< 20; i++){
    ellipse(random(560), random(300), size * random(20), size * random(20));
    fill(random(255), random(255), random(255));
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
  
  
  