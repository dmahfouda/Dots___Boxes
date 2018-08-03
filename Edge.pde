class Edge {
  Dot start,end;
  int clickableWidth;
  boolean on;
  
  Edge (Dot s, Dot e) {
    start = s;
    end = e;
    clickableWidth = 8;
    on = false;
  }
  
  void display () {
    if (on) {
      stroke(255);
    } else {
      stroke (0);
    }
    line (start.x, start.y, end.x, end.y);
  }
  
  void isBetween () {
    //test for proximate clicking on horizontal edges
    if (mouseX > start.x && mouseX < end.x && (mouseY > start.y-clickableWidth && mouseY < start.y+clickableWidth)) {
      on = true;
      changeTurns();
    }
    
    //test for proximate clicking on vertical edges
    if ((mouseX > start.x-clickableWidth && mouseX <start.x+clickableWidth) && mouseY > start.y & mouseY < end.y) {
      on = true;
      changeTurns();
    }
    
  }
}
