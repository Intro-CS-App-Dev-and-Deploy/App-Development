color white=#FFFFFF;
int backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float quitX, quitY, quitWidth, quitHeight;
float quitButtonImageRectX, quitButtonImageRectY, quitButtonImageRectWidth, quitButtonImageRectHeight;
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y, pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y, pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float kolobok6X, kolobok6Y, kolobok8X, kolobok8Y, rabbitX, rabbitY, audioWidth, audioHeight, audio3Y,audio9Y,audio4Y,audio1Y,audio2Y;
float kolobok7X, kolobok7Y, bearX, bearY, wolfX, wolfY, kolobok1X ,kolobok1Y;
int tintDayMode=255, tintDayModeOpacity=50;
int tintRed=255, tintGreen=255, tintBlue=255, tintModeOpacity=140;
/* Home Screen Expectations
 - Background image using tint()
 - 9 evenly spaced rectangles, Assignment #3
 - Quit Button and Reset Button (Splash Screen Start Button)
 - In each: image, text, 2D Shape, Button
 - Narrative through the 9 rectangles
 - See Case Study
 - Note: must have one image with aspect ratio
 */
void homeScreen() {
  println ( "Arrived At HomeScreen");
  //Rectangles
  rect(pt1X, pt1Y, rectWidth, rectHeight);
  rect(pt2X, pt2Y, rectWidth, rectHeight);
  rect(pt3X, pt3Y, rectWidth, rectHeight);
  rect(pt5X, pt5Y, rectWidth, rectHeight);
  rect(pt6X, pt6Y, rectWidth, rectHeight);
  rect(pt7X, pt7Y, rectWidth, rectHeight);
  rect(pt9X, pt9Y, rectWidth, rectHeight);
  rect(pt10X, pt10Y, rectWidth, rectHeight);
  rect(pt11X, pt11Y, rectWidth, rectHeight);
  fill(white);
  //Boxes
  if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
    box5(); 
    box3();
    box6();
    box9();
     box8();
     box7();
     box4();
     box1();
     box2();
    //quitButtonHoverOver();
  }//End HomeScreen
  //
  void backgroundWhiteScreen() {
    fill(white);
    noStroke();
    rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
    strokeWeight(1);//Reset
    fill(1);//Reset
  }//End BackgroundWhiteScreen
  void backgroundImage () {
    backgroundWhiteScreen();
    tint(tintRed, tintGreen, tintBlue, tintModeOpacity);//Night Mode, see ternary Operator
    image(backgroundImage, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  }//End backgroundImage
  //End HomeScreen SubProgram
