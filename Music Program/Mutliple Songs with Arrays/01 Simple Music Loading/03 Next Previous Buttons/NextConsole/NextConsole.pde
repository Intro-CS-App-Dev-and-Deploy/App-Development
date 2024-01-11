//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs + int ( random (numberOfSongs) ); //Uses formula or FileIO Memory

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("../../../../../FreeWare Music/MusicDownload/groove.mp3");
  song[1] = minim.loadFile("../../../../../FreeWare Music/MusicDownload/Beat_Your_Competition.mp3");
  song[2] = minim.loadFile("../../../../../FreeWare Music/MusicDownload/The_Simplest.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'n' || key == 'N') { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      //Seriuos Problems, playing multiple songs at the same time unless fixed
      //Students will build this when ELSE complete
      song[currentSong].pause();
      song[currentSong].rewind();
      arrayErrorFix();
      song[currentSong].play();
    } else {
      //Prototype this first
      song[currentSong].rewind();
      arrayErrorFix();
      }
    }

  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) { //Built-in bug, .length is somtimes bigger than .position is able to access
      //if this doesn't make sense, change the definition of play-pause
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
