float y = 0;
float x = 0;
int i = 0;
int j = 0;

void setup() {
  size(100, 100);
  rectMode(CENTER);
  noLoop();
}

void draw() { 
  background(0);   // Set the background to black
  
  fill(random(255),random(255),random(255));
  float randomsize = random(10);
  rect(i,j,randomsize,randomsize);
  
  if(i==100){
    i=0;
    j=j+5;
  } else {
    i=i+5;
  }
  if(j==100){
      j=0;
  }
   delay(10);
} 

void mousePressed() {
  loop();
}