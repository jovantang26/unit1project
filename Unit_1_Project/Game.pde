void game() {
  transitiontimer = 100;
  timer--;

  if (timer < 0) {
    x = x + vx;
    y = y + vy;
    r = r + 0.05;
  }

  background(lightgrey);

  backcourt();
  net(0, height/3, 50, height/3, 1);
  net(width-50, height/3, 50, height/3, 2);
  paddle(1);
  paddle(2);
  puck();

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
  paddle1dist = dist(p1x, p1y, x, y);
  paddle2dist = dist(p2x, p2y, x, y);

  if (x < 0 + d/2 || x > width - d/2) vx = -vx;
  if (x < 0 + d/2) {
    x = d/2;
  } else if (x > width - d/2) {
    x = width - d/2;
  }
  if (y < 0 + d/2 || y > height - d/2) vy = -vy;
  if (y < 0 + d/2) {
    y = d/2;
  } else if (y > height - d/2) {
    y = height - d/2;
  }

  if (paddle1dist <= d) {
    vx = (x - p1x)/10;
    vy = (y - p1y)/10;
  }
  if (paddle2dist <= d) {
    vx = (x - p2x)/10;
    vy = (y - p2y)/10;
  }

  //paddle 1 restrictions
  if (p1x < 5*d/3) p1x = 5*d/3;
  if (p1x > width/2 - d/2) p1x = width/2 - d/2;
  if (p1y < d/2) p1y = d/2;
  if (p1y > height - d/2) p1y = height - d/2;

  //paddle 2 restrictions
  if (p2x < width/2 + d/2) p2x = width/2 + d/2;
  if (p2x > width - 5*d/3) p2x = width - 5*d/3;
  if (p2y < d/2) p2y = d/2;
  if (p2y > height - d/2) p2y = height - d/2;

  //friction
  vx = vx*0.995;
  vy = vy*0.995;

  //scores
  scoreboard();
  if (x >= width - d/2 - 10 && y <= height/2 + height/8 && y >= height/2 - height/8) {
    goal(1);
  }
  if (x <= d/2 + 10 && y <= height/2 + height/8 && y >= height/2 - height/8) {
    goal(2);
  }
}

void goal(int player) {
  if (player == 1) {
    fill(violet);
    p1score++;
  } else {
    fill(green);
    p2score++;
  }
  textAlign(CENTER);
  textSize(172);
  if (p1score == 2) {
    text("PLAYER 1 WINS", width/2, height/2); //unknown syntax error, unsolvable, ask mr p tmr
    transitiontimer--; 
    if (transitiontimer < 0) MODE = GAMEOVER; 
  } else if (p2score == 2) {
    text("PLAYER 2 WINS", width/2, height/2);
    transitiontimer--; 
    if (transitiontimer < 0) MODE = GAMEOVER; 
  } else {
    text("GOAL!", width/2, height/2);
    MODE = ROUNDOVER;
  }
}
