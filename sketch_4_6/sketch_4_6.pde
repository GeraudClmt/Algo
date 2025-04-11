//Appel la fonction pour creer un tableau
int[][][]tableau = initBoard(10, 10, 10);
int tailleCarre = 25;
int[] limiteCarre = new int[tableau.length];
boolean autorisationDeJeu = true;

void setup() {
  size(500, 250);
  textSize(tailleCarre);
  creationTableauLimiteCarre();
}
void draw() {
  generateurCarre();
}

void keyPressed() {
  autorisationDeJeu = true;
  
  tableau = initBoard(10, 10, 10);
}
void mouseClicked() {
  if (autorisationDeJeu) {
    println(caseEnFonctionDePosi(mouseX) + " "+ caseEnFonctionDePosi(mouseY));

    int positionXDansTableau = caseEnFonctionDePosi(mouseX);
    int positionYDansTableau = caseEnFonctionDePosi(mouseY);

    if (isAMine(tableau[positionXDansTableau][positionYDansTableau][0])) {
      println("mine");
    } else {
      println("Il y a " + getMines(positionXDansTableau, positionYDansTableau) + " mines autours");
    }
    //Rend visible la case sélectionné
    tableau[positionXDansTableau][positionYDansTableau][1] = 1;
  }
}

//Determine la position deans le tableau en fonction de la position réel
int caseEnFonctionDePosi(int position) {
  for (int i = 0; i < limiteCarre.length; i++) {
    if (i+1 == limiteCarre.length) {
      return i;
    } else if (position >= limiteCarre[i] && position <= limiteCarre[i+1] ) {
      return i;
    }
  }
  return 0;
}
//Generateur de case
void generateurCarre() {
  //Initialisation position de départ
  int posiCarreX = 0;
  int posiCarreY = 0;
  for (int y = 0; y < tableau.length; y++) {
    for (int x = 0; x < tableau.length; x++) {
      if (tableau[x][y][1] == 1) {
        if (isAMine(tableau[x][y][0])) {
          autorisationDeJeu = false;
          fill(255, 0, 0);
          rect(posiCarreX, posiCarreY, tailleCarre, tailleCarre);
          if (!autorisationDeJeu) {
            fill(0);
            text("Game Over", 320, 100);
          }
        } else {
          int nbMines = getMines(x, y);
          fill(255, 255, 255);
          rect(posiCarreX, posiCarreY, tailleCarre, tailleCarre);
          fill(0);
          text(str(nbMines), posiCarreX +7, posiCarreY +20);
        }
      } else {
        fill(0, 0, 255);
        rect(posiCarreX, posiCarreY, tailleCarre, tailleCarre);
      }


      posiCarreX = posiCarreX + tailleCarre;
    }
    posiCarreY = posiCarreY + tailleCarre;
    posiCarreX = 0;
  }
}


void creationTableauLimiteCarre() {
  for (int i = 0; i < limiteCarre.length; i++) {
    limiteCarre[i] = i * tailleCarre;
  }
}

//Fonction qui return un tableau
int[][][] initBoard(int nbLignes, int nbColonnes, int nbMines) {
  //Variable du tableau de sortie, initialiser avec la taisse souhaité
  int[][][] tableau = new int[nbLignes][nbColonnes][2];

  //On ajoute 0 sur toutes les zones
  for (int x = 0; x < nbLignes; x++) {
    for (int y = 0; y < nbColonnes; y++) {
      tableau[x][y][0] = 0;
      tableau[x][y][1] = 0;
    }
  }

  //On ajoute 99 pour les zones minées
  for (int i = 0; i < nbMines; i++) {
    int positionL = int(random(nbLignes));
    int positionC = int(random(nbColonnes));

    if (tableau[positionL][positionC][0] != 99) {
      tableau[positionL][positionC][0] = 99;
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
      if (!sortie(i, j)) {
        if (tableau[i][j][0] == 99) {
          nbMine++;
        }
      }
    }
  }

  return nbMine;
}
