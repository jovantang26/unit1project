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
  MODE = INTRO; 
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
