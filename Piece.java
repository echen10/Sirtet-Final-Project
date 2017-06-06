public class Piece {
    private int[][] coords;
    private int orientation;
    private boolean moving;
    
    public LPiece( int type ) {
        orientation = type;
	coords = new int[4][];
	if ( type == 0 ) { // LPiece
	    coords[0] = new int[] { 1,3 };
	    coords[1] = new int[] { 1,2 };
	    coords[2] = new int[] { 1,1 };
	    coords[3] = new int[] { 2,1 };
	}
        else if ( type == 1 ) { // JPiece
	    coords[0] = new int[] { 1,1 };
	    coords[1] = new int[] { 2,1 };
	    coords[2] = new int[] { 2,2 };
	    coords[3] = new int[] { 2,3 };
	}
	else if ( type == 2 ) { // IPiece
	    coords[0] = new int[] { 1,3 };
	    coords[1] = new int[] { 1,2 };
	    coords[2] = new int[] { 1,1 };
	    coords[3] = new int[] { 1,0 };
	}
	else if ( type == 3 ) { // TPiece
	    coords[0] = new int[] { 0,1 };
	    coords[1] = new int[] { 1,1 };
	    coords[2] = new int[] { 1,2 };
	    coords[3] = new int[] { 2,1 };
	}
	else if ( type == 4 ) { // OPiece
	    coords[0] = new int[] { 1,1 };
	    coords[1] = new int[] { 2,1 };
	    coords[2] = new int[] { 1,2 };
	    coords[3] = new int[] { 2,2 };
	}
	else if ( type == 5 ) { // ZPiece
	    coords[0] = new int[] { 0,2 };
	    coords[1] = new int[] { 1,2 };
	    coords[2] = new int[] { 1,1 };
	    coords[3] = new int[] { 2,1 };
	}
	else { //SPiece
	    coords[0] = new int[] { 0,2 };
	    coords[1] = new int[] { 1,2 };
	    coords[2] = new int[] { 1,1 };
	    coords[3] = new int[] { 2,2 };
	}
    }

    public int[][] getCoords() {
	return coords;
    }

    public void rotate( int direction ){
    }

    public void move(int dx, int dy) {
	for ( int i = 0; i < coords.length; i++ ) {
	    coords[i][0] = coords[i][0] + dx;
	    coords[i][0] = coords[i][1] + dy;
	}
    }

}
