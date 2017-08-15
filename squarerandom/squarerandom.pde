void setup(){
  size(200,200);
  frameRate(5);
}

void draw(){
  background(255);
  randomRect();
}

void randomRect(){
  rectMode(CENTER);
  rect(width/2,height/2,random(0,width/2),random(0,height/2));

}