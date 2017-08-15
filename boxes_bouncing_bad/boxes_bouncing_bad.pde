
int[] squareW = {50,50}; 

int[] posX={100,200};
int[] posY={200,100};

int[] directionX = {1,2};
int[] directionY = {1,2};


void setup(){
  size(400,400);
}

void draw(){
  background(255);
  for(int i=0;i<2;i++){
    if(!isInsideW(i)){
       directionX[i] = directionX[i] * (-1);
    }
    posX[i] += directionX[i];
    if(!isInsideH(i)){
       directionY[i] = directionY[i] * (-1);
    }
    posY[i] += directionY[i];
    check_collision(i);
    rectMode(CENTER);
    rect(posX[i],posY[i],squareW[i],squareW[i]);
  }
  

}

boolean isInsideW(int squareId){
  return (posX[squareId]+(squareW[squareId]/2)<width && posX[squareId]-(squareW[squareId]/2)>0);
}

boolean isInsideH(int squareId){
  return (posY[squareId]+(squareW[squareId]/2)<height && posY[squareId]-(squareW[squareId]/2)>0);
}

void check_collision(int squareId){
  for(int i=0;i<posX.length;i++){
    if(i==squareId) return;
    if(posX[squareId]+(squareW[squareId]/2)>=posX[i]-(squareW[i]/2) && posY[squareId]+(squareW[squareId]/2)>=posY[i]-(squareW[i]/2) && posY[squareId]-(squareW[squareId]/2)<=posY[i]+(squareW[i]/2)){
      directionX[squareId] = directionX[squareId] * (-1);
      directionX[i] = directionX[i] * (-1);
    }
    if(posX[squareId]-(squareW[squareId]/2)>=posX[i]+(squareW[i]/2) && posY[squareId]+(squareW[squareId]/2)>=posY[i]-(squareW[i]/2) && posY[squareId]-(squareW[squareId]/2)<=posY[i]+(squareW[i]/2)){
      directionX[squareId] = directionX[squareId] * (-1);
      directionX[i] = directionX[i] * (-1);
    }
    if(posY[squareId]-(squareW[squareId]/2)>=posY[i]+(squareW[i]/2) && posX[squareId]+(squareW[squareId]/2)>=posX[i]-(squareW[i]/2) && posX[squareId]-(squareW[squareId]/2)<=posX[i]+(squareW[i]/2)){
      directionY[squareId] = directionY[squareId] * (-1);
      directionY[i] = directionY[i] * (-1);
    }
    if(posY[squareId]+(squareW[squareId]/2)>=posY[i]-(squareW[i]/2) && posX[squareId]+(squareW[squareId]/2)>=posX[i]-(squareW[i]/2) && posX[squareId]-(squareW[squareId]/2)<=posX[i]+(squareW[i]/2)){
      directionY[squareId] = directionY[squareId] * (-1);
      directionY[i] = directionY[i] * (-1);
    }
  }
}