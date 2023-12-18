//Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size() or fullScreen()
  //Display Algorithm
  size(512, 200, P3D);
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String groove = "groove.mp3";
  String extension = ".mp3";
  String pathway = "FreeWare Music/MusicDownload/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
  // See: https://poanchen.github.io/blog/2016/11/15/how-to-add-background-music-in-processing-3.0
  println(path);
  song1 = minim.loadFile( path );
  //song1.loop(0);
  textFont(createFont("Arial", 12));
} //End setup()
//
void draw() {
  if ( song1.isLooping() ) println("There are", song1.loopCount(), "loops left.");
  //
  background(0);
  stroke(255);
  for(int i = 0; i < song1.bufferSize() - 1; i++)
  {
    line(i, 50  + song1.left.get(i)*50,  i+1, 50  + song1.left.get(i+1)*50);
    line(i, 150 + song1.right.get(i)*50, i+1, 150 + song1.right.get(i+1)*50);
  }
  text("The player has " + song1.loopCount() + " loops left." 
     + " Is playing: " + song1.isPlaying() 
     + ", Is looping: " + song1.isLooping(), 5, 15);
} //End draw()
//
void keyPressed() {
  //Number keys become play buttons, most simply to code and illsutrate this way
  String keystr = String.valueOf(key); //Can send a number to the Canvas or Console as a word
  println("Number of Repeats is", keystr); //Variable is a word here
  int num = int(keystr); //Change "Key Stroke" back to a number
  if ( num > 0 && num < 10 )
  {
    song1.loop(num-1);
  }
} //End keyPressed()
//
void mouseClicked() {
} //End mouseClicked()
//
//End Main Program
