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

  //Rotate pieces using matrices!
  public int[][] multiplyMatrix( int[][] a, int[][] b ) {
    int[][] result = new int[a.length][b[0].length];
    for ( int i = 0; i < a.length; i++ ) { 
      for ( int j = 0; j < b[0].length; j++ ) { 
        for ( int k = 0; k < a[0].length; k++ ) { 
          result[i][j] += a[i][k] * b[k][j];
        }
      }
    }
    return result;
  }

  public int[][] transpose( int[][] a ) {
    int[][] ans = new int[a[0].length][a.length];
    for ( int i = 0; i < a.length; i++ ) {
      for ( int j = 0; j < a[0].length; j++ ) {
        ans[j][i] = a[i][j];
      }
    }
    return ans;
  }

  public void rotate( boolean clockwise ) {
    int[][] a = this.getCoords();
    int[][] m = { {0, 0, 1}, {0, 1, 0}, {1, 0, 0} };

    if ( clockwise ) {
      this.coords = multiplyMatrix( transpose( a ), m );
    } else {
      this.coords = multiplyMatrix( m, transpose( a ) );
    }
  }

  public boolean checkPosition( Board b, int dx, int dy ) {
    int[][] c = this.coords;
    for ( int i = 0; i < c.length; i++ ) {
      for ( int j = 0; j < c[0].length; j++ ) {
        if ( c[i][j] != 0 ) {
          //if ( i + dx >= Game.HEIGHT ) {
          //  return false;
          //}
          //if ( j + dy < 0 || j + dy >= Game.WIDTH ) {
          //  return false;
          //}
        }
      }
    }
    return true;
  }

  public void move( Board b, int dx, int dy ) { // needs some sort of timer to move the pieces step by step
    while ( this.checkPosition( b, dx, dy ) ) {
      for ( int i = 0; i < coords.length; i++ ) {
        coords[i][0] = coords[i][0] + dx;
        coords[i][0] = coords[i][1] + dy;
      }
    }
  }
}