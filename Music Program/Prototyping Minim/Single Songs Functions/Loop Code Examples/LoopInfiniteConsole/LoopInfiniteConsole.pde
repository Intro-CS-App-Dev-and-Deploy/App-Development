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
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press l or L to turn ON and OFF LOOP Once.");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
  println ("keyPressed");
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
  if ( key == 'l' || key == 'L') {
    println ("Pressed l or L");
    if ( song1.isPlaying() ) {
      println ("isPlaying", song1.isPlaying());
      if (song1.isLooping()) {
        println ("isLooping()", song1.isLooping());
        song1.play();
      }
    } else {
      println ("isPlaying", song1.isPlaying());
      song1.loop();
    }
  }
}
