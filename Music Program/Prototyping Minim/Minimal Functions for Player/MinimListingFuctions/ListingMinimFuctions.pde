
/* Purpose: a listing of all functions to conceptualize sequential algorithms
 - Also repeats functions in place most likely to be found
 - Uses IDE functions
 
 Minim minim; //creates object to access all functions
 AudioPlayer song1; 
 //creates variable to hold all data within a song (not just audio bits)
 //Mono and Stereo playback of WAV, AIFF, AU, SND, and MP3 files
 */

//Minim Library: use Sketch / Import Library / Add Library
//Minim Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// Global Variables, Classes, Objects, etc.
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" type variable to hold all data within a song (not just audio bits), introduces arrays with alphaNumberic
// AudioPlayer hold specific file extensions: WAV, AIFF, AU, SND, and MP3
// Note: without data structure, only one song exists within Play List

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  setupFunctions();
}
//
/* Note: draw will contain functions that simply belong outside declaration or setup
 - void keyPressed() {} //End keyPressed()
 - void mousePressed() {} //End mousePressed()
 */
//
void draw() {
  drawFunctions();
}//End draw()
