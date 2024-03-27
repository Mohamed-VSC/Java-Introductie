float y = 0;
float x = 150;
int score = 0;

void setup() {
  size(300, 300);
  fill(100, 100, 100);
  textSize(20);
}

void draw() {
  background(255, 200, 200);
  y = y + 5;
  text("A", x, y);
  text("Score: " + score, 0, 20);

  if (y >= height) {
    y = 0;
    x = random(10, width);
    score++;
  }
}
