import java.util.Random;

class Board {
  int [][] board;
  int row, col;
  int xpos, ypos;
  int mode;

  public Board() {
    board = new int[20][10];
    row = 20;
    col = 10;
  }

  public Board(int row, int col) {
    this.row = row;
    this.col = col;
  }

  public int[][] getBoard() {
    return board;
  }
  
  public int getMode(){
    return mode;
  }

  public void addPiece() {
    int randInt = (int)(Math.random() * 7);
    mode = randInt;
    Piece piece = new Piece( randInt );
    int[][] n = piece.getCoords();
    int r = 0;
    int c = col/2;
    for ( int i = 0; i < n.length; i++ ) {
      board[ n[i][0]+r ][ n[i][1]+c ] = randInt;
    }
  }
  
}
  /*  
   public void drawPiece(){
   for (int i = 4; i < squares; i++){
   rect(
   }
  
   public void putOnBoard(int[][], boolean pieceFall) {
   //----------Movement--------------------
   if (pieceFall == true) {
   //allow movement
   } else {
   //piece stays in place
   }
   }
   */