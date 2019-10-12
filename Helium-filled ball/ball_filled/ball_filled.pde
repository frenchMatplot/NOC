helium ball;
PVector wind;
PVector gravity;
float xoff;

void setup(){
 size(400,400);
 xoff= 0;
 ball = new helium();
 
 gravity = new PVector(0,9.8);
 
}

void draw(){
 float n = noise(xoff);
 wind = new PVector(0.5,0);
 translate(width/2,height/2);
 background(255);
 
 ball.applyForce(wind);
 ball.applyForce(gravity);
 
 ball.checkEdges();
 
 ball.update();
 ball.display();
 xoff += 1;
}
