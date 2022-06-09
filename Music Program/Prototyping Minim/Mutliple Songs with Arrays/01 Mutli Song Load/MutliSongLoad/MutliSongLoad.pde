//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //current song related to number of songs, thus formulaic
//
void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet
//
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //0, 1, 2 changed to variable and operators
  song[currentSong] = minim.loadFile("../../../FreeWare Music/MusicDownload/groove.mp3");
  song[currentSong+=1] = minim.loadFile("../../../FreeWare Music/MusicDownload/Beat_Your_Competition.mp3");
  song[currentSong+=1] = minim.loadFile("../../../FreeWare Music/MusicDownload/The_Simplest.mp3");
//
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press l or L to play");
  //
}//End setup

void draw() {
}//End draw

void mousePressed() {
}//End mousePressed

void keyPressed() {
  int currentSong = 2; //Must match array variable numberOfSongs, note human numbering
  if ( key == 'l' || key == 'L') song[currentSong].loop(0); //Parameter is Parameter is number of repeats
}//End keyPressed
//
//End Main Program
