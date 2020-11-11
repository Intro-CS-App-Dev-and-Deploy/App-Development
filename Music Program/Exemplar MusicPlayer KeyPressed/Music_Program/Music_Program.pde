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
int numberOfSongs = 4;
int numberOfSoundEffects = 1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffect = new AudioPlayer[numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //Zero starting index
int currentSoundEffect = numberOfSoundEffects - numberOfSoundEffects; //Zero starting index
AudioMetaData songMetaData1; //needs to be an array
int loopNum = 1; //Able to connect this variable to buttons, increasing the loop number

void setup() {
  minim = new Minim(this);
  //load from data directory, loadFile should also load from project folder
  song[0] = minim.loadFile("Music/groove.mp3");
  song[1] = minim.loadFile("Music/The_Simplest.mp3");
  song[2] = minim.loadFile("Music/Start_Your_Engines.mp3");
  song[3] = minim.loadFile("Music/Ghost_Walk.mp3");
  songMetaData1 = song[0].getMetaData();
  //
  soundEffect[0] = minim.loadFile("Sound Effects/Car_Door_Closing.mp3");

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
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { //Song is not Playing
      song[currentSong].rewind();
    }
  }
  //
  if ( key == 'l' || key == 'L' ) song[currentSong].loop(loopNum);//Single line IF
  //"L" Automatically loops the song, and starts playing from the beginning
  //
  if ( key == 'f' || key == 'F') song[currentSong].skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
  if ( key == 'r' || key == 'R') song[currentSong].skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
  //
  // Debugging for 
  println( "\nSong Position: ", "\t\t\t\t", song[currentSong].position(), "milliseconds" );
  println( "Song Position:", (song[currentSong].position()/1000)/60, "minutes\t", (song[currentSong].position()/1000)-((song[currentSong].position()/1000)/60 * 60), "seconds" );
  //
  if (key == 'n' || key == 'N') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1) {
        currentSong = currentSong - (numberOfSongs-1);
      } else {
        currentSong = currentSong + 1;
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      if ( currentSong == numberOfSongs - 1) {
        currentSong = currentSong - (numberOfSongs);
      }
      currentSong = currentSong + 1;
      println(currentSong);
    }
  } 
  //
  if (key == 'b' || key == 'B') { //Next-Back Code
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong - 1
      }
      println(currentSong);
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1;
      }
      println(currentSong);
    }
  } 
  //
  if (key == 'q' || key == 'Q') { //Quit Code
    soundEffect[0].play();
    soundEffect[0].rewind();
    //delay(2800);
    exit();
  }
}

void mousePressed() {
}
