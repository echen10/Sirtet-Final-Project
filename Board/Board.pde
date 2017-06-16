int[][] board;
Tile[][] grid; //Uses information from board to determine which grid square is filled
int scale = 35; //Is this the sidelength of every grid square? Tile can use this

//button related instance variables
float x = 400;
float y = 550;
float w = 150;
float h = 80;
int rectX, rectY;
int rectSize = 90;
int bcolor = 255;
boolean rectOver = false;

//Piece related information to add
int pieceColor;
Piece current;

//Game related information
boolean gameStarted;

void setup() {
  size(600, 700);
  frameRate(4);
  board = new int[10][20];
  grid = new Tile[10][20];
  pieceColor = 255; //Will change later when create new Piece Class
  gameStarted = false;
  
}

void draw() {
  update( mouseX, mouseY );
  background(1);
  //can put the following 2 buttons under a widget method if more buttons get involved
  update((int)x, (int)y); //checks if mouse is over the button
  detectPress(); //checks if button is pressed
  display(); //checks if Game started, if so, show filled Grid
  

}

void display(){
    if (gameStarted == false){
  //blue grid
  neutralGrid();}
  else {
  
  //filled grid
  updateGrid();
  }
}

//Blank grid
void neutralGrid() {
  for ( int i = 0; i < 10; i++ ) {
    for ( int j = 0; j < 20; j++ ) {
      fill(#1443C1);
      rect( i*scale, j*scale, scale, scale );
    }
  }
}

//Yippee this is working
void updateGrid() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 20; j++) {
      grid[i][j] = new Tile(i*scale, j*scale, scale-2, pieceColor);
      grid[i][j].display(true);
    }
  }
}

//the class that uses the Button should be Window which would call Game.go()
//Will transfer to separate class later  
//Button
void detectPress() {
  if ( rectOver ) {
    fill(#BFCCF0);
  } else {
    fill(bcolor);
  }
  stroke(255);
  rect(x, y, w, h);
  if ( mousePressed ) {
    if ( mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h ) {
      println("Ping!");
      gameStarted = true;
    }
  }
}

void writeText(){
    //text(str, x1, y1, x2, y2)
  //System.out.println("Start");
  text("Start", x, y, w, h);
}

void update( int x, int y ) {
  if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    //System.out.println( "1:" + mouseX + " " + mouseY );
  } else {
    rectOver = false;
    //System.out.println( "2:" + mouseX + " " + mouseY );
  }
}

boolean overRect( int x, int y, int width, int height ) {
  if ( mouseX >= x && mouseX <= x+width &&
    mouseY >= y && mouseY <= y+height ) {
    return true;
  } else {
    return false;
  }
}