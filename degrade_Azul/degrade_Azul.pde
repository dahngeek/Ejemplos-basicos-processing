void setup(){

  size(600,720);

}

void draw(){

  for(int i=0;i<255;i++){
    fill(0,0,i);
    stroke(0,0,i);
    rect(0,(height/255.0)*i,width,(height/255.0));
    //line(0,i,width,i);
  
  }


}