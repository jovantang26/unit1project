void intro() {
  x = 900;
  y = 450;

  introtimer--;
  println(introtimer);

  background(lightgrey);


  backcourt();
  puck();
  net(0, height/3, 50, height/3, 1);
  net(width-50, height/3, 50, height/3, 2);

  if (introtimer < 0) MODE = GAME;
}
