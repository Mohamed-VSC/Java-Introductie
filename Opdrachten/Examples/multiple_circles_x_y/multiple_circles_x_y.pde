PVector redCircle;
PVector blueCircle;
PVector greenCircle;

void setup() {
  size(300, 300);
  redCircle = new PVector(100, 150);
  blueCircle = new PVector(150, 100);
  greenCircle = new PVector(200, 200);
}

void draw() {
  redCircle.x++;
  if (redCircle.x > width) {
    redCircle.x = 0;
  }

  greenCircle.x++;
  if (greenCircle.x > width) {
    greenCircle.x = 0;
  }

  blueCircle.y++;
  if (blueCircle.y > height) {
    blueCircle.y = 0;
  }

  background(100);

  fill(255, 0, 0);
  ellipse(redCircle.x, redCircle.y, 100, 100);

  fill(0, 255, 0);
  ellipse(greenCircle.x, greenCircle.y, 100, 100);

  fill(0, 0, 255);
  ellipse(blueCircle.x, blueCircle.y, 100, 100);
}
