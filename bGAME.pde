void game() {
  
 
    
  fill(black, 100);
  rect(0, 0 , width, height);
  addObjects();
  gameEngine();
  fill(255);
  textSize(15);
  debug();
  
 
player1.show();
player1.act();
  
  //lose
  if (player1.lives <= 0) {
   mode = GAMEOVER; 
  }
  
  
} 


void addObjects() {
  objects.add(0, new Star());
  
  if (frameCount % 30 == 0) objects.add(new Enemy());
  

  
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject s = objects.get(i);
    s.act();
    s.show();

    if (s.lives <= 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  
}


void debug() {
  text(frameRate, 20, 20);
  text(objects.size(), 20, 40);
  
}


void gameClicks() {
}
