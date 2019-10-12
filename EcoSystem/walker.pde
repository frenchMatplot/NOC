import java.util.Random;
Random generator;

class walker{
 PVector location  = new PVector(0,0); 
 float tx, ty;
 Random generator = new Random();
 walker() {
   tx = 0;
   ty = 0;
  
  }
  
 void step(){
  float stepx = map(noise(tx), 0 , 1 , 0 , width); 
  float stepy = map(noise(ty), 0 , 1 , 0 , height);

 location.x = stepx;
 location.y = stepy;
  
  tx += 0.01;
  ty += 0.1;
 }
 
  void display(){
    stroke(0);
    point(location.x,location.y);
  }
}
