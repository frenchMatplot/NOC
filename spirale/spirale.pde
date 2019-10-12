float r = 200;
float theta = 30;
int count = 0;


void setup(){
  size(600,400);
}

void draw(){
  translate(width/2,height/2);
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  stroke(0);
  fill(0);
  ellipse(x,y,15,15);
  
  theta -= 0.01;
  r -= 0.05;
  
  if (r < 0.05){
    noLoop();  
  }
}
