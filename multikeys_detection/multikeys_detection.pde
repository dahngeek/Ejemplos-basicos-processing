int nrKeys = 0;
PFont font;
boolean[] downKeys = new boolean[256];

void setup() {
 size(200,200);
 fill(255);
 font = createFont("Courier", 20);
 textFont(font);
}

void draw() {
 background(0);
 nrKeys = 0;
 for (int i=0; i<downKeys.length; i++) {
   if (downKeys[i]) {
     nrKeys++; 
     text((char)i, 10*nrKeys,height/2);
   }
 }
 text("Nr. of Keys: " + nrKeys, 20,20); 
}

void keyPressed() {
 println(key);
 if (key<256) {
   downKeys[key] = true; 
 }
}

void keyReleased() {
 if (key<256) {
   downKeys[key] = false;  
 }
}