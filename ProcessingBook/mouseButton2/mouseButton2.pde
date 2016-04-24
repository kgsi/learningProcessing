void setup(){
  size(100, 100);
  noStroke();
}

void draw(){
  background(166);
  if(mouseButton == LEFT){
    fill(10);
  }
  if(mouseButton == RIGHT){
    fill(50);
  }
  rect(width/2 - 25, height/2 - 25, 50, 50);
}