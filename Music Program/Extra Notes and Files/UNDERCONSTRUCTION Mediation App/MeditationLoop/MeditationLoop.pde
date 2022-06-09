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
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory
String pathway="../../../FreeWare Music/Unused Music Meditative/";
//
void setup() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song[currentSong] = minim.loadFile(pathway+"Tratak.mp3");
  song[currentSong++] = minim.loadFile(pathway+"Cast_of_Pods.mp3");
  println(song[currentSong]);
  song[currentSong++] = minim.loadFile(pathway+"Luxery.mp3");
  song[currentSong++] = minim.loadFile(pathway+"This_is_a_Jazz_Space.mp3");
  song[currentSong++] = minim.loadFile(pathway+"Waterfall.mp3");
  currentSong -= currentSong;
  //
  for ( int i=currentSong; i<song.length; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
  //
  //When Program is done booting, immediately start playing music
  song[currentSong].play(); //Autoplay Algorithm Start
  //
}//End setup
//
void draw() {
  //Simple AutoPlay Algorithm
  if ( song[currentSong].isPlaying() ) { //Note: computer does not play entire file for some reason (Errors for Grove and Simplist)
    //Empty IF
    //When the song stops playing ... this cues functions to reset the file and play the next song
  } else {
    song[currentSong].pause(); // Reset file
    song[currentSong].rewind(); //Reset file
    currentSong++;
    if ( currentSong < numberOfSongs ) { //Variable is within play list
      song[currentSong].play();
    } else { //When variable is on the last song or beyond the play list (not negative numbers are ignored)
      //No Boolean is needed here because varaible does not go outside these values
      //A varaible check is included below "to be sure"
      currentSong -= currentSong;
      song[currentSong].play();
    }
  }
  println (currentSong);
  if ( currentSong<0 || currentSong>=numberOfSongs ) currentSong -= currentSong; //reset to zero
  println("Title:", songMetaData[currentSong].title() );
  println ("Title:", songMetaData[currentSong].title(), "Time Remaining", song[currentSong].length()- song[currentSong].position() );
  //
}// End draw
//
void mousePressed() {
}//End mousePressed
//
void keyPressed() {
}//End keyPressed
//
// End Main Program
