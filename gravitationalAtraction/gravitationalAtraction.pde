Attractor[] a = new Attractor[2];
mover[] m = new mover[5];

void setup(){
 size(600,600); 
 for (int i = 0; i < a.length; i++){
   a[i] = new Attractor(random(width), random(height), random(100));
 }
 
 for (int j = 0; j < m.length; j++){
   m[j] = new mover(random(width),random(height));  
 }
}

void draw(){
  background(0);
  frameRate(20);
  for (int att = 0; att < a.length; att++){
    for (int mov = 0; mov  < m.length; mov++){
      PVector f = a[att].attract(m[mov]);  
       m[mov].applyForce(f);
       m[mov].update();
       m[mov].display();
       a[att].display();
    } 
  }
}
