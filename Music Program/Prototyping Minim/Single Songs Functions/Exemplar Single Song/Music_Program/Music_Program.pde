// Music Program
/* Music Files
 The_Simplest.mp3
 Ghost_Walk.mp3
 Start_Your_Engines.mp3p
 */
/* Sound Effects
 Wood_Door_Open_and_Close_Series.mp3
 The_Simplest_Sting.mp3
 Car_Door_Closing.mp3
 */
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;
AudioMetaData songMetaData1;
int loopNum = 1; //Able to connect this variable to buttons, increasing the loop number

void setup() {
  minim = new Minim(this);
  //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");
  songMetaData1 = song1.getMetaData();
  
  //Instructions
  println("Start of Console");
  println("Click the Canvas to Finish Starting this program");
  println("Press P to Play and Pause, will rewind when at the end");
  println("Press S to Stop and rewind to the beginning");
  println("Press L to loop the song");
  //
  //Verifying Meta Data
  //Always available
  println( "File Name: ", songMetaData1.fileName() );
  println( "Length (in milliseconds): ", songMetaData1.length() );
  println( "Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
  //Sometimes available
  println( "Title: ", songMetaData1.title() );
  println( "Author: ", songMetaData1.author() ); //Song Writer or Performer
  println( "Composer: ", songMetaData1.composer() ); //Song Writer
  println( "Orchestra: ", songMetaData1.orchestra() );
  println( "Album: ", songMetaData1.album() );
  println( "Disk: ", songMetaData1.disc() );
  println( "Publisher: ", songMetaData1.publisher() );
  println( "Date Release: ", songMetaData1.date() );
  println( "Copyright: ", songMetaData1.copyright() );
  println( "Comment: ", songMetaData1.comment() );
  println( "Lyrics: ", songMetaData1.lyrics() );
  println( "Track: ", songMetaData1.track() );
  println( "Genre: ", songMetaData1.genre() );
  println( "Encoded: ", songMetaData1.encoded() ); //how a computer reads the file
  //Catch for Null Variables inside TAB, advanced skil;
  println("\nRepeating Code Example");
  repeatingCode(songMetaData1);
}

void draw() {
}

void keyPressed() {
  if ( key == 'p' || key == 'P' ) { //Caps lock can be on
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not Playing
      song1.rewind();
    }
  }
  //
  if( key == 'l' || key == 'L' ) song1.loop(loopNum);//Single line IF
  //"L" Automatically loops the song, and starts playing from the beginning
  //
  if ( key == 'f' || key == 'F') song1.skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
  if ( key == 'r' || key == 'R') song1.skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
  //
  // Debugging for 
  println( "\nSong Position: ", "\t\t\t\t", song1.position(), "milliseconds" );
  println( "Song Position:", (song1.position()/1000)/60, "minutes\t", (song1.position()/1000)-((song1.position()/1000)/60 * 60), "seconds" );
  //
}

void mousePressed() {
}
