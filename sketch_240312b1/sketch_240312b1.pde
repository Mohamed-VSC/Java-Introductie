int a = 5 % 4;            // Sets 'a' to 1
int b = 125 % 100;        // Sets 'b' to 25
float c = 285.5 % 140.0;  // Sets 'c' to 5.5
float d = 30.0 % 33.0;    // Sets 'd' to 30.0

int a = 0;
void draw() {
  background(200);
  a = (a + 1) % width;  // 'a' increases between 0 and width
  line(a, 0, a, height);
}
