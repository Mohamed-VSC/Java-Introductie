class Enemy {

  // variables
  int x;
  int y;
  int w;
  int h;

  int left;
  int right;
  int top;
  int bottom;


  Enemy(int startX, int startY, int startW, int startH) {

    x = startX;
    y = startY;
    w = startW;
    h = startH;

    left = x - w/2;
    right = x + w/2;
    top = y - w/2;
    bottom = y + w/2;
  }

  void display() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void move() {
    left = x - w/2;
    right = x + w/2;
    top = y - w/2;
    bottom = y + w/2;
  }
}
