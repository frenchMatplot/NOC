class mover {
 PVector location;
 PVector velocity;
 PVector acc;
 float topspeed;
 
 mover() {
  location = new PVector(0, 0);
  velocity = new PVector(0,0);
  acc = new PVector(0,0);
  topspeed = 10;
 }
 
  void limit_(float n) {
   if ((velocity.x > n) || (velocity.y > n)) {
     velocity.normalize();
     velocity.mult(n);
   }
   
 }
 
 void update() {
  float nx = noise(tx);
  float ny  = noise(ty);
  acc.add(nx,ny);
  velocity.add(acc);
  limit_(topspeed);
  location.add(velocity);
 }
 

 void checkEdge() {
  if ((location.x < 0) || (location.x > width)) {
     velocity.x *= -1;  
  } else if ((location.y  < 0) ||(location.y > height)) {
    velocity.y *= -1;
  }
 }
 
 void display() {
  stroke(0);
  fill(248,14,148);
  ellipse(location.x, location.y, 16,16);
 }
}
