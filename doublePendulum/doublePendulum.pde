pendulum p;
pendulum p1;

void setup(){
  size(600,400);
  p = new pendulum(null, 100);
  p1 = new pendulum(p,50);
}


void draw(){
  background(255);
  p.display();
  p.update();
  p1.display();
  p1.update();
}
