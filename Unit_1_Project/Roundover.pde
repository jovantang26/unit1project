void roundover() {
  //reset
  vx = 5;
  vy = 5;
  r = 0;
  v1x = 0;
  v1y = 0;
  v2x = 0;
  v2y = 0;

  x = width/2;
  y = height/2;
  p1x = width/2 - 500 ;
  p1y = height/2;
  p2x = width/2 + 500;
  p2y = height/2;

  timer = 100;
    
  transitiontimer--;
  if (transitiontimer < 0) {
    MODE = GAME;
  }
}
