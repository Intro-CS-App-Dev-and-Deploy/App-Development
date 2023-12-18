import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
// Global Variables
Minim minim;
AudioPlayer song1; //"Song One"
AudioMetaData songMetaData1; //"Song Meta One"
//
PFont titleFont;
color black = #000000;
color purple = #2C08FF;
//
void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("groove.mp3");
  songMetaData1 = song1.getMetaData(); //reads song meta 1, like song 1, mimicing array notation
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  //
  println("Start of Console");
  println("Click the Console to Finish Starting this program"); //Review of OS-level button
  println( "Title: ", songMetaData1.title() ); //Introduction of Key:Value Pairs (similar to websites)
}
//
void draw() {
  background (black); //Reminder of OS-Level Button
  rect(width*1/4, height*0, width*1/2, height*1/10);
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 30); //Change the number until it fits, largest font size
  text(songMetaData1.title(), width*1/4, height*0, width*1/2, height*1/10);
  fill(255); //Reset to white for rest of the program
}//End draw()
//
void keyPressed() {}//End KeyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
