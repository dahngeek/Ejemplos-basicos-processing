int defaultShipOffset = 0;
int xpos =0;

void setup(){
  size(400,400);
  defaultShipOffset =height-int(height*0.1);
  xpos=width/2;
}

void draw(){
  background(0);
  drawFloor();
  drawSpaceship(xpos);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      xpos = gotoLeft();
    } else if (keyCode == RIGHT) {
      xpos = gotoRight();
    } 
  }
  println("Posicion: "+xpos);
}

int gotoLeft(){
  if(xpos>15){
    return xpos-5;
  } else {
    return xpos;
  }
}

int gotoRight(){
  if(xpos<width-15){
        return xpos+5;
  } else {
    return xpos;
  }
}

void drawSpaceship(int centerX){
  noStroke();
  fill(0,255,0);
  triangle(centerX, defaultShipOffset-20, centerX+10, defaultShipOffset, centerX-10, defaultShipOffset);
  rectMode(CENTER);
  rect(centerX, defaultShipOffset,30,20);
}

void drawFloor(){
  rectMode(CORNER);
  noStroke();
  fill(0,255,0);
  rect(0,height-int(height*0.01),width,5);
}