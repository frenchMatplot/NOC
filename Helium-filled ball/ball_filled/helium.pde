class helium {
 PVector location;
 PVector velocity;
 PVector acc;
 
 helium(){
  location = new PVector(0,0); 
  velocity = new PVector(0,0); 
  acc = new PVector(0,10); 
 }
 
 void update(){
  velocity.add(acc);
  location.add(velocity);
  acc.mult(0);
  acc.add(0,-10);
 }
 
 void checkEdges(){
  if ((location.x > width) || (location.x < 0)){
   velocity.x *= -1; 
  } else if ((location.y > height) || (location.y < 0)){
   velocity.y *= -1; 
  }
 }
 
 void applyForce(PVector F){
   acc.add(F);
 }
 
 void display(){
  stroke(0);
  fill(248,14,28);
  ellipse(location.x,location.y, 16,18);
  line(location.x,location.y, location.x, location.y + 100); 
 }
}
