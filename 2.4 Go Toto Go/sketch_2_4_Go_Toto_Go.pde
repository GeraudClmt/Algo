int position = 0;
int nbDeplacements = 0;
int[] positionFlaques = {2, 4};

void setup(){
  println("Position en : " + position);

  go();
  go();
  go();
  go();
  go();
  distanceMoyene();
  
}

void go (){
  if(isNearWater(position)){
    jump();
  }
  else{
    walk();
  }
}

boolean isNearWater(int positionToto){
  boolean resultat = false;
  
  for (int posiFlaque : positionFlaques){
    if(posiFlaque == positionToto + 1){
      resultat = true;
      println("Flaque droit devant !!!");
    }
  }
  return resultat;
}

void walk(){
  println("Walk");
  position = position + 1;
  println("Position en : " + position);
  nbDeplacements = nbDeplacements + 1;
}

void jump(){
  println("jump");
  position = position + 2;
  println("Position en : " + position);
  nbDeplacements = nbDeplacements + 1;
}

void distanceMoyene(){
  float dist = 7 / (float)nbDeplacements;
  println("Nombre de déplacement : " + nbDeplacements +"  Distance moyene : " + dist);
}
