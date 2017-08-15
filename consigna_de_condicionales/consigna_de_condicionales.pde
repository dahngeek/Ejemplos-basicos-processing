int rvalue = 0;
int gvalue=0;
int bvalue =0;
boolean editingBackground = false;
int shape = 1; //1 circle, 2 rectangle, 3 triangle

void setup(){
  size(500,500);
}

void draw(){
  if(keyPressed){
    if(key == CODED){
      println("oded");
      if(keyCode == CONTROL && !editingBackground){
        editingBackground = true;
      } else {
        editingBackground = false;
      }
    } else {
      println(key);
      if(key == 'r' || key == 'R'){
        rvalue = 255;
        gvalue = bvalue = 0;
      } else if(key == 'G' || key == 'g'){
        gvalue = 255;
        rvalue = bvalue = 0;
      } else if(key == 'b' || key == 'B'){
        bvalue = 255;
        rvalue = gvalue = 0;
      } else if(key == '1'){
        shape = 1;
      } else if(key == '2'){
        shape = 2;
      } else if(key == '3'){
        shape = 3;
      }
    }
  }
  
  if(editingBackground){
    background(rvalue,gvalue,bvalue);
  }else {
    fill(rvalue,gvalue,bvalue);
  }
  if(mousePressed){
    switch(shape){
      case 1: 
        ellipse(mouseX-10,mouseY-10,mouseX+10,mouseY+10);
      break;
      case 2: 
        rectMode(CENTER);
        rect(mouseX,mouseY,mouseX+10,mouseY+10);
      break;
      case 3: 
        int value = round((mouseX/500.0)*60);
        triangle(mouseX,mouseY-value,mouseX+value,mouseY+value,mouseX-value,mouseY+value);
      break;
      default:
        ellipse(mouseX-10,mouseY-10,mouseX+10,mouseY+10);
      break;
    }
    
  }
}