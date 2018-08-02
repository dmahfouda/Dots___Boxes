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
 
    textSize(32);
    if (claimed) {
      text(name, right.a.x - 32, bottom.a.y - 32);
    }
  }
  
  void listen () {
    if (player1.turn) {
      name = player1.name;
      } else {
        name = player2.name;
     }
    
   if (top.on && bottom.on && left.on && right.on) {
      claimed = true;
    }
  }
}
