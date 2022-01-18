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
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("../../../../FreeWare Music/MusicDownload/groove.mp3");
  song[1] = minim.loadFile("../../../../FreeWare Music/MusicDownload/Beat_Your_Competition.mp3");
  song[2] = minim.loadFile("../../../../FreeWare Music/MusicDownload/The_Simplest.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}

void draw() {
  if ( song[currentSong].position() >= song[currentSong].length()-500 ) { //Errors for Grove and Simplist
    song[currentSong].pause(); 
    song[currentSong].rewind(); 
    currentSong++;
    song[currentSong].play();
  }
  if ( currentSong == numberOfSongs ) {
    currentSong = numberOfSongs - numberOfSongs;
    song[currentSong].play();
  }
  println (song[currentSong].position(), song[currentSong].length());
}

void mousePressed() {
}

void keyPressed() {
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  if (key == 'l' || key == 'L') song[currentSong].play();
}
