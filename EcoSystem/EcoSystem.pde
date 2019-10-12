ball b;
mover m;
walker w;
void setup() {
  size(400,400);
  b = new ball();
  m = new mover();
  w = new walker();
}

void draw() {
  background(255);
  w.display();
  w.step();
  b.update();
  m.update();
  b.display();
  m.display();
  m.checkEdge();
  b.checkEdge();
}
