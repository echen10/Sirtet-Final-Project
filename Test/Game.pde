import processing.pdf.*;
import java.util.Random;

//Widgets
Button start;

Piece current;
int[][] coords;
int h;//height

int startX, startY;
int sideL, curve;
int mode;

boolean placed;

int xcor, ycor;

boolean base;

void setup() {
  surface.setSize(800, 800);
  createGrid();
  start = new Button(650, 600, 125, 100, "Start");
  //xcor, ycor, height, width, label
  startX = 210;
  startY = 0;
  sideL = 35;
  curve = 7;
  mode = 0;
  placed = false;
  determinePiece();
  frameRate(10);
  xcor = startX;
  ycor = startY;
}

void draw() {
  createGrid();
  start.update();
  frame.setLocation((displayWidth / 2), (displayHeight / 2));
  //Game.go();
  placePiece();
}
/*
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
 */

void determinePiece() {
  int mode = (int)(7 * Math.random());
  System.out.println(mode);
  current = new Piece (mode);
  this.coords = current.getCoords();
  
}

void placePiece() {

  int i = (int)(4 * Math.random());
  int x = coords[i][0] * 35 + startX;
    int y = coords[i][1] * 35 + startY;
    rect(x, y, sideL, sideL, curve);
    placed = true;
}

void movePiece(){
  
}

  
/*  
void rotatePiece() {
  
  //determinePiece();
  System.out.println(mode);
 // for (int i = 0; i < 4; i++) {
    System.out.println(coords[i][0]);
    System.out.println(coords[i][1]);

    int x = coords[i][0] * 35 + startX;
    int y = coords[i][1] * 35 + startY;
    rect(x, y, sideL, sideL, curve);
}
*/






//Creating grid
//---------------------------------------------------------------------------
void createGrid() {

  int grid = 35; // change this number to 20 or 50, etc., if you want fewer grid lines


  for (int i = 0; i < (.75* width); i+=grid) {
    line (i, 0, i, height);
  }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, (.75*width), i);
  }
}

//----------------------------------------------------------------------------