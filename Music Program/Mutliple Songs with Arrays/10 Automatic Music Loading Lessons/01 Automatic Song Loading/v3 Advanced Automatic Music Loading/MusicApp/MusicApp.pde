import java.io.*; //Pure Java Library
//
//Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
File file; //Class for java.io.* library
File[] files; //Moved to Global Variable for draw() music upload
String pathway, directory;
Minim minim; //creates object to access all functions
int fileCount; //CAUTION: Populated after directory made to the folder
int startingFileCount; //Needed for draw() music upload
int numberOfSongs = 1; //Placeholder Only, reexecute lines after fileCount Known
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //song is now similar to song1
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs]; //same as above
PFont generalFont;
color purple = #2C08FF;
//
int currentSong = 0; //PlayList variable for Next and Previous Buttons
//
void setup() {
  //size() or fullScreen()
  //Display Algorithm
  pathway = "../../../../../../FreeWare Music AutoUpload Demo/MusicDownload/"; //Relative Path
  directory = sketchPath( pathway ); //Absolute Path
  println("Main Directory to Music Folder", directory);
  file = new File(directory);
  startingFileCount = fileCount = file.list().length;
  println("File Count of the Music Folder", fileCount);
  files = file.listFiles(); //String of Full Directies
  println("List of all Directories of Each Song to Load into music playlist");
  printArray(files);
  //Demonstration Only, files know their names
  for ( int i = 0; i < files.length; i++ ) {
    println("File Name", files[i].getName() );
  }
  //NOTE: take each song's pathway and load the music into the PlayList
  String[] songFilePathway = new String[fileCount];
  for ( int i = 0; i < files.length; i++ ) {
    songFilePathway[i] = ( files[i].toString() );
  }
  // Re-execute Playlist Population, similar to DIV Population
  numberOfSongs = fileCount; //Placeholder Only, reexecute lines after fileCount Known
  song = new AudioPlayer[numberOfSongs]; //song is now similar to song1
  songMetaData = new AudioMetaData[numberOfSongs]; //same as above
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  for ( int i=0; i<fileCount; i++ ) {
    song[i]= minim.loadFile( songFilePathway[i] );
    songMetaData[i] = song[i].getMetaData();
  } //End Music Load
  generalFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  song[currentSong].play();
} //End setup
//
void draw() {
  //Uploading Music Code
  fileCount = file.list().length;
  if ( startingFileCount!=fileCount ) {
    if ( startingFileCount>fileCount ) { //File Remove
      exit(); //ERROR, not this simple
    }
    if ( startingFileCount<fileCount ) { //File Add
      song[currentSong].pause(); //Needs to be at beginning b/c after file upload currentSong becomes confused
      //
      startingFileCount = fileCount = file.list().length;
      files = file.listFiles();
      //
      String[] songFilePathway = new String[fileCount];
      for ( int i = 0; i < files.length; i++ ) {
        songFilePathway[i] = ( files[i].toString() );
      }
      //
      numberOfSongs = fileCount; //Placeholder Only, reexecute lines after fileCount Known
      song = new AudioPlayer[numberOfSongs]; //song is now similar to song1
      songMetaData = new AudioMetaData[numberOfSongs]; //same as above
      //
      for ( int i=0; i<fileCount; i++ ) {
        song[i]= minim.loadFile( songFilePathway[i] );
        songMetaData[i] = song[i].getMetaData();
      } //End Music Load
      //
    }
  } //End Auto Music Upload
  //Note: Looping Function
  //Note: logical operators could be nested IFs
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()!=-1 ) println("There are", song[currentSong].loopCount(), "loops left.");
  if ( song[currentSong].isLooping() && song[currentSong].loopCount()==-1 ) println("Looping Infinitely");
  if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  //Debugging Fast Forward and Fast Rewind
  //println( "Song Position", song1.position(), "Song Length", song1.length() );
  //
  // songMetaData1.title()
  rect(width*1/4, height*0, width*1/2, height*3/10); //mistake
  fill(purple); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  int size = 10; //Change this font size
  textFont(generalFont, size); //Change the number until it fits, largest font size
  text(songMetaData[currentSong].title(), width*1/4, height*0, width*1/2, height*3/10);
  fill(255); //Reset to white for rest of the program
} //End draw
//
void keyPressed() {
  //
  //Simple NEXT and PREVIOUS BUTTON
  if ( key==CODED && keyCode==LEFT ) { //PREVIOUS
    song[currentSong].pause();
    if ( currentSong==0 ) {
      currentSong = fileCount-1; //End of PlayList
      song[currentSong].play();
    } else {
      currentSong--;
      song[currentSong].play();
    }
  } //End Previous
  if ( key==CODED && keyCode==RIGHT ) { //NEXT
    song[currentSong].pause();
    if ( currentSong==fileCount-1 ) {
      currentSong = 0; //End of PlayList
      song[currentSong].play();
    } else {
      currentSong++;
      song[currentSong].play();
    }
  } //End NEXT

  if ( key=='P' || key=='p' ) song[currentSong].play();
  //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  //.play() includes .rewind()
  //
  if ( key>='1' || key<='9' ) { //Loop Button, previous (key=='1' || key=='9')
    //Note: "9" is assumed to be massive! "Simulate Infinite"
    String keystr = String.valueOf(key);
    //println(keystr);
    int loopNum = int(keystr); //Java, strongly formatted need casting
    song[currentSong].loop(loopNum); //Parameter is number of repeats
    //
  }
  if ( key=='L' || key=='l' ) song[currentSong].loop(); //Infinite Loop, no parameter OR -1
  //
  if ( key=='M' || key=='m' ) { //MUTE Button
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( song[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      song[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      song[currentSong].mute();
    }
  } //End MUTE
  //
  //Possible ERROR: FF rewinds to parameter milliseconds from SONG Start
  //Possible ERROR: FR rewinds to parameter milliseconds from SONG Start
  //How does this get to be a true ff and fr button
  //Actual .skip() allows for varaible ff & fr using .position()+-
  if ( key=='F' || key=='f' ) song[currentSong].skip( 0 ); //SKIP forward 1 second (1000 milliseconds)
  if ( key=='R' || key=='r' ) song[currentSong].skip( 1000 ); //SKIP  backawrds 1 second, notice negative, (-1000 milliseconds)
  //
  //Simple STOP Behaviour: ask if .playing() & .pause() & .rewind(), or .rewind()
  if ( key=='S' | key=='s' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause(); //auto .rewind()
    } else {
      song[currentSong].rewind(); //Not Necessary
    }
  }
  //
  //Simple Pause Behaviour: .pause() & hold .position(), then PLAY
  if ( key=='Y' | key=='y' ) {
    if ( song[currentSong].isPlaying()==true ) {
      song[currentSong].pause(); //auto .rewind()
    } else {
      song[currentSong].play(); //ERROR, doesn't play
    }
  }
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
