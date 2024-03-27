void setup() {
  size(400, 400);
}

void draw() {
  if (mousePressed) {
    ellipse(mouseX, mouseY, 50, 50);
  }
}
