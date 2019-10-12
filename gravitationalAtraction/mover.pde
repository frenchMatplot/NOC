class mover{
 PVector location;
 PVector velocity;
 PVector acc; 
 float m;
 float a;
 float av;
 float aac;
 
 mover(float x,float y){
   location = new PVector(x,y);
   velocity = new PVector();
   acc = new PVector();
   m = 1;
   a = 0;
   av = 0;
   aac = velocity.x / 10;
 }
 
 void update(){
  velocity.add(acc);
  location.add(velocity);
  
  aac = velocity.x / 10;
  av += aac;
  av = constrain(av,-0.1,0.1);
  
  velocity.mult(0);
 }
 
 void applyForce(PVector f){
   PVector force = f;
   force.normalize();
   acc.add(force);
 }
 
 void display(){
   fill(148,14,181);
   noStroke();
   pushMatrix();
   translate(location.x,location.y);
   rotate(a);
   rect(location.x,location.y,20,20);
   //ellipse(location.x,location.y, 10*2,10*2);
   popMatrix();
 } 
}
