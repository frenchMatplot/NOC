class mover {
 PVector location;
 PVector velocity;
 PVector acc;
 mover() {
   location = new PVector(width/2,height/2);
   velocity = new PVector(0,0);
   acc = new PVector(0,0);
 }
 
 void update() {
   PVector mouse = new PVector(mouseX,mouseY);
   PVector dir = PVector.sub(mouse,location);
   acc.add(dir);
  
   velocity.add(acc);
   velocity.limit(4);
   location.add(velocity);
   
 }
 
 void checkEdge() {
  if (location.x < 0) {
    velocity.x *= -1;
  } else if (location.x > width){
    velocity.x *= -1;
  } else if (location.y > height) {
    velocity.y *= -1;
  } else if (location.y  < 0){
    velocity.y *= -1;
  }  
 }
 
 void display() {
   stroke(0);
   fill(248,14,28);
   ellipse(location.x,location.y,16,16);
   line(location.x,location.y, mouseX,mouseY);
 }
}
