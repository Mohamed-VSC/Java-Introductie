class Player {

  // variables
  int x;
  int y;
  int w;
  int h;

  boolean upPressed = false;
  boolean downPressed = false;
  boolean leftPressed = false;
  boolean rightPressed = false;


  //constructor
  Player(int startX, int startY, int startW, int startH) {
    x = startX;
    y = startY;
    w = startW;
    h = startH;
  }

  void move() {
    if (upPressed && y > height/2) {
      y-= 10;
    }
    if (downPressed && y < height - h) {
      y+= 10;
    }
    if (leftPressed && x > 0) {
      x-= 10;
    }
    if (rightPressed && x < width - w) {
      x+= 10;
    }
    image(playerImage, x, y, w, h);
  }

  void keyPressed() {
    if (keyCode == UP) {
      upPressed = true;
    } else if (keyCode == DOWN) {
      downPressed = true;
    } else if ( keyCode == LEFT) {
      leftPressed = true;
    } else if (keyCode == RIGHT) {
      rightPressed =true;
    }
  }

  void keyReleased() {
    if (keyCode == UP) {
      upPressed = false;
    } else if (keyCode == DOWN) {
      downPressed = false;
    } else if (keyCode == LEFT) {
      leftPressed = false;
    } else if (keyCode == RIGHT) {
      rightPressed = false;
    }
  }
}
