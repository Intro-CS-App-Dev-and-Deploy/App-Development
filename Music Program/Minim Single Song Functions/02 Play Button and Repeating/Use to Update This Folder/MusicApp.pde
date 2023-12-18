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
void setup() {
  //size() or fullScreen()
  //Display Algorithm
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String groove = "groove.mp3";
  String extension = ".mp3";
  String pathway = "FreeWare Music/MusicDownload/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
  // See: https://poanchen.github.io/blog/2016/11/15/how-to-add-background-music-in-processing-3.0
  println(path);
  song1 = minim.loadFile( path );
  //song1.loop(0);
} //End setup
//
void draw() {
  //Note: logical operators could be nested IFs
  if ( song1.isLooping() && song1.loopCount()!=-1 ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isLooping() && song1.loopCount()==-1 ) println("Looping Infinitely");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
} //End draw
//
void keyPressed() {
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  //
  if ( key>='1' || key<='9' ) { //Loop Button, previous (key=='1' || key=='9')
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    String keystr = String.valueOf(key);
    //println(keystr);
    int loopNum = int(keystr); //Java, strongly formatted need casting
    song1.loop(loopNum); //Parameter is number of repeats
    // 
  }
  if ( key=='L' || key=='l' ) song1.loop(); //Infinite Loop, no parameter OR -1
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
