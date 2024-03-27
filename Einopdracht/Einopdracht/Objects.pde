class Objects {
  float x, y;
  float diameter;
  float speed;

  Objects(float tempX, float tempY) {
    x = tempX;
    y = tempY;
    diameter = 40;
    speed = random(3, 6);
  }

  void move() {
    y += speed; // Move the circle downwards

    // Reset position if the circle reaches the bottom
    if (y > height + diameter / 2) {
      y = random(-200, -100);
      x = random(width);
    }
  }

  void display() {
    image(Fall, x, y, diameter, diameter);
  }
}
