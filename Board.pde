class Board {
  int size;
  Dot[][] dots;
  
  //Constructor  
  Board (int s) {
    size = s;
    int index = 0;
    dots = new Dot [size][size];
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
         dots[x][y] = new Dot(x*width/size,y*height/size,10);
      }
    }   
  }
  
  void display(){
    int index = 0;
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
        dots[x][y].display();
      }
    }
  }
  
}
