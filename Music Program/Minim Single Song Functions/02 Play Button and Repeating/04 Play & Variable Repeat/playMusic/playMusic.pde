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
  //size(500, 600);
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../../../../../FreeWare Music/MusicDownload/groove.mp3"); //able to pass absolute path, file name, and URL
} //End setup()
//
void draw() {
} //End draw()
//
void keyPressed() {
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //
  //Alternate Play Button, as a finite loop() && infinite loop()
  //Only press a number for this code below
  println(key);
  if ( key=='1' || key=='9' ) { //Loop Button
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    String keystr = String.valueOf(key);
    println(keystr);
    int loopNum = int(keystr);
    song1.loop(loopNum); //Parameter is number of repeats
    // if ( key=='l' || key=='L' ) song1.loop(loopNum);
  }
} //End keyPressed()
//
void mouseClicked() {
} //End mouseClicked
//
//End Main Program
