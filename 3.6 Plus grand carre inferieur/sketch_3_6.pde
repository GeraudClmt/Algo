
void setup(){
  carreSuperieur(30);
}
void carreSuperieur(int nombre){
  println("Boucle for");
  for(int i = 1; i <= 100; i++){
    println(i *i);
    if (i*i > nombre){
      i = i -1;
      println("Le carré inferieur de " + nombre + " est " + i*i);
      break;
    }
  }
}
