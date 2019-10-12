class Attractor{
  PVector location;
  PVector velocity;
  PVector acc; 
  float mass;
  float G;
  Attractor(float x,float y,float m){
    location = new PVector(x,y);
    velocity = new PVector();
    acc = new PVector();
    mass = m;
    G = 0.4;
  }
 
  void update(){
    velocity.add(acc);
    location.add(velocity);
    velocity.mult(0);
  }
  
  PVector attract(mover m){
    PVector force = PVector.sub(location,m.location);
    float distance = force.mag();
  //  distance = constrain(distance,5.0,25.0);
    force.normalize();
    float strengh = (G * mass * m.m) / (distance * distance);
    force.mult(strengh);
    return force;
  }
  void display(){
    fill(255);
    noStroke();
    ellipse(location.x,location.y, mass*2,mass*2);
  } 
 }
