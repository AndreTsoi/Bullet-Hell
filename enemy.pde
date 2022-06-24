class Enemy extends GameObject {

  int cooldown, threshold;



  Enemy() {
    super(random(width), -50, 0, 4, 70, yellow, 1);
    threshold = 120;
    cooldown = threshold;
  }


  void act() {
    super.act();

    //shootcooldown++;
    cooldown++;
    if (cooldown>=threshold) {

      objects.add(new EnemyBullet(x - 8, y+40, 0, 7));
      cooldown = 0;
    }







    //collision
    int i = 0;
    while (i < objects.size()) {

      GameObject obj = objects.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;

          //explosion
          objects.add(new explosion(x, y, random(-10, 10), random(-10, 10), 8));
          objects.add(new explosion(x, y, random(-10, 10), random(-10, 10), 8));
          objects.add(new explosion(x, y, random(-10, 10), random(-10, 10), 8));
          objects.add(new explosion(x, y, random(-10, 10), random(-10, 10), 8));
          objects.add(new explosion(x, y, random(-10, 10), random(-10, 10), 8));




          obj.lives = 0;
        }
      }
      i++;
    }
    //remove if offscreen
    if (offScreen()) lives = 0;
  }


  void show() {
    image(badguy, x, y, width*0.07, height*0.12);
  }
}
