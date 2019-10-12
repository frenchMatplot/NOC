float size = width / 3; 
ArrayList<Cell> cells = new ArrayList<Cell>();

void setup() {
  for (int x = 0; x < width; x += size) {
    for (int y = 0; y < height; y += size) {
      cells.add(new Cell(x,y,size,size));
    }
  }
}

void draw() {
  background(255);
}
