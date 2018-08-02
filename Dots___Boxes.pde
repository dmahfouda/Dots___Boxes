//This is a game I used to play with my 
//brothers and parents when the restaurant 
//we went to had paper place mats

Board board;
Edge edge;
Player player1, player2;
int numBoxes;

void setup () {
  size (640,640);
  board = new Board (5);
  numBoxes = 0;
  player1 = new Player("David");
  player2 = new Player("Adam");
  player1.turn = true;
}

void draw() {
    board.display();
//    board.countBoxes();
}

void mousePressed(){
  board.listen();
}
