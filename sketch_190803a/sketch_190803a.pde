Particle p;
PVector g;
void setup(){
  size(600,400);
  p = new Particle(new PVector(width/2,10));
  g = new PVector(0,0.4);
}

void draw(){
  background(255);
  
  p.run();
  p.applyForce(g);
  
  if (p.IsDead()){
    println("I'm dead !!!");    
    noLoop();
  }
}
