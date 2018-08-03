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
    textSize(20);
  }
  
  void display () {
    if (claimed) {
      text(name, right.start.x - 120, bottom.start.y - 100);
    }
  }
  
  //function to assess when and new box has been made and
  //assign in to a player
  void assignNew () {
   if (top.on && bottom.on && left.on && right.on && !claimed) {
      claimed = true;
      //when a box is claimed, turns change again (so that claiming player keeps is or her turn
      changeTurns();
      if (player1.turn) {
        name = player1.name;
      } else {
        name = player2.name;
      }
    }
  }     
}
