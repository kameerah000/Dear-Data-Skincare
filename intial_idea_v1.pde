//initial idea -very rough idea for shapes and layout
//very likely to change to make more uniqye rather than uniform

//Will add more variabes for coloyrs depending on feelings data from dear data project
color goodDay = color(151,193,78);    //green
color badDay = color(94,68,129);  //purple

void setup() {
  size(500,350);
}

void draw() {
  background(200,200,200);
  stroke(255);
  strokeWeight(2);
  
  //Will later add how to rotate triangle based on data potentially
  //Will add more shapes for other data 
  //Will change proportions and sizes based on data values such as the time column
  
  for(int i=0; i<width; i=i+1) {
    for (int j=0; j<height; j=j+1) {
      if((i+j)%2==0) {
        fill(badDay);
      }
      else {
        fill(goodDay);
      }
      circle(20+i*50,20+j*50,40);  
      fill(0);
      int tPosX=20+i*50;
      int tPosY=20+j*50;
      triangle(20+i*50,20+j*50,tPosX+10,tPosY+26,tPosX-10,tPosY+26);
    }
  }
}
