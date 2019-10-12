PVector location;
PVector velocity;

void setup() {
 size(400,400); 
 location = new PVector(100,100);
 velocity = new PVector(1,3.3);
}

void draw() {
 rectMode(CENTER);
 //rect(width/2,height/2,398,398);
 location.add(velocity);
 rotateX(PI/4);
 
 if ((location.x > width) || (location.x < 0)){
   velocity.x *= -1; 
 } else if ((location.y < 0) || (location.y > height)){
   velocity.y *= -1;
 } else if ((location.z < 0) || (location.z > width)) {
   velocity.z *= -1; 
 }
 


 noFill();
 stroke(255);
 translate(location.x, location.y, location.z);
 sphere(28);

}
