void setup(){
  size(100, 100);
  noStroke();
}

void draw(){
  background(166);
  ellipse(mouseX, mouseY, 10, 10);
  ellipse(mouseX + 10, mouseY + 10, 10, 10);
}