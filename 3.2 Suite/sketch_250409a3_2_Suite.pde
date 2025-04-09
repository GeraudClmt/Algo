
void setup(){
  boucleWhile();
  boucleFor();
}

void boucleWhile(){
  println("Bouble while");
  int compteur =2;
  while(compteur <= 100){
    println(compteur);
    compteur = compteur +2;
  }
}
void boucleFor(){
  println("Boucle for");
  for(int i = 2; i <= 100; i =i +2){
    println(i);
  }
}
