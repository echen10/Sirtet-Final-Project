import java.util.Arrays;

Button start;
Board grid;
Game sirtet;

void setup(){
  surface.setSize(800, 800);
  createGrid(35);
  grid = new Board();
  start = new Button(650, 600, 125, 100, "Start");
  
  sirtet =  new Game(210, 0, 35, 7, 0);
  frameRate(10);
}

void draw(){
  createGrid(35);
  if (start.pressed(650, 600, 125, 100) == true){
    
  }
}
//--------print any board, coords, 2D array

void printArr(int[][] arr){
  int[][] array = arr;
System.out.println(Arrays.deepToString(array));
}

//---------Help Display--------------------
void createGrid( int size ) {

  int grid = size  ; // change this number to 20 or 50, etc., if you want fewer grid lines


  for (int i = 0; i < (.75* width); i+=grid) {
    line (i, 0, i, height);
  }
  for (int i = 0; i < height; i+=grid) {
    line (0, i, (.75*width), i);
  }
}