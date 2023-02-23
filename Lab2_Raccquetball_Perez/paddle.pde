

void score() {
  fill(#FFFFFF); 
  textSize(20);
  text("Score:"+ bounce, width - 100, 20);
}

void restart() {
  if (keyPressed) {
    if (sRest == true) {
      pointX = random(width);
      pointY = 1;
      bounce = 0; 
      speedX = 5; 
      speedY = 6; 

      sRest = false;
    }
  }
}
