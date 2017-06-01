

  
 //Widgets
Button start; 
  
  
void setup(){
  size(800, 800);
  createGrid();
  start = new Button(650,600,125,100,"Start");
  //xcor, ycor, height, width, label
}

void draw(){
  start.update();
  frame.setLocation((displayWidth / 2), (displayHeight / 2));
}

  


//Creating grid
//---------------------------------------------------------------------------
void createGrid(){

int grid = 35; // change this number to 20 or 50, etc., if you want fewer grid lines


for (int i = 0; i < (.75* width); i+=grid) {
  line (i, 0, i, height);
}
for (int i = 0; i < height; i+=grid) {
  line (0, i, (.75*width), i);
}

//----------------------------------------------------------------------------
}