class Piece {
  private int[][] coords;
  private int pieceType;
  private int xcor, ycor;

  public Piece( int type ) {
    coords = new int[4][];
    if ( type == 0 ) { // IPiece
      pieceType = 0;
      coords[0] = new int[] { 1, 0 };
      coords[1] = new int[] { 1, 1 };
      coords[2] = new int[] { 1, 2 };
      coords[3] = new int[] { 1, 3 };
      xcor = 1;
      ycor = 0;
    } else if ( type == 1 ) { // JPiece
      pieceType = 1;
      coords[0] = new int[] { 0, 0 };
      coords[1] = new int[] { 1, 0 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 1, 2 };
      xcor = 0;
      ycor = 0;
    } else if ( type == 2 ) { // LPiece
      pieceType = 2;
      coords[0] = new int[] { 1, 0 };
      coords[1] = new int[] { 1, 1 };
      coords[2] = new int[] { 1, 2 };
      coords[3] = new int[] { 0, 2 };
      xcor = 1;
      ycor = 0;
    } else if ( type == 3 ) { // OPiece
      pieceType = 3;
      coords[0] = new int[] { 0, 1 };
      coords[1] = new int[] { 1, 1 };
      coords[2] = new int[] { 0, 2 };
      coords[3] = new int[] { 1, 2 };
      xcor = 0;
      ycor = 1;
    } else if ( type == 4 ) { // SPiece
      pieceType = 4;
      coords[0] = new int[] { 1, 0 };
      coords[1] = new int[] { 0, 1 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 0, 2 };
      xcor = 1;
      ycor = 0;
    } else if ( type == 5 ) { // TPiece
      pieceType = 5;
      coords[0] = new int[] { 1, 0 };
      coords[1] = new int[] { 1, 1 };
      coords[2] = new int[] { 0, 1 };
      coords[3] = new int[] { 1, 2 };
      xcor = 1;
      ycor = 0;
    } else { // ZPiece
      pieceType = 6;
      coords[0] = new int[] { 0, 0 };
      coords[1] = new int[] { 0, 1 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 1, 2 };
    }
  }

  public int[][] getCoords() {
    return coords;
  }

  public int getPieceType() {
    return pieceType;
  }
}