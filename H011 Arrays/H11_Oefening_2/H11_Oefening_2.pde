int zoekNummer = 9;
boolean gevonden = false;
int index = 0;
int positie = 0;
int[] Getallen = {10, 8, 7, 36, 54, 89, 12, 9, 3, 15, 45};


void setup() {
  for (int i = 0; i < Getallen.length; i++) {
    if (Getallen[i] == zoekNummer) {
      gevonden = true;
      index = i;
      positie = i + 1;
    }
  }
  if (gevonden) {
    println("Het getal is gevonden op " + index + " En dit is de postite " + positie);
  } else {
    println("Niet gevonden");
  }
}
