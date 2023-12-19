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
File musicFolder; //Class for java.io.* library
Minim minim; //creates object to access all functions
int numberOfSongs = 1; //Placeholder Only, reexecute lines after fileCount Known
AudioPlayer[] playList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
AudioMetaData[] playListMetaData = new AudioMetaData[numberOfSongs]; //same as above
PFont generalFont;
color purple = #2C08FF;
//
void setup() {
  //size() or fullScreen()
  //Display Algorithm
  String relativePathway = "../../../../../../FreeWare Music/MusicDownload/"; //Relative Path
  String absolutePath = sketchPath( relativePathway ); //Absolute Path
  println("Main Directory to Music Folder", absolutePath);
  musicFolder = new File(absolutePath);
  int musicFileCount = musicFolder.list().length;
  println("File Count of the Music Folder", musicFileCount);
  File[] musicFiles = musicFolder.listFiles(); //String of Full Directies
  println("List of all Directories of Each Song to Load into music playlist");
  printArray(musicFiles);
  //Demonstration Only, files know their names in Java.IO Library
  for ( int i = 0; i < musicFiles.length; i++ ) {
    println("File Name", musicFiles[i].getName() );
  }
  //NOTE: take each song's pathway and load the music into the PlayList
  String[] songFilePathway = new String[musicFileCount];
  for ( int i = 0; i < musicFiles.length; i++ ) {
    songFilePathway[i] = ( musicFiles[i].toString() );
  }
  // Re-execute Playlist Population, similar to DIV Population
  int numberOfSongs = musicFileCount; //Placeholder Only, reexecute lines after fileCount Known
  playList = new AudioPlayer[numberOfSongs]; //song is now similar to song1
  playListMetaData = new AudioMetaData[numberOfSongs]; //same as above
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  //
  for ( int i=0; i<musicFileCount; i++ ) {
    playList[i]= minim.loadFile( songFilePathway[i] );
    playListMetaData[i] = playList[i].getMetaData();
  } //End Music Load
  /*
  playList[0]= minim.loadFile( playListFilePathway[0] );
  playListMetaData[0] = playList[0].getMetaData();
  playList[1]= minim.loadFile( playListFilePathway[1] );
  playListMetaData[1] = playList[1].getMetaData();
  playList[2]= minim.loadFile( playListFilePathway[2] );
  playListMetaData[2] = playList[2].getMetaData();
  playList[3]= minim.loadFile( playListFilePathway[3] );
  playListMetaData[3] = playList[3].getMetaData();
  playList[4]= minim.loadFile( playListFilePathway[4] );
  playListMetaData[4] = playList[4].getMetaData();
  playList[5]= minim.loadFile( playListFilePathway[5] );
  playListMetaData[5] = playList[5].getMetaData();
  playList[6]= minim.loadFile( playListFilePathway[6] );
  playListMetaData[6] = playList[6].getMetaData();
  playList[7]= minim.loadFile( playListFilePathway[7] );
  playListMetaData[7] = playList[7].getMetaData();
  */
  //generalFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  playList[0].play();
} //End setup
//
void draw() {
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
