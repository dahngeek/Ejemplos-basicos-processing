int x_circl = 20;
int y_circl = 100;
int x_circl2 = 100;
int y_circl2 = 60;

//Esta es la cantidad que va a incrementar cada cic  lo
int directionX = 1;
int directionY = 2;

int directionX2 = 4;
int directionY2 = 10;

int ancho1 = 100;
int radio1 = (ancho1/2);
int ancho2 = 40;
int radio2 = (ancho2/2);
int radio_both = radio1+radio2;

void setup(){
  size(400,400);
  fill(255,0,0);
}

void draw(){
  //El fondo en negro
  background(0);
  
  //Redundante porque por default es ceter
  ellipseMode(CENTER);
  
  //=============================== ESFERA 1 ===============================
  //Creamos esfera de 30x30
  ellipse(x_circl, y_circl, ancho1, ancho1);
  
  //Verificamos
  //No se salga a la derecha |ó| no se salga a la izquierda 
  if(x_circl>width-radio1 || y_circl <radio1 || dist(x_circl2, y_circl2, x_circl, y_circl)<radio_both){
    directionX = directionX * (-1);
  }
  
  //Verificamos
  //No se pase hacia abajo |ó| no se pase dearriba
  if(y_circl>height-radio1 || y_circl <radio1 || dist(x_circl2, y_circl2, x_circl, y_circl)<radio_both){
    directionY = directionY * (-1);
  }
  
  //Incrementamos la posición X 
  x_circl+=directionX;
  //Incrementamos posicion Y
  y_circl+=directionY;
  //=============================== /ESFERA 1 ===============================
  
  
  //Verificamos
  //No se salga a la derecha |ó| no se salga a la izquierda 
  if(x_circl2>width-radio2 || y_circl2 <radio2 || dist(x_circl2, y_circl2, x_circl, y_circl)<radio_both){
    if(dist(x_circl2, y_circl2, x_circl, y_circl)<radio_both){
      fill(random(0,255),random(150,255),random(150,255));
    }
    directionX2 = directionX2 * (-1);
  }
  
  //Verificamos
  //No se pase hacia abajo |ó| no se pase dearriba
  if(y_circl2>height-radio2 || y_circl2 <radio2 || dist(x_circl2, y_circl2, x_circl, y_circl)<radio_both){
    if(dist(x_circl2, y_circl2, x_circl, y_circl)<radio_both){
      fill(random(0,255),random(150,255),random(150,255));
    }
    directionY2 = directionY2 * (-1);
  }
  
  //Creamos esfera de 30x30
  ellipse(x_circl2, y_circl2, ancho2, ancho2);
  
  //Incrementamos la posición X 
  x_circl2+=directionX2;
  //Incrementamos posicion Y
  y_circl2+=directionY2;
}