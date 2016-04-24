void setup(){
  size(100, 100);
  noStroke();
}

void draw(){
  background(166);
  if(mousePressed == true){
    rect(width/2 - 25, height/2 - 25, 50, 50);
    fill(10);
  }
}