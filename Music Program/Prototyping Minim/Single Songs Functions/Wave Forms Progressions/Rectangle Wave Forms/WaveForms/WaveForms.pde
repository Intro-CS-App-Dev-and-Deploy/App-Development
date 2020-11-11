//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
AudioPlayer song1;

void setup() {
  size(712, 250); //Console output, not visual data, text promptos only, not complete yet
  //Might need to add parametery, like size(512, 200, P3D);
  
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
} //End of setup()

void draw() {
  background(0);
  stroke(255);
  
  //Draw the waveforms
  //The values returned by left.get() and right.get() will be between -1 and 1,
  //  so we need to scale them up to see the waveform
  //Note: that if the file is MONO, left.get() and right.get() will return the same value
  
  for(int i = 0; i < song1.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song1.bufferSize(), 100, 612 );
    float x2 = map( i+1, 0, song1.bufferSize(), 100, 612 );
    line( x1, 50 + song1.left.get(i)*50, x2, 50 + song1.left.get(i+1)*50 );
    line( x1, 150 + song1.right.get(i)*50, x2, 150 + song1.right.get(i+1)*50 );
  }
  
  //Draw a line to show where in the song playback is currently located
  float posx = map(song1.position(), 0, song1.length(), 50, 612);
  stroke(0,200,0);
  line(posx, 0, posx, 200);
  
  //Draw text depending on whether music is playing
  if ( song1.isPlaying() )
  {
    text("Press p or P to PAUSE.", 10, 20 );
  }
  else
  {
    text("Press p or P to PLAY.", 10, 20 );
  }
} //End of draw()

void mousePressed() {
} //End of mousePressed()

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
} //End of keyPressed()
