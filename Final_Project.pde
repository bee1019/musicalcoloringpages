import ddf.minim.*;

/*User may press a number below for a specific picture to color
or just use the default black canvas given:
'1' = Reindeer
'2' = Sundae
'3' = Owl

Once canvas is selected, in order to color musically, user must press mouse first
and then press a key listed below:

'r' = Red Small Brush
'R' = Red Big Brush
'o' = Orange Small Brush
'O' = Orange Big Brush
'y' = Yellow Small Brush
'Y' = Yellow Big Brush
'g' = Green Small Brush
'G' = Green Big Brush
'b' = Blue Small Brush
'B' = Blue Big Brush
'p' = Purple Small Brush
'P' = Purple Big Brush

To take a picture of your final piece:

Click 's' or 'S' key to take a screenshot.

*/

Minim min;
AudioPlayer color1, color2, color3, color4, color5, color6;
PImage reindeer, sundae, owl;

void setup(){
  size(600,750);
  background(0);
  
  reindeer = loadImage("Reindeer.png");
  sundae = loadImage("Sundae.png");
  owl = loadImage("Owl.png");
  
  min = new Minim(this);
  
  color1 = min.loadFile("Color 1.wav");
  color2 = min.loadFile("Color 2.wav");
  color3 = min.loadFile("Color 3.wav");
  color4 = min.loadFile("Color 4.wav");
  color5 = min.loadFile("Color 5.wav");
  color6 = min.loadFile("Color 6.wav");
}

void draw(){
  if(keyPressed){
    if(key == '1'){
      image(reindeer, 0, 0, 600, 750);
  }
  
  else if(key == '2'){
    image(sundae, 0, 0, 600, 750);
  }
  
  else if(key == '3'){
    image(owl, 0, 0, 600, 750);
  }
}

if(mousePressed){
  if(keyPressed){
    
  if(key == 'r'){
     noStroke();
  fill(#EA1515);
  ellipse(mouseX, mouseY, 10, 10);
  }
  
  else if(key == 'R'){
     noStroke();
  fill(#EA1515);
    ellipse(mouseX, mouseY, 25, 25);
  }
  
  else if(key == 'o'){
     noStroke();
  fill(#FFA91F);
  ellipse(mouseX, mouseY, 10, 10);
  }
  
  else if(key == 'O'){
     noStroke();
  fill(#FFA91F);
    ellipse(mouseX, mouseY, 25, 25);
  }
  
  else if(key == 'y'){
     noStroke();
  fill(#FBFF1F);
  ellipse(mouseX, mouseY, 10, 10);
  }
  
  else if(key == 'Y'){
     noStroke();
  fill(#FBFF1F);
    ellipse(mouseX, mouseY, 25, 25);
  }
  
  else if(key == 'g'){
     noStroke();
  fill(#30BC1E);
  ellipse(mouseX, mouseY, 10, 10);
  }
  
  else if(key == 'G'){
     noStroke();
  fill(#30BC1E);
    ellipse(mouseX, mouseY, 25, 25);
  }
  
  else if(key == 'b'){
     noStroke();
  fill(#3D64FA);
  ellipse(mouseX, mouseY, 10, 10);
  }
  
  else if(key == 'B'){
     noStroke();
  fill(#3D64FA);
    ellipse(mouseX, mouseY, 25, 25);
  }
  
  else if(key == 'p'){
     noStroke();
  fill(#A232ED);
  ellipse(mouseX, mouseY, 10, 10);
  }
  
  else if(key == 'P'){
     noStroke();
  fill(#A232ED);
    ellipse(mouseX, mouseY, 25, 25);
  }
  }
  }
}

void keyPressed(){
  if(mousePressed){
  if(key == 'r' || key == 'R'){
    color1.play();
    println("red");
  }
  
  else if(key == 'o' || key == 'O'){
    color2.play();
    println("orange");
  }
  
  else if(key == 'y' || key == 'Y'){
    color3.play();
    println("yellow");
  }
  
  else if(key == 'g' || key == 'G'){
    color4.play();
    println("green");
  }
  
  else if(key == 'b' || key == 'B'){
    color5.play();
    println("blue");
  }
  
  else if(key == 'p' || key == 'P'){
    color6.play();
    println("purple");
  }
  }
  
  if(key == 's' || key == 'S'){
    saveFrame("screenshot.png");
    println("picture saved");
  }
}

void keyReleased(){
  color1.close();
  color2.close();
  color3.close();
  color4.close();
  color5.close();
  color6.close();
  
  color1 = min.loadFile("Color 1.wav");
  color2 = min.loadFile("Color 2.wav");
  color3 = min.loadFile("Color 3.wav");
  color4 = min.loadFile("Color 4.wav");
  color5 = min.loadFile("Color 5.wav");
  color6 = min.loadFile("Color 6.wav");
}