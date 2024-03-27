class Bullet {

  //variables
  int x;
  int y;
  int d;
  int speed;

  int left;
  int right;
  int top;
  int bottom;

  //constructor
  Bullet(int startX, int startY) {
    x = startX;
    y = startY;
    d = 1;

    speed = 10;

    left = x - d/2;
    right = x + d/2;
    top = x - d/2;
    bottom = x + d/2;
  }


  void display() {
    image(Blues, x, y);
  }

  void move() {
    y -= speed; // y = y + speed

    left = x - d/2;
    right = x + d/2;
    top = x - d/2;
    bottom = x + d/2;
  }

  void hitEnemy(Enemy anEnemy) {
    if (top <= anEnemy.bottom &&
      bottom >= anEnemy.top &&
      left <= anEnemy.right &&
      right >= anEnemy.left) {
        println("Hit");
    }
  }
}
