//File / Sketch / Import Library / Add Library / Click Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

float gain = 15.0;

void setup() {
  //size(): Console output not visual data
  setup1();
}

void draw() {
}//End draw

void mousePressed() {
}//End mousePressed

void keyPressed() {
  playKey();
  println("Current gain is", song1.getGain());
  if ( key=='v' || key=='V' ) { //Will amplify the volume, not control it
    gain = gain+song1.getGain();
    song1.setGain(gain);
  }
}//End keyPressed
