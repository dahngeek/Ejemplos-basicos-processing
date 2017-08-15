

void setup(){
  size(400,400);
  fill(0);
}

void draw(){
  background(255);
  line(width/2.0,0,width/2.0,height);
  line(0,height/2.0,width,height/2.0);
  
  
  if(mouseX <= width/2.0 && mouseY<= height/2.0){
    rect(0,0,width/2.0,height/2.0);
  }
  if(mouseX >= width/2.0 && mouseY<= height/2.0){
    rect(width/2.0,0,width/2.0,height/2.0);
  }
  if(mouseX >= width/2.0 && mouseY>= height/2.0){
    rect(width/2.0,height/2.0,width/2.0,height/2.0);
  }
  if(mouseX <= width/2.0 && mouseY>= height/2.0){
    rect(0,height/2.0,width/2.0,height/2.0);
  }

}