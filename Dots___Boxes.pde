//This is a game I used to play with my 
//brothers and parents when the restaurant 
//we went to had paper place mats
Board board;
Edge edge;

void setup () {
  size (640,640);
  board = new Board (5);
}

void draw() {
    board.display();
}

void mousePressed(){
  println(mouseX, mouseY);
  board.listen();
}
