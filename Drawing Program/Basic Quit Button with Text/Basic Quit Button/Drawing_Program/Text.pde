/* Example Subprogram
 Purpose: to reuse code by passing parameters to voids (void does not return)
 Reason: simplifies code, no more copying and pasting code to reuse
 Reminder: design of parameters are important, here string and size are passed only
 */

//Global Variables
//Font Type
//Initial Size
//Black Int

void textSetup() {}//End textSetup()

//Code to be repeated instead of copied and pasted
void textCode() {
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
