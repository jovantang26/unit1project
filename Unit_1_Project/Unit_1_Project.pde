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

//puck
float x, y, d; //d is for both puck and paddle diameter
float vx, vy;
float r; //rotation

//paddle 1
float p1x, p1y;
float v1x, v1y;

//paddle 2
float p2x, p2y;
float v2x, v2y;

//keyboard
boolean wKey, aKey, sKey, dKey, upKey, downKey, leftKey, rightKey; 

//collision
float paddle1r, paddle2r, puckr;
float paddle1dist, paddle2dist;  

//score
int timer, p1score, p2score;

void setup() {
  size(1800, 900); //900, 450
  gameFont = createFont("Times New Roman", 50);

  //puck
  x = int(random(width/6, width/3));
  y = int(random(height*1/3, height*3/4));
  vx = 5; 
  vy = 5; 
  d = 200;

  //paddle 1
  p1x = width/2 - 500 ;
  p1y = height/2;
  v1x = 5;
  v1y = 5;

  //paddle 2
  p2x = width/2 + 500;
  p2y = height/2;
  v2x = 5;
  v2y = 5;
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

void puck() {
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

void net(int x, int y, int w, int h, int player) {
  if (player == 1) {
    fill(violet);
  } else {
    fill(green);
  }
  stroke(black);
  strokeWeight(2);
  rect(x, y, w, h);
}

void paddle(int player) {
  int outerRing, innerRing;
  if (player == 1) {
    outerRing = lightgrey;
    innerRing = violet;
  } else {
    outerRing = darkgrey;
    innerRing = green;
  }
  fill(outerRing);
  if (player == 1) {
    circle(p1x, p1y, d);
  } else {
    circle(p2x, p2y, d);
  }
  fill(innerRing);
  if (player == 1) {
    circle(p1x, p1y, 75);
  } else {
    circle(p2x, p2y, 75);
  }
  
  void scoreboard() {
    
  }
}
