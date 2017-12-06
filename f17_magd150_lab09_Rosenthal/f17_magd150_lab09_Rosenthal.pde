import processing.video.*;
import processing.sound.*;
PImage img;
PImage img2;
PImage img3;
Movie movie;
SoundFile song;
float volume = 0.5;

void setup(){
  surface.setTitle("Cat Documentary on TV tonight!");
  size(800, 600);
  background(102, 153, 153);
  img = loadImage("Cat_Poster.png");
  img2 = loadImage("Clock_9PM.png");
  img3 = loadImage("White_Noise.png");
  movie = new Movie(this, "cat.mov");
  movie.loop();
  song = new SoundFile(this, "bensound-cute.mp3");
  song.loop();
}

void draw(){ 
 drawClock();
 drawPoster();
 drawTV();
 drawMovie();
}

// Makes the video play in a loop.

void movieEvent(Movie movie) {
  movie.read();
}

// Displays the TV screen that shows the documentary about cats.

void drawTV(){
  noStroke();
  fill(0);
  rect(140, 220, 290, 180);
  noStroke();
  fill(153, 102, 51);
  rect(100, 400, 370, 40);
  rect(140, 440, 40, 200);
  rect(390, 440, 40, 200);
  stroke(0);
  line(230, 220, 180, 90);
  line(260, 220, 310, 90);
  ellipseMode(CENTER);
  noStroke();
  fill(179, 179, 179);
  ellipse(400, 260, 40, 40);
  ellipse(400, 330, 40, 40);
}

// Displays a poster of the cat documentary on a wall behind the TV.

void drawPoster(){
  image(img, 450, 60, img.width/10, img.height/10);
  tint(255);
}

// Displays a looped video of a cat, as part of the cat documentary.
// Plays "Cute", a cute ukulele in background.
// Royalty Free Music from Bensound.
// Left clicking and Right clicking the mouse buttons changes the volume.

void drawMovie(){
  //Properties for the video elements.
  noStroke();
  image(movie, 172, 240, width/4.25, height/4.25);

  //Properties for the audio elements.
  song.amp(volume);
  if (mousePressed){
    if (mouseButton == LEFT){
      volume = volume + 0.1;
    }else if (mouseButton == RIGHT){
      volume = volume - 0.1;
    }
  }
}

void drawClock(){
  image(img2, 40, 20, width/5, height/4);
  tint(255, 153, 204);
}