
void draw() {
    if (keyPressed) {
      println("Key " + key);
      creationMouton(int(random(400)), int(random(400)), color(int(random(256)), int(random(256)), int(random(256))) );
      delay(200);
    }
    
}

void setup() {
  size(1200, 800);
  
  for(int i = 0; i < 2; i++){
    creationMouton(int(random(400)), int(random(400)), color(int(random(256)), int(random(256)), int(random(256))) );
  }
  
}

void creationMouton (int x, int y, color c) {
  fill(color(c));
  rect(10 + x, 10 + y, 400, 220);
  rect(415 + x, 10 + y, 200, 110);

  rect(20 + x, 232 + y, 35, 100);
  rect(80 + x, 232 + y, 35, 100);
  rect(290 + x, 232 + y, 35, 100);
  rect(350 + x, 232 + y, 35, 100);

  fill(0);
  ellipse(450 + x, 30 + y, 20, 20);
}
