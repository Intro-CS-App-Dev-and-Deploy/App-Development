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

void draw() {}//End draw

void mousePressed() {}//End mousePressed

void keyPressed() {
  playKey();
  println("Current Volume is", song1.getVolume());
  if ( key=='v' || key=='V' ) song1.setVolume(0.2);
  if ( key=='m' || key=='M' ) {//Muted Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Muted button
}//End keyPressed
