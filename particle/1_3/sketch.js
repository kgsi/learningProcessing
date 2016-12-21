var x = 0;
var y = 0;
var vx = 0;
var vy = 5;

function setup() {
  createCanvas(windowWidth, windowHeight); 
  background(100);  
} 

function draw() {
	background(100);
	ellipse(x, y, 20, 20);
	x += vx;
	y += vy;

  if(x > windowWidth - 20) {
    console.log('X軸最大');
    vx = -2;
  }

  if(x < 20) {
    console.log('X軸最小');
    vx = +2;
  }


	if(y > windowHeight - 20) {
    console.log('Y軸最大');
    vy = -5; 
    vx = -(Math.random() * 10);
  } 

  if(y < 20) {
    console.log('Y軸最小');
    vy = 5; 
    vx = +(Math.random() * 10);
  } 

}
