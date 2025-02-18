void keyPressed() {
  if (key == 'W' || key == 'w') wKey = true;
  if (key == 'A' || key == 'a') aKey = true;
  if (key == 'S' || key == 's') sKey = true;
  if (key == 'D' || key == 'd') dKey = true;

  if (keyCode == UP) upKey = true;
  if (keyCode == DOWN) downKey = true;
  if (keyCode == LEFT) leftKey = true;
  if (keyCode == RIGHT) rightKey = true;
}

void keyReleased() {
  if (key == 'W' || key == 'w') wKey = false;
  if (key == 'A' || key == 'a') aKey = false;
  if (key == 'S' || key == 's') sKey = false;
  if (key == 'D' || key == 'd') dKey = false;

  if (keyCode == UP) upKey = false;
  if (keyCode == DOWN) downKey = false;
  if (keyCode == LEFT) leftKey = false;
  if (keyCode == RIGHT) rightKey = false;
}
