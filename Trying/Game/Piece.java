class Piece {
  private int[][] coords, box;
  private int pieceType, orientation;
  private int xcor, ycor;

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
    
    public static void main( String[] args ) {
	Piece p1 = new Piece(2);
	int[][] coords = p1.getCoords();
	String ans = "";
	for ( int i = 0; i < coords.length; i++ ) {
	    for ( int j = 0; j < coords[0].length; j++ ) {
		ans += coords[i][j] + " ";
		if ( j == 1 ) {
		    ans += "\n";
		}
	    }
	}
	//System.out.println(ans);
	p1.rotate(1);

	for ( int i = 0; i < coords.length; i++ ) {
	    for ( int j = 0; j < coords[0].length; j++ ) {
		ans += coords[i][j] + " ";
		if ( j == 1 ) {
		    ans += "\n";
		}
	    }
	}
	System.out.println(ans);
    }
}
