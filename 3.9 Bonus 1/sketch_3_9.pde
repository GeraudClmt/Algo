
void setup() {
  isPrime(37);
}

void isPrime(int nombre) {
  println(nombre);
  boolean premier = true;
  
  for(int i = 2; i < nombre; i++){
    if(nombre % i == 0){
      premier = false;
      break;
    }
  }
  if(premier){
    println("Le nombre " + nombre + " est un premier");
  }
  else{
    println("Le nombre " + nombre + " n'est pas un premier");
  }
}
