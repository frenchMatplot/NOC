class mover{
 PVector location;
 PVector velocity;
 PVector acc;
 float mass = 10.0;
 
 mover(){
  location = new PVector(0,0);
  velocity = new PVector(0,0);
  acc = new PVector(0,0);
 }
 
 private void ell(PVector l,int z){
   ellipse(l.x,l.y,z,z);
 }
 
 void applyForce(PVector f){
   PVector force = PVector.div(f, mass);
   acc.add(force);
 }
 
 void update(){
  velocity.add(acc);
  location.add(velocity);
  velocity.mult(0);
 }
 
 void display(){
  stroke(0);
  fill(255);
  ell(location,16);
 }
  
}
