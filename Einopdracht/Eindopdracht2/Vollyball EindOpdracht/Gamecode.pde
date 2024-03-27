class Gamecode {
  Ball[] balls;
  boolean gameStarted = false;

  Gamecode() {
    balls = new Ball[1];
    balls[0] = new Ball(200, 50, 18, 1);
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
      ball.bounceLEftSndRightSide();


      if (ball.y > height) { //ball.bounceBottom()
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

  void game() {
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
        }
      }
    }
  }

  void update() {
    tekenBall();
    tekenPaddle();
    bewegen();
    resetScore();
    game();
  }

  void keyPressed() {
    if (!gameStarted && key == ' ') {
      gameStarted = true;
    }
  }
}
