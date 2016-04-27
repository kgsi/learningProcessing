import gifAnimation.*;
GifMaker gifExport;

float x              = 0;
float y              = 0;
float randomFill   = 0;
float randomX      = 0;
float randomY      = 0;
float randomWidth  = 0;
float randomHeight = 0;
float size         = 0;
float radius       = 100;
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
  r+= 10;
  radius += 0.5;
  float rad = radians(r);
  x = (width / 2) + (radius * cos(rad) -1);
  y = (height / 2) + (radius * sin(rad));
  point(x, y);
  stroke(153);
  recAnimation();
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
  
  
  