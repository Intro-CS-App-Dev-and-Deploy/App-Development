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
  println("Song Position", song1.position(), "Song Length", song1.length());
} //End draw()

void keyPressed() {
  int loopNum = 0; //Local Variable plays once and loops twice
  //Play Button as zero repeat
  if ( key == 'l' || key == 'L') song1.loop(loopNum); //Parameter is Parameter is number of repeats
  //Stop as stop and begin from the beginning of the song
  if ( key=='m' || key=='M' ) {//Muted Button
  //Note: Mute has built-in pause button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Muted button
} //End keyPressed()

void mouseClicked() {
} //End mouseClicked()
