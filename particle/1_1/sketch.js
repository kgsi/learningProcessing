var vx = 0;
var vy = 0;
var y = 0;

function setup() {
  createCanvas(windowWidth, windowHeight); 
  background(100);  
} 

function draw() {
	y = vy;
	background(100);
	ellipse(windowWidth/2, y, 20, 20);

	if(y > windowHeight - 60) {
    console.log('STOP');
  }else {
	vy += 10; 
  }
    
}