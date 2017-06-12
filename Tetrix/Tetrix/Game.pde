import processing.pdf.*;
import java.util.Random;

class Game {
  
//Instance variables  
Piece current; //current moving Piece
int[][] coords; //Piece relative Position
int h; //height

int startX, startY; //starting xcor and ycor of Piece
int sideL, curve; //dimension and curve of squares
int mode; //type of Piece

boolean placed; //whether there's a moving Piece placed on Board

int xcor, ycor; //current position of Piece

boolean base; //whether Piece reached base
//----------------------------------------------------------

Game(){
  
}

Game(int startX, int startY, int sideL, int curve, int mode){
  this.startX = startX;
  this.startY = startY;
  this.sideL = sideL;
  this.curve = curve;
  this.mode = mode;
  placed = false;
  xcor = startX;
  ycor = startY;
}


  
  
}