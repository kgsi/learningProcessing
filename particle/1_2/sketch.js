var y = 0;
var vx = 0;
var vy = 5;

function setup() {
  createCanvas(windowWidth, windowHeight); 
  background(100);  
} 

function draw() {
	background(100);
	ellipse(windowWidth/2, y, 20, 20);
	y += vy;

	if(y > windowHeight - 20) {
    console.log('STOP');
    vy = -5; 
  } 

  if(y < 20) {
    console.log('START');
    vy = 5; 
  } 

}
