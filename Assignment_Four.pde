char upKey, leftKey, downKey, rightKey;
float x, y, radius, speed;
boolean up, left, down, right;
int mouseWheel = 0;

void setup(){
  surface.setResizable(true);
  surface.setTitle("Responding to Specific Keys");
  pixelDensity(displayDensity());
  size(800, 600);
  background(102, 102, 153);
  ellipseMode(RADIUS);
  //move keys
  upKey = 'w';
  leftKey = 'a';
  downKey = 's';
  rightKey = 'd';
  //float initial value
  x = width / 2.0;
  y = height / 2.0;
  radius = min(width, height) / 7.2;
  speed = 2;
  //boolean initial value
  up = left = right = down = false;
}

void draw(){
 drawBG();
 drawPizza2();
 drawPizza1();
 }


void drawPizza1(){
  if (mousePressed == true) {
    fill (255, 51, 0);
  } else {
    fill (255, 204, 102);
  }
  noStroke();
  ellipse (x, y, radius, radius);
  if (keyPressed){
    if (key == upKey) {
      y -= speed;
    }
  if (key == leftKey) {
      x -= speed;
  }
  if (key == downKey) {
      y += speed;
  }
  if (key == rightKey) {
      x += speed;
    }
  }
}

void drawPizza2(){
 float x = 0;
 while(x < width) {
   float y = 0;
   while(y < height) {
     if (mousePressed == true) {
    fill (255, 204, 102);
  } else if (mouseButton == CENTER) {
    fill (255, 255, 255);
  } else {
    fill (255, 51, 0);
  }
     noStroke();
     ellipse(x + 15, y + 15, 10, 10);
     y = y + 70;
   }
   x = x + 40;
 }
}

void drawBG(){
 if (mouseButton == CENTER) {
   background (0, 0, 0);
 } else {
   background (102, 102, 153);
 }
}
