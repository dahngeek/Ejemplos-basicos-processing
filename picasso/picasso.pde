PVector[] vectors = new PVector[15];
float red = 0.0;
float grin = 0.0;
float blue = 0.0;
int i = 0;
void setup(){
  size(1000,500);
  background(0);
  for (int i = 0; i < vectors.length; i++) {
    vectors[i] = new PVector();
  }
}
void draw(){
 
}

void mouseClicked(){
  if(i==14){
    i=0;
  }
  println(i);
  vectors[i].x = mouseX;
  vectors[i].y = mouseY;
  fill(red,grin,blue);
  beginShape();
  for (int j = 0; j < i+1; j++) {
    vertex(vectors[j].x,vectors[j].y);
  }
  endShape();
  i++;
}

void keyPressed(){
   if (key == CODED) {
    if (keyCode == UP) {
      i=0;
    }
  }else{ 
   red = random(255);
    grin = random(255);
    blue = random(255);  
  }
}