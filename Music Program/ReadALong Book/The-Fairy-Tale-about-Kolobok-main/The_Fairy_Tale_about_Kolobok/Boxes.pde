String start= "Start";
String quit= "Quit";
String restart= "Restart";
color yellow=#FFDF6A;
void box5() {
  image(backgroundImage5, pt6X, pt6Y, rectWidth, rectHeight);
   box5Text();
  startButton();
  restartButton();
  nightModeButton();
 box5Text();
//
  line(pt6X, pt6Y, pt7X, pt7Y); //because the pic overlaps the border
  line(pt6X, pt6Y, pt10X, pt10Y);
  line(pt10X, pt10Y, pt11X, pt11Y); //the button overlaps the lines too
}
void box3() {
 if (box3 == true) {
    image(backgroundImage3, pt3X, pt3Y, rectWidth, rectHeight);
    line(pt3X, pt3Y, pt4X, pt4Y);
    line(pt3X, pt3Y, pt7X, pt7Y);  
    line(pt7X, pt7Y, pt8X, pt8Y);
   box3Text();
   button3();
    tint(256, 256, 256, 256);
   image(audio, pt7X, audio3Y, audioWidth, audioHeight);
  }
   if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
}
void box6() {
  if (box6 == true) {
    image(backgroundImage3, pt7X, pt7Y, rectWidth, rectHeight);
    line(pt7X, pt7Y, pt11X, pt11Y);
   line(pt11X, pt11Y, pt12X, pt12Y);
    tint(256, 256, 256, 256);
   image(kolobok, kolobok6X, kolobok6Y, rectWidth, rectHeight );
  button6();
  }
   if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
}
   void box9() {
 if (box9 == true) {
    image(backgroundImage9, pt11X, pt11Y, rectWidth, rectHeight);
    line(pt11X, pt11Y, pt12X, pt12Y);
    line(pt11X, pt11Y, pt15X, pt15Y);  
    line(pt15X, pt15Y, pt16X, pt16Y);
    box9Text();
    button9();
    tint(256, 256, 256, 256);
    image(audio, pt15X, audio9Y, audioWidth, audioHeight);
  }
   if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
   }
void box8() {
 if (box8 == true) {
    image(backgroundImage9, pt10X, pt10Y, rectWidth, rectHeight);
    line(pt10X, pt10Y, pt11X, pt11Y);
    line(pt10X, pt10Y, pt14X, pt14Y);  
    line(pt11X, pt11Y, pt15X, pt15Y);
    button8();
        tint(256, 256, 256, 256);
    image(kolobok, kolobok8X, kolobok8Y, rectWidth, rectHeight );
    image(rabbit, rabbitX, rabbitY, rectWidth*1/2, rectHeight*1/2 );
    image(music, kolobok8X+rectWidth*1/2, kolobok8Y+rectHeight*1/5, rectWidth*1/3, rectHeight*1/3 );
  }
  if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
}
void box7() {
 if (box7 == true) {
    image(backgroundImage7, pt9X, pt9Y, rectWidth, rectHeight);
    line(pt9X, pt9Y, pt10X, pt10Y);
    line(pt10X, pt10Y, pt14X, pt14Y);  
    button7();
        tint(256, 256, 256, 256);
    image(kolobok, kolobok7X, kolobok7Y, rectWidth, rectHeight );
     image(wolf, wolfX, wolfY, rectWidth*1/3, rectHeight*1/3 );
    image(bear, bearX,bearY, rectWidth*1/3, rectHeight*1/2 );
    image(music, kolobok7X+rectWidth*1/2, kolobok7Y+rectHeight*1/5, rectWidth*1/3, rectHeight*1/3 );
  }
  if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
}
 void box4() {
 if (box4 == true) {
    image(backgroundImage7, pt5X, pt5Y, rectWidth, rectHeight);
    line(pt5X, pt5Y, pt6X, pt6Y);
    line(pt6X, pt6Y, pt10X, pt10Y);  
    line(pt9X, pt9Y, pt10X, pt10Y);
    box4Text();
    button4();
      tint(256, 256, 256, 256);
    image(audio, pt9X, audio4Y, audioWidth, audioHeight);
  }
   if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);}
  }

void box1() {
 if (box1 == true) {
    image(backgroundImage1, pt1X, pt1Y, rectWidth, rectHeight);
    box1Text();
        tint(256, 256, 256, 256);
    image(pic1, kolobok1X, kolobok1Y+rectHeight*1/2 , rectWidth, rectHeight*1/2 );
    image(music, kolobok1X+rectWidth*1/4, kolobok1Y+rectHeight*1/2, rectWidth*1/4, rectHeight*1/4 );
     line(pt5X, pt5Y, pt6X, pt6Y);
    line(pt2X, pt2Y, pt6X, pt6Y);  
        button1();
     image(audio, pt5X, audio1Y, audioWidth, audioHeight);
  }
  if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);};
}
void box2() {
 if (box2 == true) {
    image(backgroundImage1, pt2X, pt2Y, rectWidth, rectHeight);
    line(pt6X, pt6Y, pt7X, pt7Y);
    line(pt2X, pt2Y, pt6X, pt6Y);  
    line(pt3X, pt3Y, pt7X, pt7Y);  
    box2Text();
    button2();
    tint(256, 256, 256, 256);
    image(audio, pt6X, audio2Y, audioWidth, audioHeight);
  }
   if ( nightMode==true ) {
   tint(110, 110, 89, 180); }else { tint(tintRed, tintGreen, tintBlue, tintModeOpacity);}
}
