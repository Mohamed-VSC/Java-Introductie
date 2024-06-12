float cijferEen = 5.5;
float cijferTwee = 6.7;
float cijferDrie = 8.4;
float gemiddelde = 0;

void setup() {
  
gemiddelde = (cijferEen + cijferTwee+ cijferDrie) / 3;

gemiddelde = round(gemiddelde * 1) / 1.0;

println("Het gemiddelde cijfer is:" + gemiddelde); 

}
