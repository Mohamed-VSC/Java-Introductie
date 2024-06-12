boolean quest1Voltooid = false;
boolean quest2Voltooid = false;
boolean quest3Voltooid = false;

void setup() {
  size(400, 200);
}

void draw() {
  background(255);

  controleerQuests();

  if (quest1Voltooid && quest2Voltooid && quest3Voltooid) {
    textAlign(CENTER, CENTER);
    textSize(24);
    fill(0, 255, 0);
    text("Gefeliciteerd! Je hebt de game gehaald!", width/2, height/2);
  }
}

void controleerQuests() {
  if (!quest1Voltooid && random(1) < 0.05) {
    quest1Voltooid = true;
    println("Quest 1 voltooid!");
  }
  if (!quest2Voltooid && random(1) < 0.05) {
    quest2Voltooid = true;
    println("Quest 2 voltooid!");
  }
  if (!quest3Voltooid && random(1) < 0.05) {
    quest3Voltooid = true;
    println("Quest 3 voltooid!");
  }
}
