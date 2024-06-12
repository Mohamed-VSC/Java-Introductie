void setup() {
  size(300, 300);
}

void draw() {
  background(100);
  stroke(255);

  for (int i = 1; i <= 9; i++) {
    strokeWeight(i*2);
    
    int lineX = i * 30;
    line(lineX, 0, lineX, height);
  }
}



























//void setup() {
//  size(300, 300);
//}

//void draw() {
//  background(100);

//  for (int rowY = 75; rowY <= 225; rowY += 75) {
//    drawCircleRow(rowY);
//  }
//}

//void drawCircleRow(int rowY) {
//  for (int circleX = 75; circleX <= 225; circleX += 75) {
//    ellipse(circleX, rowY, 50, 50);
//  }
//}





























//void setup() {
//  size(300, 300);
//}

//void draw() {
//  background(100);

//  for (int circleY = 75; circleY <= 255; circleY += 75) {
//    for (int circleX = 75; circleX <= 255; circleX += 75) {
//      ellipse(circleX, circleY, 50, 50);
//    }
//  }
//}
