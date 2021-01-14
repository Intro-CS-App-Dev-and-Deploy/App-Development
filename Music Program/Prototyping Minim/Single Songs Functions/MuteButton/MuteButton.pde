//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup() {
  //size(): Console output not visual data
  setup1();
}

void draw() {
  println(song1.position()); //Purpose: illustrate song continues to play while muted
}//End draw

void mousePressed() {}//End mousePressed

void keyPressed() {
  playKey();
  //
  //Note: Song Continues to Play while muted
  //To see Position, uncomment song1.position() in draw()
  if ( key=='m' || key=='M' ) {//Muted Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Muted button
  //
}//End keyPressed
