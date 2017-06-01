abstract class Piece {
    String name;
    int[][] coords;
    int orientation;
    
    abstract void rotate(int direction);

    public void move(int dx, int dy) {
	for ( int i = 0; i < coords.length; i++ ) {
	    coord[i][0] = coord[i][0] + dx;
	    coord[i][0] = coord[i][1] + dy;
	}
    }

}
