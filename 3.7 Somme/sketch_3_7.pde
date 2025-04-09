
void setup(){
  calculDeSomme(100);
}
void calculDeSomme(int nbMax){
  int somme = 0;
  for (int i = 1; i <= nbMax; i++){
    somme = somme + i;
  }
  println(somme);
}
