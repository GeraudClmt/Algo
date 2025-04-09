
void setup(){
  float prix4 = calculePrix(4);
  float prix9 = calculePrix(9);
  
  println("Le prix pour 4 est de " + prix4 + "€");
  println("Le prix pour 9 est de " + prix9 + "€");
}

float calculePrix (int nombreDeBillets){
  //10.50€ un billet
  float prix = nombreDeBillets * 10.50;
  return prix;
  
}
