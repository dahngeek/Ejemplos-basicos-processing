
void setup(){
  size(450,450);
}

void draw(){
  int color1 = round(random(255));
  int color2 = round( random( 255 ) );
  int color3 = round( random( 255 ) );
  background(color1,color2,color3);
  //println("RGB("+color1+","+color2+","+color3+")");
  println("x_"+mouseX+"     y_"+mouseY);
  delay(1000);
}