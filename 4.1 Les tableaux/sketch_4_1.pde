

void setup(){
  int[] board = {7, 2, 9, 10, 1, -4};
  println("Valeur max du tableau : " + getMax(board));
}


int getMax(int[] array){
  int nombre = 0;
  for(int valeur : array){
    if(nombre < valeur){
      nombre = valeur;
    }
  }
  return nombre;
}
