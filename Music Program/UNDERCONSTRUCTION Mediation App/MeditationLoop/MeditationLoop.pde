//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory

void setup() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("../../FreeWare Music/Unused Music Meditative/01 Tratak.mp3");
  song[1] = minim.loadFile("../../FreeWare Music/Unused Music Meditative/02 Cast_of_Pods.mp3");
  song[2] = minim.loadFile("../../FreeWare Music/Unused Music Meditative/03 Luxery.mp3");
  song[3] = minim.loadFile("../../FreeWare Music/Unused Music Meditative/04 This_is_a_Jazz_Space.mp3");
  song[4] = minim.loadFile("../../FreeWare Music/Unused Music Meditative/05 Waterfall.mp3");
}

void draw() {
  if ( song[currentSong].position() >= song[currentSong].length()-500 ) { //Errors for Grove and Simplist
    song[currentSong].pause(); 
    song[currentSong].rewind(); 
    currentSong++;
    if ( currentSong < numberOfSongs )song[currentSong].play();
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
