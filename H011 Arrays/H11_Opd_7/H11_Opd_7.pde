int[] Getallen = {10, 8, 7, 36, 54, 89, 12, 9, 3, 15, 45};

void setup() {
  println(telHoeVaakGetalVoorkomt(5));
  println(telHoeVaakGetalVoorkomt(2));
}

int telHoeVaakGetalVoorkomt(int getal) {
  int aantalKeer = 0;
  for (int i = 0; i < Getallen.length; i++) {
    if (Getallen[i] == getal) {
      aantalKeer++;
    }
  }
  return aantalKeer;
}
