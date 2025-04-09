int position = 0;
int nbDeplacements = 0;
boolean[] sol = {false, false, true, false, true, false, false};

void setup() {
  println("Position en : " + position);

  go();
  go();
  go();
  go();
  go();
  distanceMoyene();
}

void go () {
  if (isNearWater(position)) {
    jump();
  } else {
    walk();
  }
}

boolean isNearWater(int positionToto) {
  
  if (sol[positionToto]) {
    println("Flaque droit devant !!!");
    return true;
  }
  else{
    return false;
  }
}

void walk() {
  println("Walk");
  position = position + 1;
  println("Position en : " + position);
  nbDeplacements = nbDeplacements + 1;
}

void jump() {
  println("jump");
  position = position + 2;
  println("Position en : " + position);
  nbDeplacements = nbDeplacements + 1;
}

void distanceMoyene() {
  float dist = 7 / (float)nbDeplacements;
  println("Nombre de déplacement : " + nbDeplacements +"  Distance moyene : " + dist);
}
