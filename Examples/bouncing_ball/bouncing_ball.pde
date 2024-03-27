float circleX = 100;
float circleY = 0;
float xSpeed = 1;
float ySpeed = 1;

void setup() {
  size(200, 200);
  background(32);
}

void draw() {

  ellipse(circleX, circleY, 50, 50);

  circleX = circleX + xSpeed;
  circleY = circleY + ySpeed;

  if (circleX < 0 || circleX > width) {
    xSpeed = xSpeed * -1;
  }

  if (circleY < 0 || circleY > height) {
    ySpeed = ySpeed * -1;
  }
}
