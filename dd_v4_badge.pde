int applied;

void setup() {
  size(400, 400);
}
void draw() {
  noLoop();
  background(240);
  
  PVector posA = new PVector(100,100,0.5);
  PVector posB = new PVector(300,200,0.8);
  PVector posC = new PVector(300,300,0.4);
  PVector posD = new PVector(140,220,0.6);
  
  applied = 2;
  fullOctagon(posA.x,posA.y,posA.z);
  
  applied = 0;
  fullOctagon(posB.x,posB.y,posB.z);
  
  applied = 1;
  fullOctagon(posC.x,posC.y,posC.z);
  
  applied = 3;
  fullOctagon(posD.x,posD.y,posD.z);
  
}

void leftHalfOctagon(float a, float b, float c) {
  fill(0);  //black
  noStroke();
  beginShape();
  vertex(a-30*c, b-75*c);
  vertex(a-75*c, b-30*c);
  vertex(a-75*c, b+30*c);
  vertex(a-30*c, b+75*c);
  vertex(a+30*c, b+75*c);
  endShape(CLOSE);
}
void rightHalfOctagon(float a, float b, float c) {
  noStroke();
  beginShape();
  vertex(a-30*c, b-75*c);
  vertex(a+30*c, b+75*c);
  vertex(a+75*c, b+30*c);
  vertex(a+75*c, b-30*c);
  vertex(a+30*c, b-75*c);
  endShape(CLOSE);
}

//this will be based on suncream application 0=indoor 1=putAway 2=blockSun

void indoor(float x, float y, float z) {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3*z);
  beginShape();
  vertex(x-30*z, y-30*z);
  vertex(x+5*z, y-40*z);
  vertex(x+60*z, y-14*z);
  vertex(x-20*z, y+20*z);
  vertex(x-60*z, y+7*z);
  vertex(x-30*z, y-30*z);
  endShape();
  line(x, y+12*z, x, y+40*z);
}

void putAway(float x, float y, float z) {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3*z);
  beginShape();  //bag shape
  vertex(x-26*z, y+20*z);
  vertex(x-26*z, y-20*z);
  vertex(x-15*z, y-40*z);
  vertex(x, y-50*z);
  vertex(x+20*z, y-50*z);
  vertex(x+30*z, y-45*z);
  vertex(x+40*z, y-36*z);
  vertex(x+50*z, y-20*z);
  vertex(x+50*z, y+30*z);
  vertex(x, y+30*z);
  vertex(x, y-5*z);
  vertex(x+17*z, y-5*z);
  vertex(x+37*z, y+10*z);
  vertex(x+37*z, y+22*z);
  endShape();
  beginShape();  //straps shape
  vertex(x-35*z, y+15*z);
  vertex(x-50*z, y-5*z);
  vertex(x-32*z, y-25*z);
  endShape();
  beginShape();
  vertex(x-35*z, y+5*z);
  vertex(x-50*z, y-15*z);
  vertex(x-32*z, y-35*z);
  endShape();
  beginShape();  //top strap shape
  vertex(x-5*z, y-49*z);
  vertex(x, y-60*z);
  vertex(x+20*z, y-50*z);
  endShape();
}

void star(float x, float y, float z) {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3*z);
  beginShape();
  vertex(x+35*z,y-49*z);  //top outside
  vertex(x+38*z,y-39*z);  //top right inside
  vertex(x+48*z,y-39*z);  //top right outside
  vertex(x+40*z,y-33*z);  //bottom right inside
  vertex(x+43*z,y-24*z);  //bottom right outside
  vertex(x+35*z,y-29*z);  //bottom inside
  vertex(x+27*z,y-24*z);  //bottom left outside
  vertex(x+30*z,y-33*z);  //bottom left inside
  vertex(x+22*z,y-39*z);  //top left ouside
  vertex(x+32*z,y-39*z);   //top left inside
  endShape(CLOSE);
}

void blockSun(float x, float y, float z) {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(3*z);
  circle(x-20*z, y-10*z, 40*z);  //sun
  line(x-6*z, y+4*z, x+20*z, y+28*z);  //sun beam
  line(x+2*z, y+51*z, x+46*z, y-5*z);  //sun block 
  beginShape();  //sun rays
  vertex(x-20*z, y+17*z);
  vertex(x-27*z, y+23*z);
  vertex(x-30*z, y+17*z);
  vertex(x-37*z, y+20*z);
  vertex(x-38*z, y+12*z);
  vertex(x-50*z, y+15*z);
  vertex(x-45*z, y+5*z);
  vertex(x-55*z, y);
  vertex(x-49*z, y-6*z);
  vertex(x-55*z, y-15*z);
  vertex(x-45*z, y-20*z);
  vertex(x-48*z, y-35*z);
  vertex(x-32*z, y-32*z);
  vertex(x-31*z, y-47*z);
  vertex(x-25*z, y-36*z);
  vertex(x-15*z, y-50*z);
  vertex(x-10*z, y-36*z);
  vertex(x-3*z, y-42*z);
  vertex(x-5*z, y-32*z);
  vertex(x+7*z, y-35*z);
  vertex(x+3*z, y-27*z);
  endShape();
  
  if (applied > 2) {  //if suncream application more than 2 
    star(x,y,z);
   }
}

void fullOctagon(float x, float y, float z) {
  leftHalfOctagon(x,y,z);
  //maybe determine this colour by data and the loght colours saved in dd v2 colours
  fill(187, 224, 237);  //lightBlue saved in dd v2 clours
  rightHalfOctagon(x,y,z);
  
  if (applied == 0) {
    indoor(x,y,z);
  }
  else if (applied == 1) {
    putAway(x,y,z);
  }
  else if (applied >= 2) {
    blockSun(x,y,z); 
  }
  else {
    println("Invalid value for total number of suncream applications");
  }
}
