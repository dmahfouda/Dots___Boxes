class Edge {
  Dot a,b;
  int clickableWidth;
  boolean on;
  
  Edge (Dot aa, Dot bb) {
    a = aa;
    b = bb;
    clickableWidth = 5;
    on = false;
  }
  
  void display () {
    if (on) {
      stroke(255);
    } else {
      stroke (0);
    }
    line (a.x, a.y, b.x, b.y);
  }
  
  void isBetween () {
    //test for proximate clicking on horizontal edges
    if (mouseX > a.x && mouseX < b.x && (mouseY > a.y-3 && mouseY < a.y+3)) {
      on = true;
    }
    
    //test for proximate clicking on vertical edges
    if ((mouseX > a.x-3 && mouseX <a.x+3) && mouseY > a.y & mouseY < b.y) {
      on= true;
    }
    
  }

//  void (
}
