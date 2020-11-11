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
int loopIntNum = 1; //Able to connect this variable to buttons, increasing the loop number

void setup() {
  //size(): Console output, not visual data, text promptos only, not complete yet

  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press l or L to Play, song will automatically start, finish once, and loop once.");
}

void draw() {
}

void mousePressed() {
}

void keyPressed() {
  if ( key == 'l' || key == 'L') song1.loop(loopIntNum); //single line IF, actually plays the song twice, once to start, once to loop
}
