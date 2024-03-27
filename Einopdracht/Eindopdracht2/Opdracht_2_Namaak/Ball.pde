class Ball {
  float x, y;
  float speedX, speedY;
  int hitCount, missCount;

  Ball(float x, float y, float speedX, float speedY) {
    this.x = x;
    this.y = y;
    this.speedX = speedX;
    this.speedY = speedY;
    this.hitCount = 0;
    this.missCount = 0;
  }

  void update() {
    // update positie van de ball
    x += speedX;
    y += speedY;
  }

  void hit() {
    hitCount++;
  }

  void miss() {
    missCount++;
  }

  void reset() {
    hitCount = 0;
    missCount = 0;
  }
}
