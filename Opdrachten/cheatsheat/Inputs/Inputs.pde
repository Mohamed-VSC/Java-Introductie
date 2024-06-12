void setup(){
  size(300, 300);
}

void draw() {
  background(50);  

  textSize(18);
  fill(0);

  text("mousePressed: " + mousePressed, 20, 20);
  text("mouseButton: " + mouseButton, 20, 40);
  text("mouseX: " + mouseX, 20, 60);
  text("mouseY: " + mouseY, 20, 80);
  text("pmouseX: " + pmouseX, 20, 100);
  text("pmouseY: " + pmouseY, 20, 120);
  text("keyPressed: " + keyPressed, 20, 140);
  text("key: " + key, 20, 160);
  text("keyCode: " + keyCode, 20, 180);
}

void keyPressed() {
  println("keyPressed: " + key);
}

void keyReleased() {
  println("keyReleased: " + key);
}

void keyTyped(){
  println("keyTyped: " + key);
}

void mousePressed(){
  println("mousePressed");
}

void mouseReleased(){
  println("mouseReleased");
}

void mouseClicked(){
  println("mouseClicked");
}

void mouseMoved(){
  println("mouseMoved");
}

void mouseDragged(){
  println("mouseDragged");
}

void mouseWheel(){
  println("mouseWheel");
}
