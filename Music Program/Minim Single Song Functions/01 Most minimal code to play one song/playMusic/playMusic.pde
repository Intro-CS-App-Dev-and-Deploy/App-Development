//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  String groove = "groove.mp3";
  String extension = ".mp3";
  String pathway = "FreeWare Music/MusicDownload/"; //Relative Path
  String path = sketchPath( pathway + groove ); //Absolute Path
  // See: https://poanchen.github.io/blog/2016/11/15/how-to-add-background-music-in-processing-3.0
  println(path);
  song1 = minim.loadFile( path );
  song1.loop(0);
}//End setup
//
void draw() {}//End draw
//
void keyPressed() {
  song1.loop(0);
}//End keyPressed
//
void mouseClicked() {}//End mousePressed
//
//End Main Program