class Particle {
  PVector pos;
  PVector vel;
  PVector acc;
  float lifespan;
  
  Particle(PVector l){
    pos = l.get();
    vel = new PVector();
    acc = PVector.random2D();
    lifespan= 255; 
  }
  
  void edges(){
    if (pos.x < 0){
      pos.x = 0;
      acc.x *= -1;
    } else if (pos.x> width){
      pos.x = width;
      acc.x *= -1;
    } else if (pos.y> height){
      pos.y = height;
      acc.y *= -1;
    } else if (pos.y < 0){
      pos.y = 0;
      acc.y *= -1;
    } 
  }
  
  void run(){
    update();
    show();
    edges();
    
  }
  
  boolean isDead(){
    if (lifespan < 0.0){
      return true;  
    } else {
      return false;  
    }
  }
  
  void applyForce(PVector f){
    PVector force = f.copy();    
    acc.add(force);
  }
  
  void update(){
    vel.add(acc);
    pos.add(vel);
    vel.mult(0);
    lifespan -= 2.0;
  }
  
  void show(){
    fill(255,0,140,lifespan);
    stroke(255,0,140,lifespan);
    ellipse(pos.x,pos.y,16,16);
  }
}
