void setup() {
  size(300, 300);
  background(32);
}

void draw() {
  if (mousePressed) {
    fill(0, 255, 255);
    ellipse(mouseX, mouseY, 25, 25);
  }
}

void mouseClicked() {
  fill(0, 255, 0);
  ellipse(mouseX, mouseY, 50, 50);
}


































//float r = 32;
//float g = 32;
//float b = 32;

//void setup() {
//  size(300, 300);
//}

//void draw() {
//  background(r, g, b);
//}

//void mousePressed() {
//  r = 0;
//  g = 255;
//  b = 0;
//}

//void mouseReleased() {
//  r = 255;
//  g = 255;
//  b = 0;
//}

//void mouseDragged() {
//  r = 0;
//  g = 0;
//  b = 255;
//}
