class Dot {
  int x, y, d;

  //Constructor
  Dot (int xpos, int ypos, int diam) {
    x = xpos;
    y = ypos;
    d = diam; 
  }
  
  void display() {
    noStroke();
    fill(255);
    ellipse(x,y,d,d);
  }
}
