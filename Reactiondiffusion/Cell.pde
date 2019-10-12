class Cell {
  PVector pos;
  float w;
  float h;
  
  Cell(float x, float y, float w_, float h_) {
    pos = new PVector(x, y);
    w = w_;
    h = h_;
  }

  void display() {
    rectMode(CORNER);
    rect(pos.x,pos.y,w,h);
  }
}
