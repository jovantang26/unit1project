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

void setup() {
  size(1800, 900);
  gameFont = createFont("Times New Roman", 50);
  
  //puck
  x = int(random(width/8, width/2));
  y = int(random(height*2/8, height*6/8));
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

void puck(int x, int y) {
  stroke(black); 
  strokeWeight(5); 
  fill(darkgrey);
  circle(x, y, d); 
  pushMatrix(); //add rotate
  translate(x, y);
  noStroke(); 
  fill(lightgrey); 
  circle(d/4, d/4, d/6); 
  popMatrix(); 
}
