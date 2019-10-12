import java.util.Random;
Random generator;

class Walker{
 PVector location  = new PVector(0,0); 
 float tx, ty;
 Random generator = new Random();
 Walker() {
   tx = 0;
   ty = 0;
  
  }
  
 void step(){
  float stepx = map(noise(tx), 0 , 1 , 0 , 10); 
  float stepy = map(noise(ty), 0 , 1 , 0 , 10);
  
  location.add(stepx, stepy);
  
  tx += 0.01;
  ty += 0.1;
 }
 
  void display(){
    stroke(255);
    point(location.x,location.y);
  }
}
