float circleX = 150;
float circleY = 150;

void setup() {
  size(300, 300);
}

void draw() {

  background(50);

  if (keyPressed) {
    if (keyCode == UP) {
      circleY--;
    } else if (keyCode == DOWN) {
      circleY++;
    } else if (keyCode == LEFT) {
      circleX--;
    } else if (keyCode == RIGHT) {
      circleX++;
    }
  }

  ellipse(circleX, circleY, 50, 50);
}
