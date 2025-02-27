void gameover() {
  timer--;

  if (winner == 1) {
    fill(violet);
  } else if (winner == 2) {
    fill(green);
  }
  text("PLAYER " + winner + " wins!!", width/2, height/2);

  if (timer < 0) {
    gameoverScreen();
  }
}

void gameoverScreen() {
  background(black);
  fill(white);
  text("GAMEOVER", width/2, height/6);
  
  imageMode(CENTER); 
  image(gif[f], width/2, height/2); 
}
