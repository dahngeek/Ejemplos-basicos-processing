int colorR = 0;
int colorG = 0;
int colorB = 0;
boolean blink = false;
boolean withCookie = false;
boolean catchCookie = false;
int widthM = 80;
int heightM = 80;
boolean shouldGrow = false;

int delay = 0;

int cookiePositionX = 100+round(random(400));
int cookiePositionY = 550;

void setup(){
  size(600,600);
}

void draw(){
  background(255,255,255);
  drawSpiderLine();
  drawMascot(mouseX,mouseY,blink,shouldGrow,withCookie,catchCookie);
  if(!withCookie){
    drawCookie(cookiePositionX,cookiePositionY);
  } else {
    cookiePositionX = mouseX;
  }
  if(widthM>width+300){
    widthM = 80;
    heightM = 80;
  }
  if(int(random(1000))>980 && !blink){
    blink = true;
    delay = 10;
    if(withCookie){
      shouldGrow=true;
      withCookie = false;
      catchCookie = false;
    }
  } else {
    delay--;
    if(blink && delay>0){
      blink = true;
    } else {
      blink = false;
    }
  }
  //println("x:"+mouseX+"    y:"+mouseY);
  //println("x:"+mouseX/600.0+"    y:"+mouseY/600.0);
}

void mousePressed(){
  blink =true;
}

void mouseReleased(){
  blink =false;
}

void keyPressed(){
  catchCookie = true;
  if(mouseX<cookiePositionX+60 && mouseX>cookiePositionX-60 && mouseY+50>cookiePositionY-60 && mouseY+50<cookiePositionY+60){
    withCookie = true;
  } else {
    withCookie = false;
  }
}

void keyReleased(){
  catchCookie = false;
}

void drawCookie(int cookiePositionX,int cookiePositionY){
  noStroke();
  fill(219,204,36);
  ellipse(cookiePositionX,cookiePositionY,60,60);
  ellipse(cookiePositionX,cookiePositionY+22,20,20);
  ellipse(cookiePositionX,cookiePositionY-22,20,20);
  ellipse(cookiePositionX+15,cookiePositionY-20,20,20);
  ellipse(cookiePositionX-20,cookiePositionY,20,20);
  fill(146,136,9);
  ellipse(cookiePositionX+5,cookiePositionY+4,15,13);
  ellipse(cookiePositionX+7,cookiePositionY-7,10,11);
  ellipse(cookiePositionX-8,cookiePositionY+8,8,7);
}

void drawSpiderLine(){
  fill(0);
  stroke(0);
  line(mouseX,0,mouseX,mouseY);
}

void drawMascot(int x, int y, boolean blink, boolean grow, boolean withCookie,boolean catchCookie){
  int offset = 5;
  if(grow){
    widthM = widthM*2;
    heightM = heightM*2;
  }
  shouldGrow = false;
  fill(colorR,colorG,colorB);
  ellipse(x,y,widthM,heightM);
  if(!catchCookie && !withCookie){
    //Patas
    line(x,y,pmouseX+60,pmouseY+10);
    line(pmouseX+60,pmouseY+10,pmouseX+80,pmouseY+30);
    line(x,y,pmouseX-60,pmouseY+10);
    line(pmouseX-60,pmouseY+10,pmouseX-80,pmouseY+30);
    
    line(x,y,pmouseX+60,pmouseY+25);
    line(pmouseX+60,pmouseY+25,pmouseX+80,pmouseY+50);
    line(x,y,pmouseX-60,pmouseY+25);
    line(pmouseX-60,pmouseY+25,pmouseX-80,pmouseY+50);
  } else {
    line(x,y,pmouseX+30,pmouseY+60);
    line(pmouseX+30,pmouseY+60,pmouseX+30,pmouseY+70);
    line(x,y,pmouseX-30,pmouseY+60);
    line(pmouseX-30,pmouseY+60,pmouseX-30,pmouseY+70);
    
    line(x,y,pmouseX+30,pmouseY+75);
    line(pmouseX+30,pmouseY+75,pmouseX+30,pmouseY+78);
    line(x,y,pmouseX-30,pmouseY+75);
    line(pmouseX-30,pmouseY+75,pmouseX-30,pmouseY+78);
  }
  if(withCookie){
    drawCookie(pmouseX,pmouseY+70);
  }
  //Eyes
  int eyesize = 20;
  if(blink){
    eyesize = 0;
  }
  fill(255,255,255);
  ellipse(x+10,y+10,eyesize,eyesize);
  ellipse(x-10,y+10,eyesize,eyesize);
  fill(0,0,0);
  ellipse(x+10,y+10,eyesize*0.5,eyesize*0.5);
  ellipse(x-10,y+10,eyesize*0.5,eyesize*0.5);
  delay(20);  
}