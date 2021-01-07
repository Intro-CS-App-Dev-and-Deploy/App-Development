//Gloabal Variables
color white = #FFFFFF;

void setup () {
  size(500, 600);
  //Using WIDTH and HEIGHT Key Varaibles, communciaiton to the display Geometry
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  //
  quitButtonSetup();
}

void draw() {
  background(white); 
  musicPlayerGUI_Setup();
  quitButtonDraw();
}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerButtons();
}
