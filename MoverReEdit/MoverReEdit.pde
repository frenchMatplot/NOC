// The Nature of Code
// Valentin Girard
// Studing The Nature of Code
Liquid liquid;
Mover[] movers = new Mover[20];

void setup() {
  size(640,360);
  liquid = new Liquid(0,0,width,height,0.1);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1,4),0,0); 
  }
}

void draw() {
  background(255);
  liquid.display();
  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(0.01,0);
    PVector gravity = new PVector(0,0.1*movers[i].mass);
    PVector friction = movers[i].velocity.get();
    float c = 0.001;
    friction.mult(-1);
    friction.normalize();
    friction.mult(c);
    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
  
}
