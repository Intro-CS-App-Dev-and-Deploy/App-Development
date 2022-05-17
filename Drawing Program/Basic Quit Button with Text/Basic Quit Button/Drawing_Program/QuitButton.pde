/* Example Subprogram
 Purpose: to code entire object in one place
 Reason: makes code for this object easier to read, reference, and change
 Reminder: each function must be referenced in the main program
 */

//Global Variables
String quitButton = "X";
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color quitButtonColour, red=#FF0303, black=#000000;
int reset=1;

void quitButtonSetup()
{
  quitButtonX = width*18/20; // 18/20=9/10
  quitButtonY = height*0;
  quitButtonWidth = width*1/10; // 2/20=1/10
  quitButtonHeight = height*1/20; 
}//End quitButtonSetup()

void quitButtonDraw()
{
  //Quit Button Hover Over
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) {
    quitButtonColour = red;
  } else {
    quitButtonColour = black;
  }//End Quit Button Hover Over
  fill(quitButtonColour); //remember to reset to White (not night mode friendly)
  noStroke(); //removes rect() outline
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
}//End quitButtonDraw()

void quitButtonMousePressed()
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
  //
}//End quitBuittonMousePressed()
