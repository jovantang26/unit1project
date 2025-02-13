//Jovan Tang
//Feb 5th 2025

//Unit 1 Project
//Ice Hockey - 2 Player Game

PFont gameFont;

int MODE;
final int MAINMENU = 0;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 4;

color black = #000000;
color white = #ffffff;
color grey = #cccccc;
color lightgrey = #474747;
color darkgrey = #242424;

color red = #ff0000;
color orange = #ffa500;
color yellow = #ffdf00;
color green = #008000;
color blue = #00008b;
color indigo = #4b0082;
color violet = #7f00ff;

//puck variables
int x, y, d;
float r;

void setup() {
  size(1800, 900); //900, 450
  gameFont = createFont("Times New Roman", 50);

  //puck
  x = int(random(width/6, width/3));
  y = int(random(height*1/3, height*3/4));
  d = 200;
}

void draw() {
  if (MODE == MAINMENU) {
    mainmenu();
  } else if (MODE == INTRO) {
    intro();
  } else if (MODE == GAME) {
    game();
  } else {
    gameover();
  }
}

//global functions
void backcourt() {
  noFill();
  stroke(red);
  strokeWeight(12);
  rect(20, 20, width-40, height-40);
  circle(width/2, height/2, height/2);
  line(width/2, 20, width/2, height/4);
  line(width/2, height*3/4, width/2, height-20);

  strokeWeight(10);
  rect(20, height/2-height/4, 200, height/2);
  rect(width-220, height/2-height/4, 200, height/2);
}

void puck(int x, int y) {
  boolean game = false;
  int reflectionColor;
  if (game == false) {
    reflectionColor = lightgrey;
  } else {
    reflectionColor = grey;
  }

  stroke(black);
  strokeWeight(5);
  fill(darkgrey);
  circle(x, y, d); //main puck
  pushMatrix(); //add rotate
  translate(x, y);
  rotate(r);
  noStroke();
  fill(reflectionColor);
  circle(d/4, d/4, d/6); //reflection
  popMatrix();
}
