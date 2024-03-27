int x = 10;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {

  background(151, 244, 247);

  fill(255, 0, 155);
  rect(x, 200, 100, 10);
  rect(x + 15, 178, 70, 40);

  fill(77, 66, 66);
  ellipse(x + 25, 221, 24, 24);
  ellipse(x + 75, 221, 24, 24);

  x = x + 2;

  if (x > width) {
    x = 1;
  }
}
