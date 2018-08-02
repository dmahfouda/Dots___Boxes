class Box {
  String name;
  Edge top, bottom, left, right;
  boolean claimed, boxCounted;
  
  Box (Edge t, Edge b, Edge l, Edge r) {
    top = t;
    bottom = b;
    left = l;
    right = r;
    claimed = false;
    boxCounted = false;
    textSize(32);
  }
  
  void display () {
    if (claimed) {
      text(name, right.a.x - 32, bottom.a.y - 32);
    }
  }
  
  //function to change box state
  void stateUpdate () {
   if (top.on && bottom.on && left.on && right.on && !boxCounted) {
      claimed = true;
      boxCounted = true;
      if (player1.turn) {
        name = player1.name;
      } else {
        name = player2.name;
      }
    }
  }     
}
