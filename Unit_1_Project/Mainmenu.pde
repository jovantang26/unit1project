void mainmenu() {
  background(grey);

  backcourt();
  puck(x, y); 
  startButton();
  title();
}

void title() {
  fill(black);
  textFont(gameFont);
  textSize(120);
  text("AIR HOCKEY", width/2, height/2);
}

void startButton() {
}

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
