boolean up=false, down=false, right=false, left=false;
int x=100;
int y=100;


void setup(){
  size(300,300);
}

void draw(){
  background(0);
  dibujarRect1();
  dibujarRect2();
  moverRect();
}

void moverRect(){
  if (up) y--;
  if (down) y++;
  if (right) x++;
  if (left) x--;
}

void dibujarRect1(){
  rectMode(CORNER);
  fill(255,0,0);
  if((mouseX+40>=x || mouseX>=x) && mouseX<=x+40 && (mouseY+40>=y || mouseY>=y) && mouseY<=y+40){
     fill(0,255,0);
  }
  rect(x,y,40,40);
}

void dibujarRect2(){
  rectMode(CORNER);
  fill(0,0,255);
  if((mouseX+40>=x || mouseX>=x) && mouseX<=x+40 && (mouseY+40>=y || mouseY>=y) && mouseY<=y+40){
    fill(0,255,0);
  }
  rect(mouseX,mouseY,40,40);
}

void keyPressed(){
  if (key == 'w' || key == 'W') up = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'd' || key == 'D') right = true;
}
void keyReleased(){
  if (key == 'w' || key == 'W') up = false;
  if (key == 'a' || key == 'A') left = false;
  if (key == 's' || key == 'S') down = false;
  if (key == 'd' || key == 'D') right = false;
}