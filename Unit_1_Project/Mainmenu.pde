void mainmenu() {
  r = r + 0.05;

  background(grey);

  backcourt();
  puck();
  startButton();
  title();
}

void title() {
  fill(black);
  textAlign(CORNER);
  textFont(gameFont);
  textSize(120);
  text("AIR HOCKEY", width/2, height/2);
}

void startButton() {
  boolean textGlow = false;
  int textColor;

  if (mouseX > width/2+width/7 && mouseX < width/2+width/7+width/4 && mouseY > height/2+height/4 && mouseY < height/2+height/4+height/8) {
    fill(darkgrey);
    textGlow = true;
  } else {
    fill(lightgrey);
    textGlow = false;
  }
  if (textGlow == true) {
    textColor = white;
  } else {
    textColor = black;
  }

  println(mouseX > width/2+width/7 && mouseX < width/2+width/7+width/4 && mouseY > height/2+height/4 && mouseY < height/2+height/4+height/8);
  rect(width/2+width/7, height/2+height/4, width/4, height/8);
  pushMatrix();
  translate(width/2+width/7+width/8, height/2+height/4+height/9);
  fill(textColor);
  textAlign(CENTER);
  text("START", 0, 0);
  popMatrix();
}
