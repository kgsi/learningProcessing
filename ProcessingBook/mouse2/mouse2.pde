void setup(){
  size(100, 100);
  noStroke();
}

void draw(){
  background(166);
  if(mouseX < 50){
    rect(0,0, 50, 100);
  }else {
    rect(50,0, 50, 100);
  }
}