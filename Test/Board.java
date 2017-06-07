public class Board {
  int [][] board;
  int row, col;
  int xpos, ypos;

  public Board() {
    board = new int[row][col];
  }

  public Board(int row, int col) {
    this.row = row;
    this.col = col;
  }
  
  public int[][] getBoard(){
    return board;
  }
/*  
  public void drawPiece(){
    for (int i = 4; i < squares; i++){
      rect(
  }
/*
  public void putOnBoard(int[][], boolean pieceFall) {
    //----------Movement--------------------
    if (pieceFall == true) {
      //allow movement
    } else {
      //piece stays in place
    }
  }
  




public void moveOnBoard(boolean rotate) {
}

*/


}