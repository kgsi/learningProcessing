function setup() {
  createCanvas(700, 700);
}


function draw() {
  colorMode(HSB, 360, 100, 100);
  background(mouseY/2, 100, 100);
  noStroke();

  rectMode(CENTER);
  rect(350, 350, mouseX + 1, mouseX + 1);
  fill(360 - mouseY/2, 100, 100);
}