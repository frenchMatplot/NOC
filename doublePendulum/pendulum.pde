class pendulum{
  pendulum parent;
  PVector origin;
  PVector pos;
  float r;
  float a;
  float aVel;
  float aAcc;
  float damping;
  
  pendulum(pendulum parent_ , float r_ ){
     if (parent_ != null){
       parent = parent_;  
       origin = new PVector(parent.pos.x,parent.pos.y); 
       println(origin.x);
     } else {
       origin = new PVector(width/2,10);
     }
     
     pos = new PVector();
     r = r_;
     a = PI/4;
     aVel = 0.0;
     aAcc = 0.0;
     damping = 0.995;
  }
  
  void display(){
    pos.set(r * sin(a), r * cos(a),0);  
    pos.add(origin);
    
    line(origin.x,origin.y,pos.x,pos.y);
    fill(51);
    circle(pos.x,pos.y,15);
  }
  
  void update(){
    float g = 0.4;
    aAcc = (-1 * g / r) * sin(a); 
    
    aVel += aAcc;  
    a += aVel;
    
    aVel *= damping;
    println();
  }
}
