int scalonWidth = 60;
int scalonHeight = 30;
int scalonOffsetX = 0;
int scalonOffsetY = 20;

void setup(){

  size(600,600);

}

void draw(){
  for(int i = 0; i<height;i++){
    rect((scalonWidth+scalonOffsetX)*i,(scalonHeight+scalonOffsetY)*i,scalonWidth,scalonHeight);
  } 
}