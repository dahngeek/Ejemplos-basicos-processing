char[] pizza = {'A','B','C','D','E','F','G','H'};

void setup(){
  size(400,400);
}


void draw(){
  tabAjedrez();
  for(int i=0; i<pizza.length;i++){
    drawPeon(pizza[i],2);
  }
}

void tabAjedrez(){
  int y =0;
  while(y<8){
    for(int x=0; x<8; x++){
      if(y%2==0){ //Si la fila es par
        if(x%2==0){fill(255);}else{fill(0);}
      }else { //si la fila es impar
        if(x%2==0){fill(0);}else{fill(255);}
      }
      rect(x*(width/8),y*(height/8),(width/8),(height/8));
    }
    y++;
  }
}

void drawPeon(char posA, int posB){
   int x = getposX(posA);
   int y = getposY(posB);
   fill(255,0,0);
   ellipse(x,y,(width/8)-10,(height/8)-10);
   ellipse(x,y,(width/8)-30,(height/8)-30);
}

int getposX(char pos){
  int retorno = 0;
  switch(pos){
     case 'A':
       retorno = int((2*(width/16))-(width/16));
       break;
     case 'B':
       retorno = int((4*(width/16))-(width/16));
       break;
     case 'C':
       retorno = int((6*(width/16))-(width/16));
       break;
     case 'D':
       retorno = int((8*(width/16))-(width/16));
       break;
     case 'E':
       retorno = int((10*(width/16))-(width/16));
       break;
     case 'F':
       retorno = int((12*(width/16))-(width/16));
       break;
     case 'G':
       retorno = int((14*(width/16))-(width/16));
       break;
     case 'H':
       retorno = int((16*(width/16))-(width/16));
       break;
  }
  return retorno;
}

int getposY(int pos){
  return int((pos*2*(height/16))-(height/16));
}