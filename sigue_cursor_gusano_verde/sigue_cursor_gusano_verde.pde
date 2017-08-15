
//arreglo de la serpiente
int[] posx = new int[10];
int[] posy = new int[10];

// posicion actual de inicio / cabeza
int xActual = 100;
int yActual = 100;

// direccion serpiente
int aumentoX = 8;
int aumentoY = 0;

void setup(){
  size(700,700);
  frameRate(10);
}

void draw(){
  background(0);
  
  //recorre el vector y dibuja los circulos
  for(int i=0; i<posx.length;i++){
      if(posx[i] != 0 || posy[i] != 0){
        noStroke();
        fill(0,255,0);
        ellipse(posx[i],posy[i],32,32);
      }
  }
  recorridoSerpiente();
}

void copiarSerpiente(){
  //creamos una copia mas larga del arreglo
  int[] nuevoarregloX = new int[posx.length+1];
  int[] nuevoarregloY = new int[posy.length+1];
  
  //copiamos todos sus elementos
  for(int i=0;i<posx.length;i++){
    nuevoarregloX[i] = posx[i];
    nuevoarregloY[i] = posy[i];
  }
  //actualizamos el arreglo principal para que sea el nuevo
  posx = nuevoarregloX;
  posy = nuevoarregloY;
}

void keyPressed(){
 if (key == CODED) {
    if (keyCode == UP) {
      aumentoX = 0;
      aumentoY = -8; 
    } else if (keyCode == DOWN) {
      aumentoX = 0;
      aumentoY = 8;
    } else if (keyCode == LEFT) {
      aumentoX = -8;
      aumentoY = 0; 
    } else if (keyCode == RIGHT) {
      aumentoX = 8;
      aumentoY = 0;
    } else if (keyCode == CONTROL) {
      copiarSerpiente();
    } 
  } else {
    //nada
  }
}

void recorridoSerpiente(){ //El movimiento automatico de la serpiente
  //Guardamos la cabeza
  xActual = xActual+aumentoX;
  yActual = yActual+aumentoY;
  posx[posx.length-1] = xActual;
  posy[posy.length-1] = yActual;
  
  //corremos todas las posiciones
  for(int i=0; i< posx.length-1;i++){
    posx[i]= posx[i+1];
    posy[i]= posy[i+1];
  }
}