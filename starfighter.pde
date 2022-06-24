class Starfighter extends GameObject {

  int cooldown, threshold;



  Starfighter() {
    super(width/2, height/2, 0, 0, 150, transparent, 3);
    threshold = -1;
    cooldown = threshold;
  }

  
  void act() {
    super.act();
    
    
    //collision
    int i = 0;
    while (i < objects.size()) {

      GameObject obj = objects.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          player1.lives--;
          background(255,0,0);
          
          obj.lives = 0;
          
        }
      }
      i++;
    }
    
    
    

    //managing guns
    cooldown++;
    if (space && cooldown>=threshold) {

      objects.add(new Bullet());
      cooldown = 0;
    }



    //controlling the starfighter
    if (up)     vy = -6;
    
    if (down)   vy = 6;
    
    if (left)   vx = -6;
   
    if (right)  vx = 6;


    if (x > width-70) x = width-70; 
    if (x < 70) x = 70;
    if (y < 50) y = 50;
    if (y > height-50) y = height-50;
    
    
    

    if (!up && !down) {

      vy = vy * 0.78;
      if (!left && !right) {
        vx = vx * 0.78;
      }
    }

    x += vx;
    y += vy;
  }

  void show() {
    
    imageMode(CENTER);
    fill(c);
    image(ship, x, y, width*0.07, height*0.12);
  }
}
