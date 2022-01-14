//Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup () {
  //size(500, 600);
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../../../../../FreeWare Music/MusicDownload/groove.mp3"); //able to pass absolute path, file name, and URL
} //End setup()

void draw() {
  if ( song1.isLooping() ) println("There are", song1.loopCount(), "loops left.");
} //End draw()

void keyPressed() {
  //Number keys become play buttons, most simply to code and illsutrate this way
  String keystr = String.valueOf(key); //Can send a number to the Canvas or Console as a word
  println("Number of Repeats is", keystr); //Variable is a word here
  int num = int(keystr); //Change "Key Stroke" back to a number
  if ( num > 0 && num < 10 )
  {
    song1.loop(num);
  }
} //End keyPressed()

void mouseClicked() {
} //End mouseClicked()
