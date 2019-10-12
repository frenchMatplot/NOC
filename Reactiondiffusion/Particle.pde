class Particle {
  PVector loc;
  PVector vel;
  PVector acc;
  int id;
  float r;

  Particle(PVector p, int id_) {
    loc  = p.get();  
    vel = new PVector();
    acc = PVector.random2D();
    id = id_;
  }

  void update() {
    vel.add(acc);  
    loc.add(vel);
    vel.mult(0);
  }

  void applyForce(PVector f) {
    acc.add(f);
  }

  void display() {    
    if (id == 1) {
      stroke(0);
      fill(0, 255, 0);
      ellipse(loc.x, loc.y, 1, 1);
    } else {
      stroke(0);
      fill(0, 0, 255);
      ellipse(loc.x, loc.y, 1, 1);
    }
  }

  //boolean isTouching(Particle p) {
  //float d = dist(loc.x, loc.y, p.loc.x, p.loc.y);  
  //if (d <= r + p.r){
  //return true;  
  //} else {
  //return false; 
  // }
  // }

  void run() {
    //update();  
    display();
  }
}
