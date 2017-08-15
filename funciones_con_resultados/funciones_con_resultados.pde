

void setup(){
  println(distanciaDosPuntos(10,10,40,50));

}

int centAFarenheit(int centig){
  return int(centig*1.8+32);
}

int fahrACentig(int fahr){
  return int((fahr - 32)/1.8);
}

float distanciaDosPuntos(int x1, int y1, int x2, int y2){
  return sqrt(sq(x2-x1)+sq(y2-y1));
}

float funcionY(float x){
  return 2*x+3;
}

float perimetro(float radio){
  return 2*PI*radio;
}

float area(float radio){
  return PI*sq(radio);
}