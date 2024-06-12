void setup() {
  size(300, 300);
  background(0, 200, 0);
}

void draw() {
  drawFlower(random(width), random(height), random(10, 25));
}

void drawFlower(float flowerX, float flowerY, float petalSize) {
  float petalDistance = petalSize / 2;

  fill(255, 128, 0);

  // upper-left petal
  ellipse(flowerX - petalDistance, flowerY - petalDistance,
    petalSize, petalSize);

  // upper-right petal
  ellipse(flowerX + petalDistance, flowerY - petalDistance,
    petalSize, petalSize);

  // lower-left petal
  ellipse(flowerX - petalDistance, flowerY + petalDistance,
    petalSize, petalSize);

  // lower-right petal
  ellipse(flowerX + petalDistance, flowerY + petalDistance,
    petalSize, petalSize);

  // center petal
  fill(255, 0, 0);
  ellipse(flowerX, flowerY,
    petalSize, petalSize);
}
