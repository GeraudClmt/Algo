
void setup(){
  boucleWhile();
  boucleFor();
}

void boucleWhile(){
  println("Bouble while");
  int compteur =1;
  while(compteur <= 100){
    println(compteur);
    compteur++;
  }
}
void boucleFor(){
  println("Boucle for");
  for(int i = 1; i <= 100; i++){
    println(i);
  }
}
