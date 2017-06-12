import processing.pdf.*;
import java.util.Random;

//Widgets
Button start;
Board grid;
Piece current;
int[][] coords;
int h;//height

int startX, startY;
int sideL, curve;
int mode;

int xcor, ycor;

boolean base;

void setup() {
  surface.setSize(800, 800);
  createGrid(35);
  grid = new Board();
  start = new Button(650, 600, 125, 100, "Start");
  //xcor, ycor, height, width, label
  startX = 210;
  startY = 0;
  sideL = 35;
  curve = 7;
  mode = 0;
  frameRate(10);
  xcor = startX;
  ycor = startY;
}

void draw() {
  createGrid(35);
  start.update();
  frame.setLocation((displayWidth / 2), (displayHeight / 2));
}

//void determinePiece() {
//  int mode = (int)(Math.random() * 7);
//  System.out.println(mode);
//  current = new Piece (mode);
//  this.coords = current.getCoords();
//}

//void addPiece() {

//  int i = (int)(Math.random() * 4);
//  int x = coords[i][0] * 35 + startX;
//  int y = coords[i][1] * 35 + startY;
//  rect(x, y, sideL, sideL, curve);
//  placed = true;
//}

//void movePiece() {
//  boolean hasMoreRoom = true;
//  int[][] coor = current.getCoords();
//  for ( int i = 0; i < coor.length; i++ ) {
//    if ( coor[i][1] == 0) {
//      hasMoreRoom = false;
//    }
//  }
//  while ( hasMoreRoom ) {
//    current.move(0,1);
//  }
//}

//Creating grid
//---------------------------------------------------------------------------
void createGrid( int size ) {

  int grid = size  ; // change this number to 20 or 50, etc., if you want fewer grid lines


  for (int i = 0; i < (.75* width); i+=grid) {
    line (i, 0, i, height);
  }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, (.75*width), i);
  }
}

//----------------------------------------------------------------------------