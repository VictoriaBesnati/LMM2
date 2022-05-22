class garabato {
  PGraphics ga;
  float x, y, dir, vel, angulo, dista;
  garabato() {
    ga = createGraphics(width, height);
    ga.beginDraw();
    ga.endDraw();
    x = width/2;
    y = height/2;
  }
  void actualizar() {
    dir += random(10, 40);
    vel = 1;
    dista = random(2, 3);
    x = x+dista*cos(dir);
    y = y+dista*sin(dir);
  }
  void dibujar() {    
    ga.beginDraw();
    ga.fill(0);
    ga.circle(x, y, 5);
    ga.endDraw();
    push();
    if (mousePressed) {
      translate(mouseX, mouseY);
      image(ga, 0, 0);
    }
    pop();
  }
}
