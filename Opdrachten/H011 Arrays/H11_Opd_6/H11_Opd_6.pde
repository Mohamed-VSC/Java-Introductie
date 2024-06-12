int zoekNummer = 9;
int aantalKeer = 0;
int[] Getallen = {10, 8, 7, 36, 54, 89, 12, 9, 3, 15, 45};

void setup() {
  for (int i = 0; i < Getallen.length; i++) {
    if (Getallen[i] == zoekNummer) {
      aantalKeer++;
    }
  }
  if (aantalKeer > 0) {
    println("Het getal " + zoekNummer + " is " + aantalKeer + " keer gevonden.");
  } else {
    println("Het getal " + zoekNummer + " is niet gevonden.");
  }
}
