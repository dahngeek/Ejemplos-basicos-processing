
void setup(){
  size(400,400);
}

void draw(){
    background(255);
   for(float p=0;p<2;p++){
     for(float q=0;q<4;q++){
         float currX = (width/5.0)*(q+1);
         float currY = height/3.0*(p+1);
         float ellipseWidth = width/10.0;
         float ellipseHeight = width/6.0;
         float offset = ellipseWidth/2.0;
         if(mouseX>=currX-offset && mouseX<=currX+offset && mouseY>=currY-offset && mouseY<=currY+offset){
           float currR = 0;
           if(p>0){
             currR =255;
           }
           float currG= 0;
           if((q+1)>2){
             currG = 0;
           } else {
             currG = 255;
           }
           float currB = ((q+1)%2)*255;
           println(currR+" "+currG+" "+currB);
           stroke(255,0,0);
           fill(currR,currG,currB);
           ellipse(currX,currY,ellipseWidth+10,ellipseWidth+10);
         } else {
           stroke(0);
           fill(0);
           ellipse(currX,currY,ellipseWidth,ellipseWidth);
         }
     }  
   }

}