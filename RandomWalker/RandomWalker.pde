Walker w;

void setup(){
 size(600,400);
 background(0);
 w = new Walker();
}

void draw(){
 w.step();
 w.display();
}
