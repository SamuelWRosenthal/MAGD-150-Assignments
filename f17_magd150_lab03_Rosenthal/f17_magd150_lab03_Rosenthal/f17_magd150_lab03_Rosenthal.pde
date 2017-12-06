float circleX;
float circleY;
float xspeed = 4;
float x = 0;
float target = 300;

void mousePressed(){
 target = mouseX; 
}

void setup(){
  size(displayWidth, displayHeight);
  background(225,225,225);
  circleX = width/2;
  circleY = height/2;
  frameRate(60);
}
void draw(){
  drawShape1();
  drawShape2();
  drawShape3();
  drawShape4();
}

void drawShape1(){
  noStroke();
  background(225,225,225);
  fill(255, 0, 0);
  ellipse(circleX, circleY, 90, 90);
  circleX = circleX + xspeed;
  
  if (circleX > width || circleX < 0){
   // Turn
    xspeed = xspeed * -1.1;
  }
  println("circleX: " + circleX);
}

void drawShape2(){
stroke(64, 255, 0);
line(0, 0, width * 2 / 3.0, height);
println("Green Line Length: " + dist(0, 0, width * 2 / 3.0, height));
}

void drawShape3(){
  noStroke();
  fill( 0, 204, 102);
  rect(mouseX, mouseY, 60, 60);
}

void drawShape4(){
 x = lerp(x, target, 0.01); 
 ellipse (target, 700, 90, 90);
 fill(100, 0, 200, 150);
 ellipse (x, 500, 90, 90);
}