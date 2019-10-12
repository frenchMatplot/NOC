class mover{
  PVector location;
  PVector velocity;
  PVector acc;
  
  mover(float x, float y){
    location = new PVector(x,y);
    velocity = new PVector();
    acc = new PVector();
  }
  
  void update(){
    velocity.add(acc);
    location.add(velocity);
    velocity.mult(0);
  }
  
  void applyForce(PVector f){
    PVector force = f;  
    force.normalize();
    force.limit(5);
    acc.add(force);
  }
  
  void display(){
    fill(0);
    stroke(255);
    circle(location.x,location.y, 16);
  }

}
