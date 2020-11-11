/**
 * This sketch demonstrates how to use the <code>skip</code> method of a <code>Playable</code> class. 
 * The class used here is <code>AudioPlayer</code>, but you can also skip an <code>AudioSnippet</code>.
 * When you skip, it is always measured from the current position of the recording. So <code>skip(100)</code> will 
 * set the "playhead" at 100 milliseconds from the current position. A sort of fast-forward. It is also possible 
 * to skip in a negative direction. So <code>skip(-200)</code> will set the "playhead" to 200 milliseconds before 
 * the current position. Using <code>skip</code> will not change the play state of <code>Playable</code>, 
 * meaning that if it was already playing it will continue playing from the new position, but if it was not playing, 
 * skipping will not start playback, it will simply set the point at which playback will begin. 
 * If an error occurs while trying to skip, the position will not change. 
 * If you try to skip to a position that is less than zero or try to skip past the end of the 
 * recording, the position will be clamped to zero or <code>length()</code>. 
 * <p>
 * Press 'f' to skip by 1000 milliseconds.<br />
 * Press 'r' to skip by -1000 milliseconds.
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

void setup() {
  //size(512, 200, P3D); //Console output, not visual data, text promptos only, not complete yet
  size(512, 200);

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press p or P to Play and Pause");
  println("Press f or F to skip by 1000 milliseconds, or 1 second");
  println("Press r or R to skip by 1000 milliseconds, or 1 second");
}

void draw() {
  background(0);
  stroke(255);

  for (int i = 0; i < song1.bufferSize() - 1; i++) {
    line(i, 50  + song1.left.get(i)*50, i+1, 50  + song1.left.get(i+1)*50);
    line(i, 150 + song1.right.get(i)*50, i+1, 150 + song1.right.get(i+1)*50);
  }

  float posx = map(song1.position(), 0, song1.length(), 0, width);
  stroke(0, 200, 0);
  line(posx, 0, posx, height);

  stroke(255);
  text("Press f to skip forward and r to skip backward.", 10, 20);
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

  if ( key == 'f' || key == 'F') song1.skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
  if ( key == 'r' || key == 'R') song1.skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
}
