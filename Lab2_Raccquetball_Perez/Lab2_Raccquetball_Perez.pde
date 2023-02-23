// Start by declaring the variables 

int c = 20; // size of circle
int recX = 100; // width of rect (paddle) 
int recY = 20; // height of rect (paddle) 
int posR; // declaring the position of rectangle 

float pointX = 1;  // x value of ball - tells us where the ball is at on the X- Axis
int pointY = 1; // y value of ball - tells us where the ball is at in respect to the Y - Axis

float speedX = 5; // initial speed of the ball going horizontally 
int speedY = 6; // initial speed of the ball going vertically

// get ball random direction? 


float pX = 0.0;  
float pY = 0.0;
int speed_pX = mouseX;
int speed_pY = mouseY;


int bounce = 0; // starting value of # of bouncing 
boolean sRest = false; 

void  setup() {
  size(700, 600);
  posR = height - 30;
}


void draw() { //paddle

  if (!mousePressed){
    background(#0A0A0A);


}
 
  stroke(1);
  fill(255);
  rectMode(CENTER);
  rect(constrain(mouseX, recX/2, width - recX/2), posR, recX, recY);// variables for width and height make it easier to change

  drawCircle();
  score();
  restart();
  gameOver(); 
 

  if (pointX >= width  || pointX <= 0) {
    speedX =- speedX;
  }
  if (pointY + c/2 <= posR + recY/2 && pointY + c/2 >= posR - recY/2 &&
  pointX + c/2 <= mouseX + recX/2 && pointX + c/2>= mouseX - recX/2) { //constraining in the Y and the X axis
    speedX += 1;
    speedY += 1;

    speedY = speedY*-1;
    bounce += 1;
  }
  if (pointY <= 0) {
    speedY =- speedY;
  }
}


void drawCircle() {
  //background(0);
  stroke(1);
  fill(random(255), random(255), random(255));
  ellipse(pointX, pointY, 20, c);
  pointX = pointX + speedX;
  pointY = pointY + speedY;
  
}
