int position = 0;
int nbDeplacements = 0;

void setup(){
  println("Position en : " + position + " ");
  
  walk();
  jump();
  jump();
  walk();
  walk();
  distanceMoyene();
  
}

void walk(){
  position = position + 1;
  println("Position en : " + position + " ");
  nbDeplacements = nbDeplacements + 1;
}

void jump(){
  position = position + 2;
  println("Position en : " + position + " ");
  nbDeplacements = nbDeplacements + 1;
}

void distanceMoyene(){
  float dist = 7 / (float)nbDeplacements;
  println("Nombre de déplacement : " + nbDeplacements +"  Distance moyene : " + dist);
}
