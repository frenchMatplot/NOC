// The Nature of Code
// Valentin Girard Based on Shiffman's code
// http://natureofcode.com

class Mover{

  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float m, float x , float y) {
    mass = m;
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(0,127);
    ellipse(position.x,position.y,mass*16,mass*16);
  }

  void checkEdges() {

    if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      velocity.x *= -1;
      position.x = 0;
    }

    if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
    }

  }
  
  boolean isInside(Liquid l){
   if (position.x > l.x && position.x < l.x + l.w && position.y > l.y && position.y < l.y+l.w){
     return true;
   } else {
     return false; 
   }
    
  }

}
