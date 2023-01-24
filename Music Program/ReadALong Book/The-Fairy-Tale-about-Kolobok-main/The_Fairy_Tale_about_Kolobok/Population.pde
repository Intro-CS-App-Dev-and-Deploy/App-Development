void population() {
  float centerX=appWidth*1/2, centerY=appHeight*1/2;
  startWidth = appWidth*1/2;
  startHeight = appHeight*1/10;
  startX = centerX - startWidth*1/2;
  startY = centerY - startHeight*1/2;
  //
  backgroundX = appWidth*0;
  backgroundY= appHeight*0;
  backgroundWidth=appWidth;
  backgroundHeight=appHeight;
  //
  //rectangles
  ptDiameter = appHeight*1/40;
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  audioWidth=appWidth*1/24;
  audioHeight=appHeight*1/22;
  //
  //Points
  pt1X = pt5X = pt9X = pt13X = 0;
  pt2X = pt6X = pt10X = pt14X = appWidth*1/3;
  pt3X = pt7X = pt11X = pt15X = appWidth*2/3;
  pt4X = pt8X = pt12X = pt16X = appWidth;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = 0;
  pt5Y = pt6Y = pt7Y = pt8Y = appHeight*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = appHeight*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= appHeight;
  //Buttons
 audio3Y=pt7Y-audioHeight;
 audio9Y=pt15Y-audioHeight;
 audio4Y=pt9Y-audioHeight;
 audio1Y=pt5Y-audioHeight;
 audio2Y=pt6Y-audioHeight;
  //
  startButtonX=pt10X+rectWidth*1/15;
  startButtonY=pt10Y-rectHeight*1/8;
  button1Width=rectWidth*1/4;
  button1Height = rectHeight*1/10;
  restartButtonX=startButtonX+rectWidth*1/3.5;
  restartButtonY=startButtonY;
  nightModeButtonX=restartButtonX+rectWidth*1/3.5;
  nightModeButtonY=restartButtonY;
  nextButtonWidth=button1Width;
  nextButtonHeight=button1Height;
  button3X=pt8X-nextButtonWidth;
  button3Y=pt8Y-nextButtonHeight;
  button6X=pt12X-nextButtonWidth;
  button6Y=pt12Y-nextButtonHeight;
  button9X=pt16X-nextButtonWidth;
  button9Y=pt16Y-nextButtonHeight;
  button8X=pt15X-nextButtonWidth;
  button8Y=pt15Y-nextButtonHeight;
  button7X=pt14X-nextButtonWidth;
  button7Y=pt14Y-nextButtonHeight;
  button4X=pt10X-nextButtonWidth;
  button4Y=pt10Y-nextButtonHeight;
  button1X= pt6X-nextButtonWidth;
  button1Y=pt6Y-nextButtonHeight;
  button2X= pt7X-nextButtonWidth;
  button2Y=pt7Y-nextButtonHeight;
 
 //
 //Kolobok
kolobok6Y=pt7Y+1/5.4*rectHeight;
kolobok6X=pt7X-rectWidth*1/5;
//
kolobok8X=pt10X-rectWidth*1/4;
kolobok8Y=pt10Y+1/5.4*rectHeight;
//rabbit
rabbitX=pt10X+rectWidth*1/1.8;
rabbitY=pt10Y+rectHeight*1/2.7;
 kolobok7X= pt9X-rectWidth*1/4;
 kolobok7Y= pt9Y+1/5.4*rectHeight;
 bearX=pt9X+rectWidth*1/1.8;
 bearY=pt9Y+rectHeight*1/2.3;
 wolfX=pt9X+rectWidth*1/3.7;
 wolfY=pt9Y+rectHeight*1/4;
 kolobok1X= pt1X;
 kolobok1Y= pt1Y;




 
 
 
}//End population
//
//End Population Subprogram
