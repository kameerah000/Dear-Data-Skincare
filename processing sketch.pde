//initial idea v2 -very rough idea for shapes and layout
//very likely to change to make more uniqye rather than uniform
//Will later add how to rotate triangle based on data
//Will add more shapes for other data
//Will change proportions and sizes based on data values such as the time column
//Will add more variabes for coloyrs depending on feelings data from dear data project

color goodDay = color(151, 193, 78);    //green
color badDay = color(94, 68, 129);  //purple

void setup() {
  size(500, 350);
}

void draw() {
  background(200, 200, 200);
  strokeWeight(2);
  
  for(int i=50; i<width; i=i+100) {
    for (int j=50; j<height; j=j+100) {
      fullShape(i,j); 
    }
  }
}

void fullShape(float PosX,float PosY) {
  stroke(252, 174, 46);  //orange
  fill(255);
  circle(PosX, PosY, 30);
  triangleSketch(PosX,PosY);
}

void triangleSketch(float x, float y) {
  fill(0);
  stroke(255);  //white
  triangle(x, y, x+10, y+26, x-10, y+26);
  fill(255, 0, 0);
  triangle(x, y+15, x+5, y+26, x-5, y+26);
}


