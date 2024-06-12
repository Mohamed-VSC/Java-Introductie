String message = "";

void setup() {
  size(300, 300);
  textSize(36);
}

void draw() {
  background(50);
  text(message, 25, 150);
}

void keyTyped() {
  message += key;
}
