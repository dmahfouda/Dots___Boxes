//This is a game I used to play with my 
//brothers and parents when the restaurant 
//we went to had paper place mats

//The first thing I want to do is create the 
//dot opbject

Board board;
Dot[][] dots;

void setup () {
  size (640,640);
  board = new Board (10);
  //dots[0][0] = new Dot (5,5,10);
  //dots[0][1] = new Dot (20,20,20);
  //dots[0][0].display();
  //dots[0][1].display();
  board.display();
}
    
    

//The first thing I want to do is initialize the arrays that
//will store all of state data for the game.

//The first array is just an array of dots that sets creates
//the board of play. I'm not sure if the board of play needs to 
//have any intelligence built in
