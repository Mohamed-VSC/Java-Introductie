size(200, 200);
background(255, 255, 255);

int C = 100;

for (int i = 0; i < 5; i++) {
  ellipse(100, 100, C, C);
  C -= 20;
}
