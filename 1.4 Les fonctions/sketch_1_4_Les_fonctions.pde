int position =0;
void setup(){
  print(position);
  
  walk();
  print(position);
  jump();
  print(position);
  jump();
  print(position);
  walk();
  print(position);
  walk();
  print(position);
}
void walk(){
  position = position + 1;
}
void jump(){
  position = position + 2;
}
