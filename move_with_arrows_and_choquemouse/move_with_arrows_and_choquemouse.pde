boolean up=false, down=false, right=false, left=false;
int x=100;
int y=100;


void setup(){
  size(300,300);
}

void draw(){
  background(0);
  dibujarRect();
  moverRect();
}

void moverRect(){
  if (up) y--;
  if (down) y++;
  if (right) x++;
  if (left) x--;
}

void dibujarRect(){
  rectMode(CORNER);
  fill(255,0,0);
  if(mouseX<=x+40 && mouseX>=x && mouseY>=y && mouseY<=y+40){
     fill(0,255,0);
  }
  rect(x,y,40,40);
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