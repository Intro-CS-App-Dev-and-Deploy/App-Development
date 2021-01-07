//Gloabal Variables

void setup () {
  size(500, 600);
  //Using WIDTH and HEIGHT Key Varaibles, communciaiton to the display Geometry
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  //
  quitButtonSetup();
  musicPlayerGUI_Setup();
}

void draw() {
  quitButtonDraw();
}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerButtons();
}
