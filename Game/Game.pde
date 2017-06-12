import processing.pdf.*;
import java.util.Random;

//Instance variables
public static final int BOARD_HEIGHT = 20;
public static final int BOARD_WIDTH = 10;
public static final int SCALE = 41;

Piece current; //current moving Piece
int[][] coords; //Piece relative Position
int sideL, curve; //dimension and curve of squares
int xcor, ycor; //current position of Piece
Board grid;
Button startButton;
int startX, startY;

void setup() {
  surface.setSize( 800, 800 );
  createGrid();
  grid = new Board();
  startButton = new Button( width * 3/4, 600, 125, 100, "Start" );
  //xcor, ycor, height, width, label
  startX = 200;
  startY = 0;
  sideL = 38;  //This number should be relative to size of squares
  curve = 7;
  frameRate(10);
  xcor = startX;
  ycor = startY;
  determinePiece();
}

void draw() {
  createGrid();
  startButton.update();
  frame.setLocation((displayWidth / 2), (displayHeight / 2));
  addPiece();
}

void determinePiece() {
  int mode = (int)(Math.random() * 7);
  System.out.println(mode);
  current = new Piece(mode);
  this.coords = current.getCoords();
}

void addPiece() {
  int i = (int)(Math.random() * 4);
  int x = coords[i][0] * SCALE + startX;  //These numbers have to be fixed
  int y = coords[i][1] * SCALE + startY;
  rect(x, y, sideL, sideL, curve);
}

void createGrid() {
  float w = width / 2;
  float space = w / BOARD_WIDTH;

  for ( int i = 0; i <= w; i += space ) {
    line (i, 0, i, height);
  }
  for ( int i = 0; i <= height; i+= space ) {
    line (0, i, w, i);
  }
}