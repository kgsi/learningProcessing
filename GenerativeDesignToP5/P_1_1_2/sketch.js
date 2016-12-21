var segmentCount = 300;
var radius = 300;

function setup() {
  createCanvas(700, 700);
}


function draw() {

  noStroke();
  colorMode(HSB, 360, width, height);
  background(360);
  
  var angleStep = 360 / segmentCount;
  
  beginShape(TRIANGLE_FAN);
  vertex(width/2, height/2);
  
  for(var angle = 0; angle < 360; angle += angleStep ){
    var vx = width/2 + cos(radians(angle)) * radius;
    var vy = height/2 + sin(radians(angle)) * radius;
    vertex(vx, vy);
    fill(angle, mouseX, mouseY);
  }
  endShape();
}