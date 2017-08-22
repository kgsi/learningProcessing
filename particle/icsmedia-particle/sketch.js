
var canvasWidth = 720;
var canvasHeight = 480;
var particleSize = 10;
var vx = 0;
var vy = 0;
var canvas = '';

function setup() {
  canvas = createCanvas(canvasWidth, canvasHeight);
  canvas.parent('wrap');
    
  noStroke();
  fill(0);
  ellipse(10, 10, particleSize, particleSize);
}

function draw() {
  var particleList = [{x:0,y:0}];
  clear();
  // background('rgba(255,255,255, 0.1)');
  
  for (var i = 0; i < 20; i++) {
    var obj = {x: canvasWidth * Math.random() ,y: canvasWidth * Math.random()};
    
    particleList.push(obj)
    ellipse(particleList[i].x, particleList[i].y, particleSize, particleSize);
    
    // 配列に保存
    particleList[i].x = canvasWidth + Math.random();
    particleList[i].y = canvasWidth + Math.random();
    console.log(particleList[i].x)
  } 
}