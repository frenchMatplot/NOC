mover m;
PVector fo;
void setup(){
  size(600,400);
  m = new mover(width/2,height/2);
}

void draw(){
  background(255);
  PVector mouse = new PVector(mouseX,mouseY);
  PVector dir = PVector.sub(mouse, m.location);
  m.display();
  m.update();
  m.applyForce(dir);
}
