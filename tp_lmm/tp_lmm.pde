import processing.sound.*;
SoundFile auch, llanto, sfondo;
PImage fondo;
Cara ca;
ojos o;
click c;
garabato g;

void setup() {
  size(800, 800);
  background(#72ddaa);

  ca = new Cara();
  o = new ojos();
  c = new click();
  g = new garabato();
  fondo = loadImage("espejo.png");

  auch = new SoundFile(this, "auch2.wav");
  llanto = new SoundFile(this, "llanto.mp3");
  sfondo = new SoundFile(this, "fondo.wav");
  sfondo.amp(0.2);
  sfondo.loop();
}
void draw() {
  background(#72ddaa);
  image(fondo, width/2, height/2, width+300, height+60);
  noStroke();
  fill(255);
  circle(width/2, height/3, 300);

  o.dibujar();
  ca.dibujar();
  c.cambio();
  g.actualizar();
  g.dibujar();
}
void mouseClicked() {
  ca.cambios();
  o.cambios();
}
//{}
