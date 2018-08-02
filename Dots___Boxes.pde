//This is a game I used to play with my 
//brother and parents when the restaurant 
//we went to had paper place mats

Board board;
Player player1, player2;
int boxesCounter;

void setup () {
  size (640,640);
  background(64);
  board = new Board (5);
  boxesCounter = 0;
  player1 = new Player("David");
  player2 = new Player("Adam");
  player1.turn = true;
}

void draw() {
    board.display();
}

void mousePressed() {
  board.listen();
}

void changeTurns(){
  if (player1.turn) {
    player1.turn = false;
    player2.turn = true;
  } else {
    player1.turn = true;
    player2.turn = false;
  }
}
