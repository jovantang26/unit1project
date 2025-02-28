void reset() {
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

  //score
  p1score = 0;
  p2score = 0;

  //timer
  timer = 100;
  introtimer = 100;
  transitiontimer = 200;
}
