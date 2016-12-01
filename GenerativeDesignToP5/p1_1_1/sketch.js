var stepX = 0;
var stepY = 0;

function setup() {
  createCanvas(700, 700);
  background(0);
}


function draw() {
  colorMode(HSB, width, height, 100);
  rectMode(CENTER);
  
  stepX = mouseX +4;
  stepY = mouseY +4;
  
  for(var gridY = 0; gridY < height; gridY += stepY){
    for(var gridX = 0; gridX < width; gridX += stepX ){
      fill(gridX, height -gridY, 100);
      rect(gridX, gridY, stepX, stepY);
      noStroke();
    }
  }
}