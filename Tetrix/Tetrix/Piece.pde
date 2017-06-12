class Piece {
  private int[][] coords, box;
  private int pieceType, orientation;
  private boolean moving;

  public Piece( int type ) {
    coords = new int[4][];
    if ( type == 0 ) { // LPiece
      pieceType = 0;
      box = new int[4][];
      coords[0] = new int[] { 1, 3 };
      coords[1] = new int[] { 1, 2 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 2, 1 };
    } else if ( type == 1 ) { // JPiece
      pieceType = 1;
      box = new int[3][];
      coords[0] = new int[] { 1, 1 };
      coords[1] = new int[] { 2, 1 };
      coords[2] = new int[] { 2, 2 };
      coords[3] = new int[] { 2, 3 };
    } else if ( type == 2 ) { // IPiece
      pieceType = 2;
      box = new int[3][];
      coords[0] = new int[] { 1, 3 };
      coords[1] = new int[] { 1, 2 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 1, 0 };
    } else if ( type == 3 ) { // TPiece
      pieceType = 3;
      box = new int[3][];
      coords[0] = new int[] { 0, 1 };
      coords[1] = new int[] { 1, 1 };
      coords[2] = new int[] { 1, 2 };
      coords[3] = new int[] { 2, 1 };
    } else if ( type == 4 ) { // OPiece
      pieceType = 4;
      box = new int[2][];
      coords[0] = new int[] { 1, 1 };
      coords[1] = new int[] { 2, 1 };
      coords[2] = new int[] { 1, 2 };
      coords[3] = new int[] { 2, 2 };
    } else if ( type == 5 ) { // ZPiece
      pieceType = 5;
      box = new int[3][];
      coords[0] = new int[] { 0, 2 };
      coords[1] = new int[] { 1, 2 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 2, 1 };
    } else { // SPiece
      pieceType = 6;
      box = new int[3][];
      coords[0] = new int[] { 0, 2 };
      coords[1] = new int[] { 1, 2 };
      coords[2] = new int[] { 1, 1 };
      coords[3] = new int[] { 2, 2 };
    }
  }

  public int[][] getCoords() {
    return coords;
  }

  public int getPieceType() {
    return pieceType;
  }

  //move and rotate may be moved to the Game/Board classes to fit better
  public void rotate( int direction ) {
    int[][] coor = this.getCoords();
    if ( direction == 1 ) { // clockwise --> change each coord by (y, -x)
      for ( int i = 0; i < 3; i++ ) {
        this.coords[i] = new int[] { coor[i][1], coor[i][0] * -1 };
      }
    } else if ( direction == -1 ) { // counter-clockwise --> change each coord by (-y, x)
      for ( int i = 0; i < 3; i++ ) {
        this.coords[i] = new int[] { coor[i][1], coor[i][0] };
      }
    }
  }

  public void move( int dx, int dy ) { // needs some sort of timer to move the pieces step by step
    boolean hasMoreRoom = true;

    while ( hasMoreRoom ) {
      for ( int i = 0; i < coords.length; i++ ) {
        coords[i][0] = coords[i][0] + dx;
        coords[i][0] = coords[i][1] + dy;
      }
    }
  }
  /*
   public Shape rotateLeft() 
    {
        if (pieceShape == Tetrominoes.SquareShape)
            return this;

        Shape result = new Shape();
        result.pieceShape = pieceShape;

        for (int i = 0; i < 4; ++i) {
            result.setX(i, y(i));
            result.setY(i, -x(i));
        }
        return result;
    }

    public Shape rotateRight()
    {
        if (pieceShape == Tetrominoes.SquareShape)
            return this;

        Shape result = new Shape();
        result.pieceShape = pieceShape;

        for (int i = 0; i < 4; ++i) {
            result.setX(i, -y(i));
            result.setY(i, x(i));
        }
        return result;
    }
}
*/
}