String zin;

void setup() {
  zin = Langezin("Hoi", "doi", "kort", "lang");
  println(zin);
}

void draw() {
}

String Langezin(String a, String b, String c, String d) {
  String antwoord;
  antwoord = a + " " + b  + " " + c + " " + d;
  return antwoord;
}
