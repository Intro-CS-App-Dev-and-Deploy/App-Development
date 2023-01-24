float startButtonX, startButtonY, button1Width, button1Height;
float restartButtonX, restartButtonY, nightModeButtonX, nightModeButtonY, button3X, button3Y, nextButtonWidth, nextButtonHeight ;
float button9X, button9Y, button8X, button8Y, button7X,button7Y, button4X, button4Y, button1X, button1Y, button2X, button2Y;
float button6X, button6Y;
color black=#000000, gray=#ADADAD, salad=#E7FAB1;
void startButton() {
  rect(startButtonX, startButtonY, button1Width, button1Height);
  if ( mouseX>=startButtonX && mouseX<=startButtonX+button1Width && mouseY>=startButtonY && mouseY<=startButtonY+button1Height) {
     fill(salad);
    rect(startButtonX, startButtonY, button1Width, button1Height);
    startButtonText();
  } else {
    stroke(gray);
    fill(white);
    rect(startButtonX, startButtonY, button1Width, button1Height);
    stroke(black);
    startButtonText();
  }
  fill(white);
}
////////////////////////////////////
void restartButton() { 
  rect(restartButtonX, restartButtonY, button1Width, button1Height);
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+button1Width && mouseY>=restartButtonY && mouseY<=restartButtonY+button1Height) {
    fill(salad);
    rect(restartButtonX, restartButtonY, button1Width, button1Height);
    restartButtonText();
  } else {
    stroke(gray);
    fill(white);
    rect(restartButtonX, restartButtonY, button1Width, button1Height);
    stroke(black);
    restartButtonText();
  }
  fill(white);
}
void nightModeButton() {
  rect(nightModeButtonX, nightModeButtonY, button1Width, button1Height);
  if ( mouseX>=nightModeButtonX && mouseX<=nightModeButtonX+button1Width && mouseY>=nightModeButtonY && mouseY<=nightModeButtonY+button1Height) {
     fill(salad);
    rect(nightModeButtonX, nightModeButtonY, button1Width, button1Height);
   nightModeButtonText();
  } else {
    stroke(gray);
    fill(white);
    rect(nightModeButtonX, nightModeButtonY, button1Width, button1Height);
    stroke(black);
    nightModeButtonText ();
  }
  fill(white);
}
///////////////////////////////////////////////////////////////////////////////////
void button3() {
  rect(button3X, button3Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button3X && mouseX<=button3X+button1Width && mouseY>=button3Y && mouseY<=button3Y+button1Height) {
    fill(salad);
    rect(button3X, button3Y, nextButtonWidth, nextButtonHeight);
    buttonText3();
  } else {
    stroke(gray);
    fill(white);
    rect(button3X, button3Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText3();
  }
  fill(white);
}
void button6() {
  rect(button6X, button6Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button6X && mouseX<=button6X+button1Width && mouseY>=button6Y && mouseY<=button6Y+button1Height) {
    fill(salad);
    rect(button6X, button6Y, nextButtonWidth, nextButtonHeight);
    buttonText6();
  } else {
    stroke(gray);
    fill(white);
    rect(button6X, button6Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText6();
  }
  fill(white);
}
void button9() {
  rect(button9X, button9Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button9X && mouseX<=button9X+button1Width && mouseY>=button9Y && mouseY<=button9Y+button1Height) {
    fill(salad);
    rect(button9X, button9Y, nextButtonWidth, nextButtonHeight);
    buttonText9();
  } else {
    stroke(gray);
    fill(white);
    rect(button9X, button9Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText9();
  }
  fill(white);
}
void button8() {
  rect(button8X, button8Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button8X && mouseX<=button8X+button1Width && mouseY>=button8Y && mouseY<=button8Y+button1Height) {
    fill(salad);
    rect(button8X, button8Y, nextButtonWidth, nextButtonHeight);
    buttonText8();
  } else {
    stroke(gray);
    fill(white);
    rect(button8X, button8Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText8();
  }
  fill(white);
}

void button7() {
  rect(button7X, button7Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button7X && mouseX<=button7X+button1Width && mouseY>=button7Y && mouseY<=button7Y+button1Height) {
    fill(salad);
    rect(button7X, button7Y, nextButtonWidth, nextButtonHeight);
    buttonText7();
  } else {
    stroke(gray);
    fill(white);
    rect(button7X, button7Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText7();
  }
  fill(white);
}
  void button4() {
  rect(button4X, button4Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button4X && mouseX<=button4X+button1Width && mouseY>=button4Y && mouseY<=button4Y+button1Height) {
    fill(salad);
    rect(button4X, button4Y, nextButtonWidth, nextButtonHeight);
    buttonText4();
  } else {
    stroke(gray);
    fill(white);
    rect(button4X, button4Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText4();
  }
  fill(white);}
  
   void button1() {
  rect(button1X, button1Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button1X && mouseX<=button1X+button1Width && mouseY>=button1Y && mouseY<=button1Y+button1Height) {
    fill(salad);
    rect(button1X, button1Y, nextButtonWidth, nextButtonHeight);
    buttonText1();
  } else {
    stroke(gray);
    fill(white);
    rect(button1X, button1Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText1();
  }
  fill(white);} 
  void button2() {
  rect(button2X, button2Y, nextButtonWidth, nextButtonHeight);
  if ( mouseX>=button2X && mouseX<=button2X+button1Width && mouseY>=button2Y && mouseY<=button2Y+button1Height) {
    fill(salad);
    rect(button2X, button2Y, nextButtonWidth, nextButtonHeight);
    buttonText1();
  } else {
    stroke(gray);
    fill(white);
    rect(button2X, button2Y, nextButtonWidth, nextButtonHeight);
    stroke(black);
  buttonText2();
  }
  fill(white);}
