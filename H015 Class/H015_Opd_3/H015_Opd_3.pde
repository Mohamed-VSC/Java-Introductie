class bankAccount {
  String rekeningnummer;
  float saldo;
  String eigenaar;

  bankAccount(String rekeningnummer, float saldo, String eigenaar) {
    this.rekeningnummer = rekeningnummer;
    this.saldo = saldo;
    this.eigenaar = eigenaar;
  }

  void geldOpnemen(float bedrag) {
    if (bedrag <= saldo) {
      saldo -= bedrag;
      println("Opname van " + bedrag + " euro succesvol. Nieuwe saldo: " + saldo + " euro's ");
    } else {
      println("Onvoldoende saldo om op te nemen.");
    }
  }


  void geldStorten(float bedrag) {
    saldo += bedrag;
    println("Storting van " + bedrag+ " euro succesvol. Nieuwe saldo: " + saldo + " euro's ");
  }

  void controleerSaldo() {
    println("Huidige saldo: " + saldo + " euro");
  }
}



bankAccount mijnRekening = new bankAccount("NL01ABCD123456789", 1000, "John Doe");
mijnRekening.controleerSaldo();
mijnRekening.geldOpnemen(500);
mijnRekening.geldStorten(200);
mijnRekening.geldOpnemen(1000);
