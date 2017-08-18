
var n = 0;
var timeOffset = 0;
var stageWidth = 400;
var stageHeight = 400;

function setup() {
  createCanvas(stageWidth, stageHeight);
  n = 4;
  timeOffset = 0;
  frameRate(30)
  noFill();
}

function draw() {

  translate(0, stageHeight / 2);
  background(255)

  beginShape();
  curveVertex( -100, 0 );
  
    for (var i = 0; i <= n; i++){
      var xx = i * stageWidth / n;
      var yy = noise( i * 0.5, timeOffset ) * stageWidth - 200;
      curveVertex( xx, yy );
      console.log(xx + ','+yy);
    }
    curveVertex(stageWidth+100, 0);
    endShape(CLOSE);
    timeOffset+=0.009;

  
}