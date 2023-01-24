//Global Variables
int appWidth, appHeight, smallerDimension, largerDimension;
Boolean OS_on=false, splashScreenStart=false, nightMode=false;
Boolean box3=false, box6=false, box9=false, box8=false, box7=false, box4=false, box1=false, box2=false;
PImage backgroundImage, backgroundImage5, backgroundImage3, backgroundImage1, kolobok, backgroundImage9, rabbit, music, backgroundImage7, wolf, bear, pic1, audio;
String box3Text="There once lived a little round bun called Kolobok. He escaped from his house, because he didn't want to be eaten.", box9Text="He was chased by a hare, a bear, and a wolf, but saved himself by singing a song.", box4Text="Everything was going well until he met a Fox. She said to Kolobok: 'Hop onto my tongue, so I can hear you better'";
String box1Text="Little Kolobok jumped onto the Fox's tongue and began to sing", buttonText="Next";
String box2Text="But before it could go on, the Fox opened her mouth and -snap!- she gobbled it up. The fairy tale teaches that one cannot trust strangers, especially foxes.";
String endText="The end.";
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer  abox3, abox9, abox4, abox1, abox2;  

/* Night Mode Comment
 Purple not for Night Mode, full BLUE
 resetDefaultInk is WHITE, not Night Mode Friendly, full BLUE
 */
color purple=#FF00FF, resetDefaultInk=#FFFFFF;
//
//
void setup() {
  size(1200, 900);
  appWidth = width;
  appHeight = height;
  display();
  population();
  imagePopulation();
  textSetup();
  println("Smaller Dimension is", smallerDimension, "Larger Dimension is", largerDimension);
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  abox1 = minim.loadFile("../Audio/box1.mp3");
  abox2 = minim.loadFile("../Audio/box2.mp3");
  abox3 = minim.loadFile("../Audio/box3.mp3");
  abox4 = minim.loadFile("../Audio/box4.mp3");
  abox9 = minim.loadFile("../Audio/box9.mp3");
}//End Setup
void draw() {
  if ( splashScreenStart==false ) splashScreen(); //OS Level Mouse Click
  if ( splashScreenStart==true ) homeScreen();
  //
}//End draw
//
void keyPressed() {
  //Splash Screen SPACE Bar
  if ( key==' ') {
    splashScreenStart = true;
    backgroundImage();
  }//End Splash Screen SPACE Bar
  //
  //Key Board Short Cuts
  if ( key==CODED && keyCode==ESC ) exit();
  if ( key=='Q' || key=='q' ) exit();
  if ( key=='N' || key=='n' ) {
    if ( nightMode==true ) {
      nightMode=false;
      backgroundImage();
    } else {
      nightMode=true;
      backgroundImage();
    }
  }
  //
}//End keyPressed
//
void mousePressed() {

  if ( splashScreenStart==true && mouseX>=quitX && mouseX<=quitX+quitWidth && mouseY>=quitY && mouseY<=quitY+quitHeight ) exit();
  //
  if (mouseX>=startButtonX && mouseX<=startButtonX+button1Width && mouseY>=startButtonY && mouseY<=startButtonY+button1Height) box3 = true;
  if (mouseX>=restartButtonX && mouseX<=restartButtonX+button1Width && mouseY>=restartButtonY && mouseY<=restartButtonY+button1Height){
 box3=false;
 box6=false;
 box9=false;
 box8=false;
 box7=false;
 box4=false;
 box1=false;
 box2=false;
 abox1.rewind();
 abox3.rewind();
 abox4.rewind();
 abox9.rewind();
 abox2.rewind();
    abox3.pause();
    abox9.pause();
    abox4.pause();
    abox1.pause();
    abox2.pause();
    
  }
  if (mouseX>=nightModeButtonX && mouseX<=nightModeButtonX+button1Width && mouseY>=nightModeButtonY && mouseY<=nightModeButtonY+button1Height) {
    if ( nightMode==true ) {
      nightMode=false;
      homeScreen();
    } else {
      nightMode=true;
      homeScreen();
    }
  }
  //box3
  if (mouseX>=pt7X && mouseX<=pt7X+audioWidth && mouseY>=audio3Y && mouseY<=audio3Y+audioHeight)  {
    if ( abox3.isPlaying() ) {
      abox3.pause();
    } else if ( abox3.position() >= abox3.length()-abox3.length()*1/5 ) {
      abox3.rewind();
      abox3.play();
    } else {
      abox3.play();
    }
  }
  //box9
  if (mouseX>=pt15X && mouseX<=pt15X+audioWidth && mouseY>=audio9Y && mouseY<=audio9Y+audioHeight)  {
    if ( abox9.isPlaying() ) {
      abox9.pause();
    } else if ( abox9.position() >= abox9.length()-abox9.length()*1/5 ) {
      abox9.rewind();
      abox9.play();
    } else {
      abox9.play();
    }
  }//End Play Pause STop Button
  //box4
  if (mouseX>=pt9X && mouseX<=pt9X+audioWidth && mouseY>=audio4Y && mouseY<=audio4Y+audioHeight)  {
    if ( abox4.isPlaying() ) {
      abox4.pause();
    } else if ( abox4.position() >= abox4.length()-abox4.length()*1/5 ) {
      abox4.rewind();
      abox4.play();
    } else {
      abox4.play();
    }
  }//End Play Pause STop Button
  //box1
  if (mouseX>=pt5X && mouseX<=pt5X+audioWidth && mouseY>=audio1Y && mouseY<=audio1Y+audioHeight)  {
    if ( abox1.isPlaying() ) {
      abox1.pause();
    } else if ( abox1.position() >= abox1.length()-abox1.length()*1/5 ) {
      abox1.rewind();
      abox1.play();
    } else {
      abox1.play();
    }
  }//End Play Pause STop Button
    //box1
  if (mouseX>=pt6X && mouseX<=pt6X+audioWidth && mouseY>=audio2Y && mouseY<=audio2Y+audioHeight)  {
    if ( abox2.isPlaying() ) {
      abox2.pause();
    } else if ( abox2.position() >= abox2.length()-abox2.length()*1/5 ) {
      abox2.rewind();
      abox2.play();
    } else {
      abox2.play();
    }
  }//End Play Pause STop Button
  
  if (mouseX>=button3X && mouseX<=button3X+nextButtonWidth && mouseY>=button3Y && mouseY<=button3Y+nextButtonHeight) box6 = true; 
  if (mouseX>=button6X && mouseX<=button6X+nextButtonWidth && mouseY>=button6Y && mouseY<=button6Y+nextButtonHeight) box9 = true;
  if (mouseX>=button9X && mouseX<=button9X+nextButtonWidth && mouseY>=button9Y && mouseY<=button9Y+nextButtonHeight) box8 = true;
  if (mouseX>=button8X && mouseX<=button8X+nextButtonWidth && mouseY>=button8Y && mouseY<=button8Y+nextButtonHeight) box7 = true;
  if (mouseX>=button7X && mouseX<=button7X+nextButtonWidth && mouseY>=button7Y && mouseY<=button7Y+nextButtonHeight) box4 = true;
  if (mouseX>=button4X && mouseX<=button4X+nextButtonWidth && mouseY>=button4Y && mouseY<=button4Y+nextButtonHeight) box1 = true;
  if (mouseX>=button1X && mouseX<=button1X+nextButtonWidth && mouseY>=button1Y && mouseY<=button1Y+nextButtonHeight) box2 = true;
  if (mouseX>=button2X && mouseX<=button2X+nextButtonWidth && mouseY>=button2Y && mouseY<=button2Y+nextButtonHeight) exit();
}//End mousePressed
//
//End MAIN Program
