void setup() {
  size(300, 300);
}

void draw() {
  if (keyPressed) {

    if (key == 'r') {
      background(255, 0, 0);
    } else if (key == 'g') {
      background(0, 255, 0);
    } else if (key == 'b')
    {
      background(0, 0, 255);
    }
  } else {
    background(32);
  }
}






























//void setup() {
//  size(300, 300);
//}

//void draw() {
//  if (keyPressed) {
//    background(0, 255, 0);
//  } else {
//    background(100);
//  }
//}
