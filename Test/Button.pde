//Evan can you please work on the button class.
//I'm not sure why its not working even after I tampered with it for over 2 hours

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

  //mouse states
  void seeMouse() {
    if (over && down == true) {
      //do something
    } else if (over == true) {
      //do somthing
    } else {
      //continue w/o change
    }
  }

  //-----------------------------------------------------------------
  //if mouseOver conditional

  void mouseOver() {
    if (mouseX>xpos&&mouseY>ypos&&mouseX<xpos+wid&&mouseY<ypos+hei)
      //include region of button) 
    {    
      over=true;
    } else { 
      over=false;
    }
  }
  //-----------------------------------------------------------------

  //-----------------------------------------------------------------
  //if mouseDown conditional

  void mouseDown() {
    if (mouseX>xpos && mouseY>ypos && mouseX<xpos+wid && mouseY<ypos+hei)
      //include region of button)
    {
      over=true;
      if (mousePressed) {
        down=true;
      } else {
        down=false;
      }
    } else {
      over=false;
    }
  }
  //-----------------------------------------------------------------
}