class Piece {
  public int[][] box; //piece location relative to entire board;
  private int[][] coords;
  private int pieceType;
  private int xcor, ycor;

  public Piece( int type ) {
    coords = new int[4][];
    box = new int[10][20];
    if ( type == 1 ) { // IPiece
      pieceType = 1;
      coords[0] = new int[] { 1, 0 };
      coords[1] = new int[] { 1, 1 };
      coords[2] = new int[] { 1, 2 };
      coords[3] = new int[] { 1, 3 };
      xcor = 1;
      ycor = 0;
    } else if ( type == 7 ) { // JPiece
      pieceType = 7;
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
      xcor = 0;
      ycor = 0;
    }
  }

  public int[][] getCoords() {
    return coords;
  }

  public int getPieceType() {
    return pieceType;
  }

//Yayy finally got piece Coord to transfer to box!!!
//this was the part we got really stuck on during the project
  public int[][] readOnToBox() { //reads coords to box
    int startX = 0;
    int startY = 9;

    int xpos = xcor;
    int ypos = ycor;

    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 2; j++) {

        if (j == 0) {
          xpos = coords[i][j];
        }

        if (j == 1) {
          ypos = coords[i][j];
        }
      }
      System.out.println("" + (startX + xpos) + "," + (startY + ypos)); 
      box[startX + xpos][startY + ypos] = pieceType;
    }

    return box;
  }
}