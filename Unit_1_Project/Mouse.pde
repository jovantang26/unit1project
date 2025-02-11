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
