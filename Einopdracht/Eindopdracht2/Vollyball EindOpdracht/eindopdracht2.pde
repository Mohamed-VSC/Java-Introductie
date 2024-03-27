PImage volly;

float paddle = 75;
Gamecode gamecode;

void setup() {
  size(800, 600);
  volly = loadImage("volly.png");
  gamecode = new Gamecode();
}

void draw() {
  background(100, 200, 50);
  gamecode.update();
}

void keyPressed() {
  gamecode.keyPressed();
}
