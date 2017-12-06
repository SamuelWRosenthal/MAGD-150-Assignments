PImage img;
PImage img2;
PFont Arial;
PFont Juice;
String[] lines;
String fontFile = "ArialNarrow-12.vlw";
String sourceFile = "Movie_Credits.txt";
int count, textSize, lineSpacing, margin;

void setup(){
 surface.setTitle("Half/Blood Movie Poster");
 size(600, 800);
 background(0);

 //Properties for the image and credits.
 img = loadImage ("Rosenthal_Red_Yin_Yang.png");
 img2 = loadImage ("Eyes_Of_Evil.png");
 lines = loadStrings(sourceFile);
 count = lines.length;
 Arial = loadFont("ArialNarrow-12.vlw");
 textFont(Arial);
 String extractFontSize = fontFile.substring(
   fontFile.lastIndexOf("-") + 1,
   fontFile.indexOf(".vlw"));
 textSize = int(extractFontSize) > 0
   ? int(extractFontSize)
   : 16;
 textSize(textSize);
 lineSpacing = 2;
 margin = 10;
 textAlign(LEFT, TOP);
 
 //Properties for the Poster's Title
 Juice = loadFont("JuiceITC-Regular-48.vlw");
}

void draw() {
 background(0);
  
  //Image of a red Yin-Yang symbol is shown in the center.
  image(img, 160, 100, img.width/7, img.height/7);
  
  //Image of Evil Eyes appear below the Yin-Yang symbol.
  image(img2, 47, 240, img.width/4, img.height/4);
  
  //Display for the Movie's credits
  textFont(Arial);
  for(int i = 0; i < count; ++i) {
    text(lines[i], margin, margin + (textSize + lineSpacing) * i);
  }
  
  //Properties for the Movie Poster's title.
  //Title shakes nervously.
  translate(155, 600);
  textFont(Juice, 100);
  text("Half/Blood", (random(-5,5)), (random(-5,5)));
}