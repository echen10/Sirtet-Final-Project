

  
 //Widgets
Button start;
int startX,startY;
int sideL, curve;
int mode;
  
  
void setup(){
  size(800, 800);
  createGrid();
  start = new Button(650,600,125,100,"Start");
  //xcor, ycor, height, width, label
  startX = 245;
  startY = 0;
  sideL = 35;
  curve = 7;
  mode = 0;
  
}

void draw(){
  start.update();
  frame.setLocation((displayWidth / 2), (displayHeight / 2));
  //Game.go();
  drawPiece();
}

public int[] rearrange(){
  Piece p = new LPiece(mode);
  //Why does this not work??? If it has to be static then it defeats the whole purpose
  //int[][] coords = getCoords();
  
  int [] temp = new int[8];
  int slot = 0;
  for (int i = 0; i < 4; i++){
    for (int j = 0; j <2; j++){
      temp[slot] = coords[i][j];
      slot++;
      System.out.println(temp[slot]);
}
  }
  return temp;
}

void drawPiece(){
  
  //LPiece p = new LPiece(0);

    
  //each block goes by interval of 35
//why can't I put this in a loop?
  rect(startX, startY, sideL, sideL, curve);
  rect(startX, startY, sideL, sideL, curve);
  rect(startX, startY, sideL, sideL, curve);
  rect(startX, startY, sideL, sideL, curve);
 
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