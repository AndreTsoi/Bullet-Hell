PImage ship;
PImage badguy;

//pallette
color red = #e63946;
color dblue = #1d3557;
color lblue = #f1faee;
color yellow = #fdca40;
color black = #000000;
color transparent = #00FFFFFF;

final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
final int PAUSE = 3;
int mode;



boolean up, down, left, right, space;

ArrayList<GameObject> objects;
Starfighter player1;

void setup() {

  fullScreen();
  ship = loadImage("ship.png");
  badguy = loadImage("badguy.png");
  mode = INTRO;
  objects = new ArrayList<GameObject>();
  player1 = new Starfighter();



}


void draw() {
  if (mode == INTRO) {

    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {
    pause();
  }
}
