float columnas = 10.0;
color color1 = color(0,0,0);
color color2 = color(255,0,0);
color higlightcolor = color(0,244,0);

void setup(){
  //se ejecuta una sola vez
  size(600,600);
  background(0);
}

void draw(){
  float tilewidth = (width/columnas);
  float tileheight = (height/columnas);
  //se repite
  int y=0;
  while(y<columnas){
    int x=0;
    while(x<columnas){
      
      //Si es par
      if(y%2==0){
        //si la fila es par
        if(x%2==0){
          fill(color2);
        } else {
          fill(color1);
        }
      }else {
        //si no es par
        if(x%2==0){
          fill(color1);
        } else {
          fill(color2);
        }
      }
      float posactualx = x*tilewidth;
      float posactualy = y*tileheight;
      if(mouseX>=posactualx && mouseX<=posactualx+tilewidth && mouseY>=posactualy && mouseY<=posactualy+tileheight){
        fill(higlightcolor);
      }
      rect(posactualx, posactualy,tilewidth,tileheight);
      x++;
    }
    y++;
  }  
}