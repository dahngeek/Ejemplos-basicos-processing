void setup(){
  size(400,400);
}

void draw(){

    for(int i = 15; i>0;i--){
      switch (int(random(3))){
        case 0:
          fill(i*10,0,0);
          break;
        case 1:
          fill(0,i*10,0);
          break;
        case 2:
          fill(0,0,i*10);
          break;
      }
      ellipse(width/2,height/2, 10*i, 10*i);
    }


}