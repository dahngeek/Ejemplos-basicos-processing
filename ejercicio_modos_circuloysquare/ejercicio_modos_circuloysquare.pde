int posx = 0;
int posy = 0;
boolean reverse = false;
boolean reversey = false;
int modo = 1;

int sqW = 1;
int sqH = 1;

void setup(){
  size(500,450);
}

void draw(){
  switch(modo){
   case 1:
     drawCircle();
   break;
   case 2:
     drawSquare();
   break;
  }
}

void drawSquare(){
  background(255);
  rectMode(CENTER);
  rect(width/2.0,height/2.0,sqW,sqH);
  
  if(sqW<=width){
    sqW++;
  } else {
    sqW--;
  }
  if(sqH<=width){
    sqH++;
  } else {
    sqH--;
  }
}

void drawCircle(){
  background(255);
  fill(0);
  ellipse(posx,posy,10,10);
  if(posx<=width && !reverse){
    posx++;
  } else if(posx>=0) {
    reverse = true;
    posx--;
  } else {
    reverse = false;
  }
  
  if(posy<=height && !reversey){
    posy++;
  } else if(posy>=0) {
    reversey = true;
    posy--;
  } else {
    reversey = false;
  }
}

void keyPressed(){
 if(key == CODED){
 } else {
   if((key == '1')) {
     println("modo: "+key);
     modo = 1;
     println(modo);
   } else if((key == '2')){
     println("modo: "+key);
     modo = 2;
     println(modo);
   }
 }
}