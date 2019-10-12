float r = 200;
float step = 0;

void setup(){
 size(402,402); 
}

void draw(){
 background(0); 
 frameRate(99);
 translate(width/2,height/2);
 noFill();
 stroke(255,10);
 ellipse(0,0,r*2,r*2);
 for (float a = 0; a < TWO_PI; a+= 0.05){
   float x = cos(a) * r;
   float y = sin(a) * r;
   float nx = cos(a*step) * r;
   float ny = sin(a*step) * r;
   line(x,y,nx,ny);
 }
 step += 0.01;
 
}
