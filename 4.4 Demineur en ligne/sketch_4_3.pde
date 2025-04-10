//Appel la fonction pour creer un tableau
int[] tableau = initBoard(2, 1);

void setup() {
  //Affiche le contenu du tableau
  for(int i = 0; i<tableau.length; i++ ){
    if(isAMine(tableau[i])){
      println("X");
    }
    else{
      println(getMines(i) + " mines autour");
    }
  }
  
}

//Fonction qui return un tableau
int[] initBoard(int tailleTableau, int nbMines) {
  //Variable du tableau de sortie, initialiser avec la taisse souhaité
  int[] tableau = new int[tailleTableau];
  
  //On ajoute 0 sur toutes les zones
  for (int i = 0; i < tableau.length; i++) {
    tableau[i] = 0;
  }
  //On ajoute 99 pour les zones minées
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

//Fonction pour avec sortie qui détermine si il y a une mine sur la case
boolean isAMine(int zone){
  if(zone == 99){
    return true;
  }
  else{
    return false;
  }
}

//Fonction qui return le nombre de mines au allentour
int getMines(int zone){
  int nbMine = 0;
  //Voie si il y a une mine sur la case du dessous
  if(zone-1 >= 0 && tableau[zone-1] == 99){ 
    nbMine++;
  }
  //Voie si il y a une mine sur la case au dessus
  if(zone+1 < tableau.length && tableau[zone+1] == 99){
    nbMine++;
  }
  return nbMine;
}
