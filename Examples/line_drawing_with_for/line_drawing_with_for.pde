//from this:
//void setup() {
//  size(300, 300);
//}

//void draw() {
//  background(100);
//  stroke(255);

//  line(30, 0, 30, height);
//  line(60, 0, 60, height);
//  line(90, 0, 90, height);
//  line(120, 0, 120, height);
//  line(150, 0, 150, height);
//  line(180, 0, 180, height);
//  line(210, 0, 210, height);
//  line(240, 0, 240, height);
//  line(270, 0, 270, height);
//}


//to this:
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






















//void setup() {
//  size(300, 300);
//}

//void draw() {
//  background(100);
//  stroke(255);

//  for (int lineX = 75; lineX <= 255; lineX += 75) {
//    line(lineX, 0, lineX, height);
//  }
//}
