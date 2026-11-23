//initial idea v3 -very rough idea for a shape -just a apart of the entire sketch
//very likely to change 

void setup() {
  size(400,400);
}

void draw() {
  background(240);  //off-white
  drawNoteTab(100,100,1);
}

void drawNoteTape(float a, float b, float c) {
  //parallellogram
  beginShape();
  vertex(a,b);
  vertex(a-5*c,b+25*c);
  vertex(a+35*c,b+25*c);
  vertex(a+40*c,b);
  endShape(CLOSE);
  //left side edges
  beginShape();
  vertex(a,b);
  vertex(a-6*c,b+3*c);
  vertex(a-1.5*c,b+9*c);
  vertex(a-8*c,b+11*c);
  vertex(a-3*c,b+18*c);
  vertex(a-10*c,b+20.1*c);
  vertex(a-5*c,b+25*c);
  vertex(a,b);
  endShape(CLOSE);
  //right side edges
  beginShape();
  vertex(a+40*c,b);
  vertex(a+40*c+4*c,b+3*c);
  vertex(a+40*c-1.5*c,b+9*c);
  vertex(a+40*c+4*c,b+11*c);
  vertex(a+40*c-3*c,b+18*c);
  vertex(a+40*c+4*c,b+20.1*c);
  vertex(a+40*c-5*c,b+25*c);
  vertex(a+40*c,b);
  endShape(CLOSE);
  //edges
  stroke(180);  //grey
  line(a+40*c,b,a+40*c+4*c,b+3*c);
  line(a+40*c+4*c,b+3*c,a+40*c-1.5*c,b+9*c);
  line(a+40*c-1.5*c,b+9*c,a+40*c+4*c,b+11*c);
  line(a+40*c+4*c,b+11*c,a+40*c-3*c,b+18*c);
  line(a+40*c-3*c,b+18*c,a+40*c+4*c,b+20.1*c);
  line(a+40*c+4*c,b+20.1*c,a+40*c-5*c,b+25*c);
  line(a,b,a-6*c,b+3*c);
  line(a-6*c,b+3*c,a-1.5*c,b+9*c);
  line(a-1.5*c,b+9*c,a-8*c,b+11*c);
  line(a-8*c,b+11*c,a-3*c,b+18*c);
  line(a-3*c,b+18*c,a-3*c,b+18*c);
  line(a-3*c,b+18*c,a-10*c,b+20.1*c);
  line(a-10*c,b+20.1*c,a-5*c,b+25*c);
}

void drawNoteTab(float x, float y, float z) {
  noStroke();
  fill(0);  //black
  rectMode(CENTER);
  rect(x,y,100*z,100*z);
  
  fill(182,255,0);  //neonGreen -saved dd v2
  drawNoteTape(x-15*z,y-63*z,z);
  
  fill(255);  //white
  textSize(9*z); 
  textAlign(CENTER);
  text("MONDAYS 10/2026",x,y-20*z);
  textSize(8*z);
  textAlign(CENTER);
  text("Yayy!! I actually \n felt motivated !!!",x,y+5*z);
}


