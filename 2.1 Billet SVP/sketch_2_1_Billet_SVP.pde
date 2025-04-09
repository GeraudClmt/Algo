
void setup(){
  calculePrix(4);
  calculePrix(9);
}

void calculePrix (int nombreDeBillets){
  //10.50€ un billet
  float prix = nombreDeBillets * 10.50;
  println("Le prix pour " + nombreDeBillets + " est de " + prix + "€");
}
