class ball {
 PVector location;
 PVector velocity;
 PVector acc;
 PVector gravity;
 
 ball () {
  location = new PVector(100,100); 
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0.0,0.3);
 }
 
 void checkEdge() {
  if (location.x < 0){
    velocity.x *= -1;
  } else if (location.x > width){ 
    velocity.x *= -1;
  } else if (location.y < 0){
    velocity.y *= -1;
  } else if (location.y > height){
    velocity.y *= -1; 
  }
 }
 
 void update() {
  location.add(velocity);
  velocity.add(gravity);
  }
 
 void display() {
  stroke(0);
  fill(248,28,14);
  ellipse(location.x,location.y,16,18); 
 }
}
