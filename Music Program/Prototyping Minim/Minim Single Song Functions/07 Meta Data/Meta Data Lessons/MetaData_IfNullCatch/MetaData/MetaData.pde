//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1; //"Song One"
AudioMetaData songMetaData1; //"Song Meta One"

void setup() {
  size(512, 256, P2D);

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("../../../../../FreeWare Music/MusicDownload/groove.mp3");
  songMetaData1 = song1.getMetaData(); //reads song meta 1, like song 1, mimicing array notation

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");

  textFont(createFont("Serif", 12)); //simple text starting code, refer to how text is usually started, uses default font already installed
  
  //For Prototyping, print all information to the console first
  //Verifying Meta Data
  println( "File Name: ", songMetaData1.fileName() );
  println( "Length (in milliseconds): ", songMetaData1.length() );
  println( "Length (in seconds): ", songMetaData1.length()/1000 );
  println( "Length (in minutes & seconds): ", (songMetaData1.length()/1000)/60, " minute", (songMetaData1.length()/1000)-((songMetaData1.length()/1000)/60 * 60), " seconds" );
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
  //
  //Using a Catch for NULL Values in Variables
  if(songMetaData1.title() == null) {
    println( "\nTitle:", songMetaData1.title() );
  } else {
    println ("\nTitle: ", "null");
  }
  //
}

void draw() {
  background(0);
  int yi = 15;
  int ys = 25, y = ys; //Two Variables
  text("File Name: " + songMetaData1.fileName(), 5, y);
  text("Length (in milliseconds): " + songMetaData1.length(), 5, y+=yi);
  text("Title: " + songMetaData1.title(), 5, y+=yi);
  text("Author: " + songMetaData1.author(), 5, y+=yi); 
  text("Album: " + songMetaData1.album(), 5, y+=yi);
  text("Date: " + songMetaData1.date(), 5, y+=yi);
  text("Comment: " + songMetaData1.comment(), 5, y+=yi);
  text("Lyrics: " + songMetaData1.lyrics(), 5, y+=yi ); 
  text("Track: " + songMetaData1.track(), 5, y+=yi);
  text("Genre: " + songMetaData1.genre(), 5, y+=yi);
  text("Copyright: " + songMetaData1.copyright(), 5, y+=yi);
  text("Disc: " + songMetaData1.disc(), 5, y+=yi);
  text("Composer: " + songMetaData1.composer(), 5, y+=yi);
  text("Orchestra: " + songMetaData1.orchestra(), 5, y+=yi);
  text("Publisher: " + songMetaData1.publisher(), 5, y+=yi);
  text("Encoded: " + songMetaData1.encoded(), 5, y+=yi);
}

void mousePressed() {
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}
