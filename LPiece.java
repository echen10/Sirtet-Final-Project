public class LPiece extends Piece {
    int[][] coords;
    int orientation;
    boolean moving;

    public LPiece( int type ) {
        orientation = type;
	if ( type == 0 ) {
	    coords[0] = new int[] { 1,3 };
	    coords[1] = new int[] { 1,2 };
	    coords[2] = new int[] { 1,1 };
	    coords[3] = new int[] { 2,1 };
	}
        if ( type == 1 ) {
	    coords[0] = new int[] { 1,2 };
	    coords[1] = new int[] { 1,3 };
	    coords[2] = new int[] { 2,3 };
	    coords[3] = new int[] { 3,3 };
	}
	if ( type == 2 ) {
	    coords[0] = new int[] { 2,3 };
	    coords[1] = new int[] { 3,3 };
	    coords[2] = new int[] { 3,2 };
	    coords[3] = new int[] { 3,1 };
	}
	else {
	    coords[0] = new int[] { 1,1 };
	    coords[1] = new int[] { 1,2 };
	    coords[2] = new int[] { 1,3 };
	    coords[3] = new int[] { 2,3 };
	}
    }
    
    public void rotate( int direction ) {
	for ( int i = 0; 

}
