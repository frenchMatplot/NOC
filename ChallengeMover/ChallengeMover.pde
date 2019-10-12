mover m;
PVector wind;
PVector odd_force;

void setup(){
 size(600,600); 
 m = new mover();
 wind = new PVector(1,4);
 odd_force = new PVector();
}

void draw(){
 background(255); 
 
 float xdist = width - m.location.x;
 float ydist = height - m.location.y;
 
 odd_force.x = xdist;
 odd_force.y = ydist;
 odd_force.div(1000);
 odd_force.mult(-1);
 
 m.applyForce(wind);
 m.applyForce(odd_force);
 
 m.display();
 m.update();
}
