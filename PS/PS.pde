ParticleSystem ps;

void setup() {
  size(640, 360);
  ps= new ParticleSystem(new PVector(random(width),random(height))); 
}

void draw() {
  background(0);
  ps.be();
}
