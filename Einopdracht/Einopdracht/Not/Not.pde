PImage Spacess;
PImage playerImage;
PImage Blues;

// Declare objects
Player p1;
Objects[] objects;

void setup() {
  size(1200, 920);

  // Load images
  playerImage = loadImage("spaceS.png");
  Spacess = loadImage("Spacess.jpg");

  // Initialize player object
  p1 = new Player(width / 2, 770, 100, 100);

  // Initialize array of objects
  objects = new Objects[10]; // Adjust the number of objects as needed
  for (int i = 0; i < objects.length; i++) {
    float speed = random(1, 10); // Random speed between 1 and 10
    objects[i] = new Objects(random(width), random(-200, -100), speed);
  }
}

void draw() {
  background(Spacess);

  // Move and display objects
  p1.move();
  for (Objects obj : objects) {
    obj.move();
    obj.display();
  }
}

void keyPressed() {
  // Call keyPressed method of the player object
  p1.keyPressed();
}

void keyReleased() {
  // Call keyReleased method of the player object
  p1.keyReleased();
}

class Objects {
  float x, y;
  float diameter;
  float speed;

  Objects(float tempX, float tempY, float tempSpeed) {
    x = tempX;
    y = tempY;
    diameter = 40;
    speed = tempSpeed;
  }

  void move() {
    y += speed; // Move the object downwards

    // Reset position if the object reaches the bottom
    if (y > height + diameter / 2) {
      y = random(-200, -100);
      x = random(width);
    }
  }

  void display() {
    ellipse(x, y, diameter, diameter);
  }
}

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
    if (upPressed && y > height / 2) {
      y -= 12;
    }
    if (downPressed && y < height - h) {
      y += 12;
    }
    if (leftPressed && x > 0) {
      x -= 12;
    }
    if (rightPressed && x < width - w) {
      x += 12;
    }
    image(playerImage, x, y, w, h);
  }

  boolean collidesWith(Objects obj) {
    if (x + w >= obj.x && x <= obj.x + obj.diameter && y + h >= obj.y && y <= obj.y + obj.diameter) {
      return true;
    }
    return false;
  }

  void keyPressed() {
    if (keyCode == UP) {
      upPressed = true;
    } else if (keyCode == DOWN) {
      downPressed = true;
    } else if (keyCode == LEFT) {
      leftPressed = true;
    } else if (keyCode == RIGHT) {
      rightPressed = true;
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
