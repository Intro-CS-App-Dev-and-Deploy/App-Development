//Library: use Sketch / Import Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup () {
  //size(500, 600);
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../../../../FreeWare Music/MusicDownload/groove.mp3"); //able to pass absolute path, file name, and URL
  song1.loop(0); //Parameter is Parameter is number of repeats
} //End setup()

void draw() {} //End draw()

void keyPressed() {} //End keyPressed()

void mouseClicked() {} //End mouseClicked()