class Person {
  String naam;
  int leeftijd;
  String geslacht;


  Person(String naam, int leeftijd, String geslacht) {
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }

  void toonNaam() {
    println("Naam: " + naam);
  }

  void toonLeeftijd() {
    println("Leeftijd: " + leeftijd);
  }
}
