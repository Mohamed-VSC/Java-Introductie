void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  simpleBoom(100, 300, 300, 300, 200, 100);
}

void simpleBoom(int x1, int y1, int x2, int y2, int x3, int y3) {
  fill(153,76,0);
  rect(x1, y1, x1, y2);
  fill(0,255,0);
  ellipse(150,300,150,150);
}
