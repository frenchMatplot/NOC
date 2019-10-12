mover m;
float tx = 1;
float ty = 0.1;
void setup() {
    size(600,400);
    m = new mover();
    background(255);
}


void draw() {
  m.update();
  m.checkEdge();
  m.display();
  tx += 0.01;
  ty += 0.001;
}
