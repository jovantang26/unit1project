void game() {
  x = x + vx;
  y = y + vy;
  r = r + 0.05; //reminder: set the puck to spin first for a a few seconds before moving

  background(lightgrey);

  backcourt();
  puck();
  net(0, height/3, 50, height/3, 1);
  net(width-50, height/3, 50, height/3, 2);
  paddle(1);
  paddle(2);

  //move paddle 1
  if (wKey == true) p1y = p1y - v1y;
  if (aKey == true) p1x = p1x - v1x;
  if (sKey == true) p1y = p1y + v1y;
  if (dKey == true) p1x = p1x + v1x;
  if (wKey == true || aKey == true || sKey == true || dKey == true) {
    v1x = v1x + 0.5;
    v1y = v1y + 0.5;
    v1x = min(v1x, 12);
    v1y = min(v1y, 12);
  }

  //move paddle 2
  if (upKey == true) p2y = p2y - v2y;
  if (leftKey == true) p2x = p2x - v2x;
  if (downKey == true) p2y = p2y + v2y;
  if (rightKey == true) p2x = p2x + v2x;
  if (upKey == true || leftKey == true || downKey == true || rightKey == true) {
    v2x = v2x + 0.5;
    v2y = v2y + 0.5;
    v2x = min(v2x, 12);
    v2y = min(v2y, 12);
  }
  
  //collision 
}
