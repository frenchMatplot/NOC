float count = 0;
void setup(){
 size(600,300); 
}
float xoff = 0.0;
void draw(){
  noiseDetail(10);
  loadPixels();
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
     for (int y = 0; y < height; y++) {
      float bright = map(noise(xoff,yoff,count),0,1,0,255);
      pixels[x+y*width] = color(bright);
      yoff += 0.01;
     }
    xoff += 0.01;
  }
  updatePixels();
 count += 1;
}
