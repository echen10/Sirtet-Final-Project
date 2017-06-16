//gird class will have 2D array of Object Tiles which is fed booleans and PieceColor
//to fill in their repective block
//x and y is based on its corresponding place on the int[][] coords and int[][] board
//Essentially, each tile acts as its separate on/off switch

class Tile {
  float x, y;
  float side;
  int pieceColor;


  Tile (float tempX, float tempY, float tempSide, int pieceColor) {
    x = tempX;
    y = tempY;
    side = tempSide;
    this.pieceColor = pieceColor;
  }
  //if there's a tile to be occupied here, fill it
  void display(boolean tileHere) {
    if (tileHere == true) { 
      fill(pieceColor);
      rect (x, y, side, side);
    } else {
      fill(255);
      rect (x, y, side, side);
    }
  }
}