void gameover() {
  
  fill(0);
  textSize(180);
  text("You Died", width/2-325, height/2+50);
  
  
  

  
} 


void gameoverClicks(){
  if (mouseX > 0 && mouseX < width && mouseY > 0 && mouseY < height) {
   mode = INTRO; 
    
  }
  
  
}
