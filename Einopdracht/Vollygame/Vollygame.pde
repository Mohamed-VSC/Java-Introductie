PImage volly;

float paddle = 75;
Gamecode gamecode;

void setup() {
  size(800, 600);
  volly = loadImage("volly.png");
  gamecode = new Gamecode();
}

void draw() {
  background(100, 200, 50);
  gamecode.update();
}

void keyPressed() {
  gamecode.keyPressed();
}


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

class Gamecode {
  Ball[] balls;
  boolean gameStarted = false;

  Gamecode() {
    balls = new Ball[1];
    balls[0] = new Ball(200, 100, 18, 0);
  }

  void tekenBall() {
    for (Ball ball : balls) {
      fill(255, 0, 0);
      image(volly, ball.x, ball.y, 80, 80);
    }
  }

  void tekenPaddle() {
    fill(0, 0, 255);
    rect(mouseX - paddle, height - 10, 150, 15);
    textSize(20);
    fill(0);
    text("Hit: " + balls[0].hitCount, 10, 20);
    text("Miss: " + balls[0].missCount, 10, 40);
  }


  void bewegen() {
    for (Ball ball : balls) {
      if (ball.x < 0 || ball.x > width) {
        ball.speedX = -ball.speedX;
      }
      if (ball.y > height) {
        ball.speedY = -ball.speedY;
        float distance = abs(mouseX - ball.x);
        if (distance < paddle) {
          ball.hit();
        } else {
          ball.miss();
        }
      } else {
        ball.speedY += 1;
      }

      ball.update();
    }
  }


  void resetScore() {
    for (Ball ball : balls) {
      if (mousePressed) {
        ball.reset();
      }
    }
  }

  void update() {
    tekenBall();
    bewegen();
    tekenPaddle();


    if (!gameStarted) {
      background(0);
      textSize(50);
      fill(255);
      text("Press spacebar to start", width / 2 - 200, height / 2);
    } else {
      for (Ball ball : balls) {
        if (ball.hitCount >= 10) {
          background(0, 255, 0);
          textSize(50);
          fill(255);
          text("You Win!", width / 2 - 120, height / 2);
          noLoop(); // Stop spel
        } else if (ball.missCount >= 5) {
          background(255, 0, 0);
          textSize(50);
          fill(255, 255, 255);
          text("You Lose!", width / 2 - 130, height / 2);
          noLoop(); // Stop spel
        } else {
        }
      }
    }
  }

  void keyPressed() {
    if (!gameStarted && key == ' ') {
      gameStarted = true;
    }
  }
}
