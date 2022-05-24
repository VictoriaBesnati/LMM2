import processing.sound.*;
SoundFile auch, llanto, sfondo;

Cara ca;
ojos o;
click c;
garabato g;
garabato h;
garabato i;

boolean clickee;
boolean clickee5;
boolean clickee10;
int contador=0;
PImage fondo;
void setup() {
  size(800, 800);
  background(#72ddaa);

  fondo = loadImage("espejo.png");

  ca = new Cara();
  o = new ojos();
  c = new click();
  g = new garabato();
  h = new garabato();
  i = new garabato();

  auch = new SoundFile(this, "auch2.wav");
  llanto = new SoundFile(this, "llanto.mp3");
  sfondo = new SoundFile(this, "fondo.wav");

  sfondo.amp(0.2);
  sfondo.loop();
}
void draw() { 
  if (contador>=5) {
    clickee5=true;
  }
  if (contador>=10) {
    clickee10=true;
  }
  background(#72ddaa);
  image(fondo, width/2, height/2, width+300, height+60);
  noStroke();
  fill(255);
  circle(width/2, height/3, 300);
  o.dibujar();
  ca.dibujar();
  c.cambio();
  if (clickee==true) {
    g.actualizar();
    g.dibujar(400, 400);
  }

  if (clickee5==true) {

    h.actualizar();
    h.dibujar(400, 100);
  }

  if (clickee10==true) {
    i.actualizar();
    i.dibujar(400, 300);
  }
  println(contador);
}
void mouseClicked() {
  ca.cambios();
  o.cambios();
  clickee=true;
  contador++;
}
