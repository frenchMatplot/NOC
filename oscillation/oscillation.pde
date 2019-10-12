Oscillator[] o = new Oscillator[5];

void setup(){
  size(800,400);
  for (int i = 0; i < o.length; i++){
    o[i] = new Oscillator();  
  }
}

void draw(){
  background(255);
  for (Oscillator osc : o){
    osc.oscillate();
    osc.display();

  }
}
