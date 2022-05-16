import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; //WAV, AIFF, AU, SND, and MP3
int currentSong = numberOfSongs - numberOfSongs; //Current Song is 0

//

void setup () {
  println("start of console :)");
    minim = new Minim(this);
  song[currentSong] = minim.loadFile("media/569791__migfus20__lo-fi-music-guitar-loop.mp3");
   song[currentSong + 1] = minim.loadFile("media/544416__shortrecord__background-music.mp3");
    song[currentSong + 2] = minim.loadFile("media/325647__shadydave__expressions-of-the-mind-piano-loop.mp3");
  //song1.play(); //put number in ms to start or leave empty
  
  
  //functions
  fullScreen();
  population();
  textSetup();
  noStroke();
  BGcolor = white;

 
  
  //drawing surface
  fill(BGcolor);
  rect(dsx, dsy, dsw, dsh);
  fill(white);
  
  //menuBase
  rect(mx, my, mw, mh);
  
  //rect(mw, displayHeight*0, displayWidth*2/10, displayHeight);
  




  
  stroke(reset);
}


void draw () {

  //==16unctions===
  quitButDraw();
  stButDraw();
  coButDraw();
  tbButDraw();
  backButDraw();
  tpButDraw();
  jbButDraw();
  noStroke();
  

  fill(gray);
  rect(mw+sideMenuW, displayHeight*0, displayWidth*2.1/64, displayHeight*1); 
  fill(white);
  
  
  
  //===draw===
 /* if (draw == true && mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    stroke(drawColor);
    strokeWeight(drawStroke);
    line(mouseX, mouseY, pmouseX, pmouseY);
    stroke(black);
    stroke(reset);
    //ellipse(mouseX, mouseY, dd, dd);
  } 
  */
  

}

void mousePressed () {
  quitButMP();
  sbMP();
  tbMP();
  cbMP();
  bbMP();
  tpMP();
  jbMP();
  
 
  
  //draw func
  if(mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  } 
  
  
  
}


void keyPressed () {
  
  
  
}
