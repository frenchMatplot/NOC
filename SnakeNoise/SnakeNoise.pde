void setup(){
 size(640,360);
 background(255);
 
}
float tx = 0;
float ty = 0;
count = 0;
void draw(){
  float nx = noise(tx);
  float ny = noise(ty);
  float x = map(nx,0,1,0,width);
  float y = map(ny,0,1,0,height);
  stroke(0);
  fill(255,10);
  ellipse(x,y,16,16);
  
  tx += 0.01;
  ty += 0.001;
}
