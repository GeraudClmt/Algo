
void setup() {
  int[] tableau = initBoard(10, 3);
  
  for(int valeur : tableau){
    println(valeur);
  }
}


int[] initBoard(int tailleTableau, int nbMines) {
  int[] tableau = new int[tailleTableau];
  for (int i = 0; i < tableau.length; i++) {
    tableau[i] = 0;
  }
  for (int i = 0; i < nbMines; i++) {
    int position = int(random(tailleTableau));
    if (tableau[position] != 99) {
      tableau[position] = 99;
      
    }
    else{
      i--;
    }
  }
  return tableau;
}
