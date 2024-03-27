void setup() {
  size(300, 300);
}

void draw() {
  background(100);
  stroke(255);
  
  for (int lineX = 30; lineX <= 270; lineX += 30) {
    line(lineX, 0, lineX, height);
  }
}
