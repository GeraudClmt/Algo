
void setup(){
  syracuse(14);
}

void syracuse(int nbDebut){
  println(nbDebut);
  
  while(nbDebut != 1){
    if(nbDebut % 2 == 0){
      nbDebut = nbDebut / 2;
    }
    else{
      nbDebut = nbDebut * 3 + 1;
    }
    println(nbDebut);
  }
}
