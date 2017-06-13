int[][] board;
int scale = 35;

float x = 400;
float y = 550;
float w = 150;
float h = 80;
int rectX, rectY;
int rectSize = 90;
int bcolor = 255;
boolean rectOver = false;

void setup() {
  size(600, 700);
  frameRate(4);
  board = new int[10][20];
}

void draw() {
  update( mouseX, mouseY );
  background(1);

  //Grid
  for ( int i = 0; i < 10; i++ ) {
    for ( int j = 0; j < 20; j++ ) {
      fill(#1443C1);
      rect( i*scale, j*scale, scale, scale );
    }
  }

  //Button
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
    }
  }
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