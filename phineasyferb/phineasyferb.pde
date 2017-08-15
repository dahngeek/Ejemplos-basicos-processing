

void setup(){
size(450,450);

}

void draw(){
  background(0);
  drawPhineas();
  drawOjo(320,105+round(16*(mouseY/450.0)));
  drawOjo(292,105+round(10*(mouseY/450.0)));
  drawFerb();
  drawOjo(104,105+round(9*(mouseY/450.0)));
  drawOjo(80,100+round(15*(mouseY/450.0)));
  println("x: "+mouseX+" y: "+mouseY);
}

void drawFerb(){
  //Cabeza
  fill(255, 229, 200);
  rect(50,50,60,190);
  //Nariz
  noStroke();
  rect(80,120,60,60,20);
  //Pelo
  fill(2, 179, 89);
  beginShape();
  vertex(45,55);
  vertex(45,45);
  vertex(55,20);
  vertex(65,35);
  vertex(75,35);
  vertex(89,26);
  vertex(99,46);
  vertex(109,46);
  vertex(120,26);
  vertex(120,57);
  // etc;
  endShape();
  fill(255,255,255);
  stroke(0,0,0);
  ellipse(80, 106, 27, 35);
  ellipse(100, 110, 24, 27);
}

void drawPhineas(){
  //Ojo detras
  fill(255,255,255);
  stroke(0,0,0);
  ellipse(300, 117, 35, 33);
  //piel
  fill(255, 229, 200);
  triangle(250,150,380,70,360,200);
  //ojo delante
  fill(255,255,255);
  stroke(0,0,0);
  ellipse(325, 117, 35, 33);
  //Pelo
  fill(238, 99, 78);
  beginShape();
  vertex(372,75);
  vertex(358,70);
  vertex(371,67);
  vertex(366,55);
  vertex(383,66);
  vertex(390,76);
  vertex(380,73);
  vertex(386,91);
  // etc;
  endShape();
}

void drawOjo(int x,int y){
  fill(0,0,0);
  stroke(0,0,0);
  ellipse(x, y, 10, 15);
}