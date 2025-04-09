

void setup(){
  int[] board = {7, 2, 9, 10, 1, -4};
  println("Moyenne du tableau : " + getMean(board));
}


int getMean(int[] array){
  int somme = 0;
  for(int valeur : array){
    somme = somme  + valeur;
  }
  return somme / array.length;
}
