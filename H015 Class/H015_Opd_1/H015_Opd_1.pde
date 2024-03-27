class Rectangle {
  float x, y;
  float breedte, hoogte;


  Rectangle(float x, float y, float breedte, float hoogte) {
    this.x = x;
    this.y = y;
    this.breedte = breedte;
    this.hoogte = hoogte;
  }

  void teken() {
    rect(x, y, breedte, hoogte);
  }
}
