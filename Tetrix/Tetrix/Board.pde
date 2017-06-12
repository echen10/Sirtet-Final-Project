import java.util.Random;

class Board {
  int [][] board;
  int row, col;
  int xpos, ypos;

  public Board() {
    board = new int[17][17];
    row = 17;
    col = 17;
  }

  public Board(int row, int col) {
    this.row = row;
    this.col = col;
  }

  public int[][] getBoard() {
    return board;
  }

  public void addPiece() {
    int randInt = (int)(Math.random() * 7);
    Piece piece = new Piece( randInt );
    int[][] n = piece.getCoords();
    int r = 0;
    int c = col/2;
    for ( int i = 0; i < n.length; i++ ) {
      board[n[i][0]+r][n[i][1]+c] = randInt;
    }
  }
}