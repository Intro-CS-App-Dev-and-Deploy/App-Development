import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  setup1();
}

void draw() {
  draw1();
}//End draw()

void keyPressed() {
  if ( key=='r' || key=='R' ) currentSong = int(random(0, numberOfSongs)); //Casting Reminder: 0 included, 3 not uncluded, thus only 0, 1, 2
  //CAUTION: using this definition of random will result in playing more than one song at the same time
  //by pressing R and P mutliple times
  println ("Current Song before the next or back button, ", "Number: "+currentSong); //For Debugging
  otherKeyPresses();
}//End keyPressed()

void mousePressed() {
}
