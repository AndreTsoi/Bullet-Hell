void intro() {
  background(0);
  
  player1.lives = 3;
  player1.x = width/2;
  player1.y = height;
  
  
  
  

  
} 


void introClicks(){
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
    
   mode = GAME; 
  }
  
  
}
