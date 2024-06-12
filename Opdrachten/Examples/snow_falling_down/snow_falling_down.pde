float circleY = 25;

void setup() {
  size(200, 200);
}

void draw() {
  background(200);
  ellipse(100, circleY, 20, 20);

  circleY = circleY + 1;

  if (circleY > height) {
    circleY = 0;
  }
}
