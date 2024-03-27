class Gamecode {
  Ball[] balls;
  boolean gameStarted = false;
  boolean spaceStarted = false;

  Gamecode() {
    balls = new Ball[1];
    for (int i = 0; i < balls.length; i++) {
      balls[i] = new Ball (200, 100, 18, 0);
    }
  }

  void update() {
    for (int i = 0; i < balls.length; i ++) {
      Ball ball = balls[i];
      fill(255, 0, 0);
      image(volly, ball.x, ball.y, 80, 80);
    }

    if (!gameStarted) {
      background(0);
      textSize(50);
      fill(255);
      text("Press spacebar to start", width / 2 - 200, height / 2);
    } else {
      boolean ballsStopped = false;
      for (int i = 0; i < balls.length; i++) {
        Ball ball = balls[i];
        if (ball.hitCount >= 10) {
          background(0, 255, 0);
          textSize(50);
          fill(255);
          text("You Win!", width / 2 - 120, height / 2);
          noLoop(); // Stop game
        } else if (ball.missCount >= 5) {
          background(255, 0, 0);
          textSize(50);
          fill(255, 255, 255);
          println("hoi");
          text("You Lose!", width / 2 - 130, height / 2);
          noLoop();
        } else {
          if (ball.x < 0 || ball.x > width) {
            ball.speedX = -ball.speedX;
          }
          if (ball.y > height) {
            ball.speedY = -ball.speedY;
            float distance = abs(mouseX-ball.x);
            if (distance < paddle) {
              ball.hit();
            } else {
              ball.miss();
            }
          } else {
            ball.speedY += 1;
          }

          ball.update();

          if (mousePressed) {
            ball.reset();
          }

          if (ball.speedX != 0 || ball.speedY != 0) {
            ballsStopped = false;
          }
        }
      }

      if (ballsStopped) {
        noLoop();
      }


      // code
      fill(0, 0, 255);
      rect(mouseX - paddle, height - 10, 150, 15);

      textSize(20);
      fill(0);
      text("Hit: " + balls[0].hitCount, 10, 20);
      text("Miss: " + balls[0].missCount, 10, 40);
    }
  }

  void keyPressed() {
    if (!gameStarted) {
      if (key == ' ') {
        gameStarted = true;
      }
    }
  }
}
