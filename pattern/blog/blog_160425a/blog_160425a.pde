void setup(){
  size(257, 257);
  background(255);
  for(int x = 8; x <= width+8; x+=8){
    for(int y = 8; y <= height+8; y += 8){
     point(x, y);
    }
  }

  save("pattern.png");
}

//void draw(){
//  for(int x = 0; x < width; x+=10){
//    for(int y = 0; y< height; y += 10){
//     point(x, y);
//    }
//  }
//}