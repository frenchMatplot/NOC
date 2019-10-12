mover m;

void setup(){
  size(400,600); 
  m = new mover();
}

void draw() {
 background(255); 
 m.update();
 m.checkEdge();
 m.display();
}
