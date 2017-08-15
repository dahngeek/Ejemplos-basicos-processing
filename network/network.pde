ArrayList<PVector> puntos = new ArrayList<PVector>();

int current = 0;

void setup(){
  size(500,500);
  background(255,255,255);
}

void draw(){
  for (int i = 0; i < puntos.size(); i++) {
    PVector elemento = puntos.get(i);
    for (int connected = 0; connected < puntos.size(); connected++) {
      PVector element = puntos.get(connected);
      stroke(100+random(155),100+random(155),100+random(155));
      line(elemento.x,elemento.y,element.x,element.y);
    }
    stroke(0,0,0);
    fill(0,0,0);
    ellipse(elemento.x,elemento.y,2,2);
  }
}

void mouseClicked(){
  PVector pizza = new PVector();
  pizza.x = mouseX;
  pizza.y = mouseY;
  puntos.add(pizza);
}

void keyPressed(){

}