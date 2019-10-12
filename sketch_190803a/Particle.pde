class Particle{
  PVector loc;
  PVector vel;
  PVector acc;
  float lifespan;
  
  Particle(PVector p){
    loc  = p.get();  
    vel = new PVector();
    acc = new PVector();
    lifespan = 255;
  }
  
  void update(){
    vel.add(acc);  
    loc.add(vel);
    lifespan -= 2.0;
    vel.mult(0);
  }
  
  void applyForce(PVector f){
    acc.add(f);  
  }
  
  boolean IsDead(){
    if (lifespan < 0.0){
      return true; 
    } else {
      return false;  
    }
  }
  
  void display(){
    stroke(0,lifespan);
    fill(175,lifespan);
    rect(loc.x,loc.y,8,16);
  }
  
  void run(){
    update();  
    display();
  }
}
