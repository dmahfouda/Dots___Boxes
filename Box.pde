class Box {
  String name;
  Edge top, bottom, left, right;
  boolean claimed;
  
  Box (Edge t, Edge b, Edge l, Edge r) {
    top = t;
    bottom = b;
    left = l;
    right = r;
    claimed = false;
  }
  
  void display () {
    if (player1.turn) {
      name = player1.name;
    } else {
      name = player2.name;
    }
   
    textSize(32);

    if (top.on && bottom.on && left.on && right.on) {
      claimed = true;
      println("test");
      text(name, right.a.x - 32, bottom.a.y - 32);
    }
  }
  
  //void switchTurns () {
    
    

}
