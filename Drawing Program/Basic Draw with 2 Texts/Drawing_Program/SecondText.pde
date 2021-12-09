//Global Variables
String secondText = "Wahoo!";
float secondX, secondY, secondWidth, secondHeight;

void secondText() {
  secondX = width*1/4;
  secondY = height*1/4;
  secondWidth = width*1/4;
  secondHeight = height*1/10;
  rect(secondX, secondY, secondWidth, secondHeight);
  textCode(secondText, 35, secondX, secondY, secondWidth, secondHeight);
}//End secondText()
