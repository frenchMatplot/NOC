import java.util.Random;
Random generator;

void setup(){
 size(640,360); 
 generator = new Random();
}

void draw(){
 float number = (float) generator.nextGaussian();
 float mean = 320;
 float sd = 60;
 float x = sd* number + mean;
 
 noStroke();
 fill(0,10);
 ellipse(x,180,16,16);
}
