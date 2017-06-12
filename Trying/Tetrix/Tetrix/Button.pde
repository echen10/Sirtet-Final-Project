class Button {


  //Instance Variables
  //button appearance
  int xpos, ypos, wid, hei;
  String label;

  //button function
  boolean over = false;
  boolean down = false;

  //constructors
  Button(
    int tx, int ty, 
    int tw, int th, 
    String tlabel
    ) {
    xpos = tx;
    ypos = ty;
    wid = tw;
    hei = th;
    label = tlabel;
  }


  void update() {
    physical();
    pressed(xpos, ypos, wid, hei);
  }

  //physical appearance 
  void physical() {
    smooth();
    fill(255);
    stroke(0);
    rect(xpos, ypos, wid, hei, 10);//draws the rectangle, the last param is the round corners
    fill(0);
    textSize(24); 
    text(label, xpos+wid/2-(textWidth(label)/2), ypos+hei/2+(textAscent()/2)); 
    //all of this just centers the text in the box
  }

  boolean overRect(int x, int y, int width, int height) 
  {
    if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
        over = true;
      return true;
    } else {
      return false;
    }
  }
  
  boolean pressed(int x, int y, int width, int height){
    if (overRect(x, y, width, height) == true){
      fill(204, 102, 0);
      down = true;
      return true;
    }
      else {
        return false;
      }
  }

}