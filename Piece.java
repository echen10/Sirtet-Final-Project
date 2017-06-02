abstract class Piece {
    private int[][] coords;
    private int orientation;
    private boolean moving;
    
    abstract void rotate( int direction );

    public int[][] getCoords() {
	return coords;
    }

    public void move(int dx, int dy) {
	for ( int i = 0; i < coords.length; i++ ) {
	    coords[i][0] = coords[i][0] + dx;
	    coords[i][0] = coords[i][1] + dy;
	}
    }

}
