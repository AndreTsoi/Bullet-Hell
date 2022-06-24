class explosion extends GameObject {

  explosion(float x, float y, float vx, float vy, float size) {
    super(x, y, vx, vy, size, red, 1);
  }
  
  
  void act() {
    super.act();
      
     size = size - 0.1; 
      if (size <= 0) {
        
       lives = 0; 
      }
    
    
    
    
    
     
   
   
    
    
  }
  
}
