//Appel la fonction pour creer un tableau
int[][] tableau = initBoard(10, 12, 5);

void setup() {
  //Affiche le contenu du tableau
  for (int x = 0; x < tableau.length; x++) {
    for (int y = 0; y < tableau[0].length; y++) {
      if (isAMine(tableau[x][y])) {
        print("x");
      } else {
        print(getMines(x, y));
      }
    }
    print("\n");
  }
}

//Fonction qui return un tableau
int[][] initBoard(int nbLignes, int nbColonnes, int nbMines) {
  //Variable du tableau de sortie, initialiser avec la taisse souhaité
  int[][] tableau = new int[nbLignes][nbColonnes];

  //On ajoute 0 sur toutes les zones
  for (int x = 0; x < nbLignes; x++) {
    for (int y = 0; y < nbColonnes; y++) {
      tableau[x][y] = 0;
    }
  }

  //On ajoute 99 pour les zones minées
  for (int i = 0; i < nbMines; i++) {
    int positionL = int(random(nbLignes));
    int positionC = int(random(nbColonnes));

    if (tableau[positionL][positionC] != 99) {
      tableau[positionL][positionC] = 99;
    } else {
      i--;
    }
  }
  return tableau;
}

//Fonction avec sortie qui détermine si il y a une mine sur la case
boolean isAMine(int zone) {
  if (zone == 99) {
    return true;
  } else {
    return false;
  }
}

//Fonction pour savoir si une position est sortie du tableau 
boolean sortie(int x, int y) {
  if (x >= 0 && x < tableau.length && y >= 0 && y < tableau[0].length) {
    return false;
  } else {
    return true;
  }
}
//Fonction qui return le nombre de mines au allentour
int getMines(int x, int y) {
  int nbMine = 0;

  for (int i = x-1; i <= x+1; i++) {
    for (int j = y -1; j <= y+1; j++) {
      if(!sortie(i ,j)){
        if (tableau[i][j] == 99){
          nbMine++;
        }
      }
    }
  }
  
  return nbMine;
}
