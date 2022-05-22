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
}
void draw() {
  
  background(#72ddaa);
  fill(255);
  circle(width/2, height/3, 380);
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
