void setup() {
  size(770, 170);
  smooth();
}

void draw() {
  background(0,0,0,0);

  int s = second();     // Werte von 0 - 59
  int m = minute();     // Werte von 0 - 59
  int h = hour();

  textAlign(CENTER);

noStroke();
// ellipsen zeichnen
  for (int i =0; i<720; i+=12) {
fill(255);
    ellipse(i+40, 130, 2, 2);
    //ellipse bunt markieren
    if (i==s*12) {

      fill(255,0,0);
     ellipse(i+40,130,15,15);
     fill(255);
     text(s,20,134);
    }
  }

// ellipsen zeichnen
  for (int i =0; i<720; i+=12) {
fill(255);
    ellipse(i+40, 100, 2, 2);
    //ellipse bunt markieren
    if (i==m*12) {

      fill(0,255,0);
     ellipse(i+40,100,15,15);
     fill(255);
     text(m,20,104);
    }
  }


  for (int i =0; i<360; i+=12) {
fill(255);
    ellipse(i+40, 70, 2, 2);
    //ellipse bunt markieren
    if (i==h*12) {

      fill(0,0,255);
     ellipse(i+40,70,15,15);
     fill(255);
     text(h,20,74);
    }
  }
}
void  keyPressed(){
  saveFrame();
}
