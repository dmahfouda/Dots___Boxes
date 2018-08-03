//The board class is constructed with a single argument: the
//size of the board or the number of dots that comprise its width. 
//This class in turn creates four object arrays (of which it is composed). 
//Dots, vertical edges, horizontal edges, and boxes. All of the 
//board's sub-object arrays are created with "new Board()" constructor.
//Board.listen() changes the visual appearance of these sub-objects
//as the game is played.
class Board {
  int size;
  Dot[][] dots;
  Edge[][] horizontalEdges, verticalEdges;
  Box[][] boxes;
  
  //Constructor  
  Board (int s) {
    size = s;
    
    //create dots
    dots = new Dot [size][size];
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
        //dot's cartesian coordinates are based on the size of the window, set dot diameter to 10
         dots[x][y] = new Dot(x*width/size+((width/size)/2),y*height/size+((width/size)/2),10);
       }  
    }
    
    //create horizontal edges
    horizontalEdges = new Edge [size-1][size];
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size-1; x++) {
         horizontalEdges[x][y] = new Edge (dots[x][y], dots[x+1][y]);
      }
    }

    //create vertical edges
    verticalEdges = new Edge [size][size-1];
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size; x++) {
        verticalEdges[x][y] = new Edge (dots[x][y], dots[x][y+1]);
      }
    }
    
    //create boxes
    boxes = new Box [size-1][size-1];
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size - 1; x++) {
        boxes[x][y] = new Box (horizontalEdges[x][y], horizontalEdges[x][y+1], verticalEdges[x][y], verticalEdges[x+1][y]);
      }
    }
    
  }
  
  void display(){
    background(64);
    
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
     
    //display dots
    for (int y = 0; y < size; y++) {
      for (int x = 0; x < size; x++) {
        dots[x][y].display();
      }
    }
   
     //display boxes
     for (int y = 0; y < size-1; y++) {
       for (int x = 0; x < size - 1; x++) {
         boxes[x][y].display();
       }
     }
 
    //display name of player whose turn it is
    if (player1.turn){
      text(player1.name+"'s turn",10,40);
    }else{
      text(player2.name+"'s turn",10,40);
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
    
    // listening for whether a new box has been formed
    for (int y = 0; y < size - 1; y++) {
      for (int x = 0; x < size - 1; x++) {
        boxes[x][y].assignNew();
      }
    }
  }
} 
