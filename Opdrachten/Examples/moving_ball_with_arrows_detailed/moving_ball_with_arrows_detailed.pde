boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;

float circleX = 150;
float circleY = 150;

void setup() {
  size(300, 300);
}

void draw() {
  background(50);

  if (upPressed) {
    circleY--;
  }
  if (downPressed) {
    circleY++;
  }
  if (leftPressed) {
    circleX--;
  }
  if (rightPressed) {
    circleX++;
  }

  ellipse(circleX, circleY, 50, 50);
}

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  } else if (keyCode == DOWN) {
    downPressed = true;
  } else if ( keyCode == LEFT) {
    leftPressed = true;
  } else if (keyCode == RIGHT) {
    rightPressed =true;
  }
}

void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  } else if (keyCode == DOWN) {
    downPressed = false;
  } else if (keyCode == LEFT) {
    leftPressed = false;
  } else if (keyCode == RIGHT) {
    rightPressed = false;
  }
}
