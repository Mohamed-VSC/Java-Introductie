// image

PImage Spacess;
PImage playerImage;
PImage Blues;
PImage Fall;

// declare
Player p1;
Objects[] objects;


boolean gameStarted = false;
boolean spaceStarted = false;

void setup() {
  size(1200, 920);

  playerImage = loadImage("spaceS.png");
  Spacess = loadImage("Spacess.jpg");
  Fall = loadImage("fall.png");

  //initialize
  p1 = new Player(width / 2, 770, 100, 100);

  objects = new Objects[25]; // Adjust the number of objects as needed
  for (int i = 0; i < objects.length; i++) {
    objects[i] = new Objects(random(width), random(-200, -100));
  }
}

void draw() {
  if (!gameStarted) {
    background(0);
    textSize(50);
    fill(255);
    text("Press spacebar to start", width / 2 - 200, height / 2);
  } else {
    background(Spacess);

    p1.move();
    for (int i = 0; i < objects.length; i++) {
      objects[i].move();
      objects[i].display();
    }
  }
}
void keyPressed() {
  if (!gameStarted) {
    if (key == ' ') {
      gameStarted = true;
    }
  } else {
    p1.keyPressed();
  }
}

void keyReleased() {
  p1.keyReleased();
}
