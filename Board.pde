class Board {
  int size;
  Dot[][] dots;
  Edge[][] horizontalEdges, verticalEdges;
  Box[][] boxes;
  
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
    
    boxes = new Box [size-1][size-1];
    
    //create boxes
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size -1; x++) {
        boxes[x][y] = new Box (horizontalEdges[x][y], horizontalEdges[x][y+1], verticalEdges[x][y], verticalEdges[x+1][y]);
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
   
   //display boxes
   for (int y = 0; y < size-1; y++) {
     for (int x = 0; x < size - 1; x++) {
       boxes[x][y].display();
     }
   }
 
  }
  
  //listen to mouse-click event
  void listen(){
    //listening for clicks on horizontal edges
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size -1; x++) {
        horizontalEdges[x][y].isBetween();
      }
    }
    
    //listening for clicks on vertical edges
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size; x++) {
        verticalEdges[x][y].isBetween();
      }
    }
    
    // listening for a change of turn event
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size - 1; x++) {
        boxes[x][y].stateUpdate();
      }
    }
  }
} 
