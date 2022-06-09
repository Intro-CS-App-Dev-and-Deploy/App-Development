/* Example Subprogram Directly from the Drawing Program
 Purpose: to reuse code by passing parameters to voids (void does not return)
 Reason: simplifies code, no more copying and pasting code to reuse
 Reminder: design of parameters are important, here string and size are passed only
 Reminder: only one color, only one font type
 */

//Global Variables
PFont font; //Font Type
int initialSize = 55; //Initial Size
//Black Ink, see QuitButton Global Variables
color white=#FFFFFF, black=#000000; //reset INK

void textSetup() {
  //println("Start of Console");
  /*Fonts from OS
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  font = createFont ("Harrington", initialSize); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //Layout with a rect(); Variables copied to text();
  //rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}//End textSetup()

//Code to be repeated instead of copied and pasted
void textCode(String string, int size, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, size); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(white); //reset
}//End textCode()

/* Code from Text-Lesson to copy above
 println("Start of Console");
 //Fonts from OS
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 titleFont = createFont ("Harrington", 55); //Verify font exists
 //Tools / Create Font / Find Font / Do Not Press "OK", known bug
 //Layout with a rect()
 fill(purpleInk); //Ink, hexidecimal copied from Color Selector
 textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
 //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
 textFont(titleFont, 50); //Change the number until it fits, largest font size
 //textFont() has option to combine font declaration with textSize()
 //Drawing Text
 text(title, titleX, titleY, titleWidth, titleHeight);
 fill(whiteInk); //reset
 */
