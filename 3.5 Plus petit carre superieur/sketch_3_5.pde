
void setup(){
  carreSuperieur(64);
}
void carreSuperieur(int nombre){
  println("Boucle for");
  for(int i = 1; i <= 100; i++){
    println(i *i);
    if (i*i > nombre){
      println("Le carré supérieur de " + nombre + " est " + i*i);
      break;
    }
  }
}
