void intro() {
  x = 900;
  y = 450;
  r = r + 0.05;

  background(lightgrey);

  backcourt();
  puck(x, y);
  net(1);
  net(2); 
}

void net(int player) {
  rectMode(CENTER); 
  
  rectMode(CORNER); 
}
