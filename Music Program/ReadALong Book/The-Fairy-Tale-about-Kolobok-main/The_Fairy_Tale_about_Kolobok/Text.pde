String spaceBar = "Press the SPACE BAR to continue", name="The Fairy Tale about Kolobok", startButton="Start";
String restartButton = "Restart", nightModeButton="Night Mode";
PFont constantia, arial;
color green= #093B0E;
//
void textSetup() {
  constantia = createFont("Constantia", 48);
  arial = createFont("Arial Bold", 48);

}//End textSetup
//
void spaceBarText() {
  rect( startX, startY, startWidth, startHeight );
  fill(white); 
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  int size = 35; //Change the number until it fits
  textFont(constantia, size); 
  text( spaceBar, startX, startY, startWidth, startHeight );
  fill(resetDefaultInk);
}//End spaceBarText
//
void box5Text() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 55);
   fill(green);
  text(name, pt6X, pt6Y, rectWidth, rectHeight-button1Height);
  textFont(constantia);
   fill(white);
}
void startButtonText() {
  textAlign (CENTER, CENTER);
  textFont(arial, 26);
   fill(black);
  text(startButton, startButtonX, startButtonY, button1Width, button1Height);
  fill(white);
}
void restartButtonText() {
  textAlign (CENTER, CENTER);
  textFont(arial, 26);
   fill(black);
  text(restartButton, restartButtonX, restartButtonY, button1Width, button1Height);
  fill(white);
}
void nightModeButtonText() {
  textAlign (CENTER, CENTER);
  textFont(arial,18);
   fill(black);
  text(nightModeButton, nightModeButtonX,nightModeButtonY, button1Width, button1Height);
  fill(white);
}
void box3Text() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 35);
   fill(green);
  text(box3Text, pt3X, pt3Y, rectWidth, rectHeight-button1Height);
  textFont(constantia);
   fill(white);
}
void buttonText3() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button3X, button3Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
}
void buttonText6() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button6X, button6Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
}
void box9Text() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 40);
   fill(green);
  text(box9Text, pt11X, pt11Y, rectWidth, rectHeight-button1Height);
  textFont(constantia);
   fill(white);
}
void buttonText9() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button9X, button9Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
}
//End Text Subprogram
void buttonText8() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button8X, button8Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
}
void buttonText7(){
textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button7X, button7Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
 }
   void box4Text() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 36);
   fill(green);
  text(box4Text, pt5X, pt5Y, rectWidth, rectHeight-button1Height);
  textFont(constantia);
   fill(white);
}
void buttonText4(){
textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button4X, button4Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
 }

void buttonText1(){
  textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(buttonText, button1X, button1Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
 }
 void box1Text() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 36);
   fill(green);
  text(box1Text, pt1X, pt1Y, rectWidth, rectHeight*1/2);
  textFont(constantia);
   fill(white);
}
void box2Text() {
  textAlign (CENTER, CENTER);
  textFont(constantia, 29);
   fill(green);
  text(box2Text, pt2X, pt2Y, rectWidth, rectHeight-button1Height);
  textFont(constantia);
   fill(white);
}
void buttonText2(){
textAlign (CENTER, CENTER);
  textFont(constantia, 25);
   fill(green);
  text(endText, button2X, button2Y, button1Width, button1Height);
  textFont(constantia);
   fill(white);
 }

 //End Text Subprogram
 
