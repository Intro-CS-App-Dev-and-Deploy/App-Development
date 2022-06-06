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
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Muted button
  if ( key == 'f' || key == 'F') song1.skip(1000); // skip forward 1 second (1000 milliseconds)
  if ( key == 'r' || key == 'R') song1.skip(-1000); // skip backward 1 second (1000 milliseconds)
  // Stop
  if (key == 's' || key == 'S') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not playing
      song1.rewind();
    }
  }//End Stop
  //Play Pause, see CAUTION Note in ReadMe.txt
  if (key == 'p' || key == 'P') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length()-2000 ) { //Special Situation: at the end of the song (built-in stop button)
      //End of Song Calcualtion: hardcode 1000 OR use formula to say "listen to 80% of the sone"
      //Alternate formula: song1.length() - song1.position() <= 1000
      song1.rewind();
      song1.play();
    } else {
      song1.play(); //Parameter is milli-seconds from start of audio file to start of playing (i.e. 14000 will start 14 seconds into the song)
    }
  }//End Play Pause
} //End keyPressed()

void mouseClicked() {
} //End mouseClicked()
