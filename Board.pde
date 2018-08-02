class Board {
  int size;
  Dot[][] dots;
  Edge[][] horizontalEdges, verticalEdges;
  
  //Constructor  
  Board (int s) {
    size = s;
    
    dots = new Dot [size][size];

    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
         dots[x][y] = new Dot(x*width/size+((width/size)/2),y*height/size+((width/size)/2),10);
       }  
    }
       
    horizontalEdges = new Edge [size-1][size];
    
    //create horizontal edges
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size-1; x++) {
         println(x,y," ",x+1,y);
         horizontalEdges[x][y] = new Edge (dots[x][y], dots[x+1][y]);
      }
    }
    
    verticalEdges = new Edge [size][size-1];
    
    //create vertical edges
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size; x++) {
        verticalEdges[x][y] = new Edge (dots[x][y], dots[x][y+1]);
      }
    }
    
  }
  
  void display(){
   
    //display dots
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
        dots[x][y].display();
      }
    }
    
    //display horizontal edges
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size-1; x++) {
         horizontalEdges[x][y].display();
      }
    }
 
   //display vertical edges
   for (int y = 0; y < size-1; y++) {
     for (int x = 0; x < size; x++) {
       verticalEdges[x][y].display();
     }
   }
 
  }
  
  //boolean isBetween(){
  //  if (mouseX <
  
}
