void gameover() {
  timer--;

  if (winner == 1) {
    fill(violet);
  } else if (winner == 2) {
    fill(green);
  }
  text("PLAYER " + winner + " WINS!!", width/2, height/2);

  if (timer < 0) {
    //f=0;
    gameoverScreen();
  }
}

void gameoverScreen() {
  println(f);
  background(black);
  fill(white);


  imageMode(CENTER);
  if (f >= numFrames) f = 0;
  image(gif[f], width/2, height/2);
  if (frameCount % 3 == 0) f++;

  text("GAMEOVER", width/2, height/6); 
}
