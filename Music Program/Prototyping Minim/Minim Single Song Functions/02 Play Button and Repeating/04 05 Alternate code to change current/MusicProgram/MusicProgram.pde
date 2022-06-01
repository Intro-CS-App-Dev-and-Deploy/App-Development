//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates an object to access all function
AudioPlayer song1; //creates a "Play List" variable holding extesions ...
//
void setup()
{
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directroy, loadFile() should also load from project folder, like loadImage()
  song1 = minim.loadFile("../../../../../FreeWare Music/MusicDownload/groove.mp3"); //able to pass absolute paths, file name & extesnion, and URL
}//End setup
//
void draw()
{
  if ( song1.isLooping() ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
}//End draw
//
void keyPressed()
{
  //Only press a number for this code below
  if ( key=='1' || key=='9' ) { //Looping Functions
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    if ( key == '1' ) println("Looping 1 time"); //Once
    if ( key == '9' ) println("Looping 9 times"); //Simulating Infinity
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = int(keystr);
    song1.loop(num); //Parameter is number of loops
  }//End LOOP
  if ( key>='2' && key!='9') println("I do not loop that much! Try again.");
  //
  //Note: if loopNum is <0, doesn't matter
  // if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of loops
  //
  //First Play Button
  if ( key=='p' || key=='P' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  //
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End MAIN
