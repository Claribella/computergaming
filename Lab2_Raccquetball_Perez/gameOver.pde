void gameOver(){
//Game over + restart 
if (pointY > height) { 
 fill(random(255),random(255),random(255)); // randomizes letter colors 
  textAlign(CENTER);
  textSize(width/10);
  text("Game Over", width/2, height/2);// size changes according to width/ height of screen 
  fill(#FFFFFF);
  textSize(width/40);
  text("Press Any Key To Start Over", width/2, height/2 + 40); // centers the words under 
  
  
  sRest = true; 
 // pointX = random(1, width - 2); 
}
}
