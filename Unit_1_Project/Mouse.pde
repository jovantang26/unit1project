void mousePressed() {
  if (MODE == MAINMENU) {
    mainmenuClicks();
  } else if (MODE == INTRO) {
    introClicks();
  } else if (MODE == GAME) {
    gameClicks();
  } else {
    gameoverClicks();
  }
}

void mouseReleased() {
}

void mainmenuClicks() {
  if (mouseX > width/2+width/7 && mouseX < width/2+width/7+width/4 && mouseY > height/2+height/4 && mouseY < height/2+height/4+height/8) {
    MODE = INTRO;
  }
}

void introClicks() {
  MODE = GAME;
}

void gameClicks() {
  MODE = GAMEOVER;
}

void gameoverClicks() {
  MODE = MAINMENU;
}
