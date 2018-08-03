//This is a game I used to play with my 
//brother and parents when the restaurant 
//we went to had paper place mats. You take 
//turns drawing/clicking-on edges. If it's your turn 
//when you complete a box, you win the box.
//Whoever ends up with the most boxes, wins!

//Global objects & variables
Board board;
Player player1, player2;

void setup () {
  size (640,640);
  background(64);
  
  //create a new board that is five dots wide
  board = new Board (5);

  //create the players
  player1 = new Player("David");
  player2 = new Player("Adam");
  
  //set up initial turn state (default is false)
  player1.turn = true;
}

void draw() {
    board.display();
}

void mousePressed() {
  //most of the state control is encapsulated in this function
  board.listen();
}

void changeTurns(){
    boolean temp = player1.turn;
    player2.turn = player1.turn;
    player1.turn = !temp;
}
