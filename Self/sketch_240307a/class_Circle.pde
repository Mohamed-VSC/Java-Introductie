class Circle {
  float x;
  float y;
  float diameter;

  Circle(float x, float y, float diameter) {
    this.x = x;
    this.y = y ;
    this.diameter = diameter;
  }

  void display() {
    ellipse(x, y, diameter, diameter);
  }
}
