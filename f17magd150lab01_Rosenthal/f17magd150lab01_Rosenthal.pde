void setup(){
size(900,500);
background(153,153,153);
}
void draw(){
  drawhouse();
  drawwindow();
  drawlines();
}
void drawhouse(){
  point(10,13);
  point(30,13);
  point(50,13);
  rect(225,300,450,200);
  triangle(450,150,195,300,705,300);
  rect(550,100,50,200);
  fill(255,255,255);
}
void drawwindow(){
 rect(300,350,50,70);
 rect(550,350,50,70);
 rect(415,375,70,125);
 ellipse(470,450,10,10);
 ellipse(450,250,70,70);
 fill(0,0,0);
}
void drawlines(){
 line(325,420,325,350);
 line(575,420,575,350);
 line(300,385,350,385);
 line(540,385,600,385);
 line(450,215,450,285);
 line(415,250,485,250);
}