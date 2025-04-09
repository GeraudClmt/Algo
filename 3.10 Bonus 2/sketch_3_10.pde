
void setup() {
  for(int i = 0; i <= 1000; i++){
    isPrime(i);
  }
}

void isPrime(int nombre) {
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
}
