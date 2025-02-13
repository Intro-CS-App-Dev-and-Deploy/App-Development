import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
color white = #FFFFFF;
Minim minim;
AudioPlayer song1;

void setup () {
  size(500, 600);
  //Using WIDTH and HEIGHT Key Varaibles, communciaiton to the display Geometry
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"

  quitButtonSetup();
  musicSongs();
}

void draw() {
  background(white); 
  musicPlayerGUI_Setup();
  quitButtonDraw();
}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerButtons();
}
