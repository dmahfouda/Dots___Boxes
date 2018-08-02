//This is a game I used to play with my 
//brothers and parents when the restaurant 
//we went to had paper place mats
Board board;
Edge edge;

void setup () {
  size (640,640);
  board = new Board (5);
  board.display();
}

void draw() {
}

void mousePressed(){
  print(mouseX);
}
    
    

//The first thing I want to do is initialize the arrays that
//will store all of state data for the game.

//The first array is just an array of dots that sets creates
//the board of play. I'm not sure if the board of play needs to 
//have any intelligence built in
