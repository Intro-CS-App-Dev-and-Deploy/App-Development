//rect (sbx, sby, sbw, sbh);

void stButDraw () {
  if(mouseX>=sbx && mouseX<=sbx+mbw && mouseY>=sby && mouseY<=sby+mbh) {
    noStroke();
    sbColor = blue;
    fill (sbColor);
    rect(sbx, sby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    sbColor = gray;
    fill (sbColor);
    rect(sbx, sby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(sbtxt, 10, sbx, sby, mbw, mbh);
  
  if (strokeButtonON == true) {
  noStroke();
  fill(white);
    rect(sbmx, sbmy, sideMenuW , sideMenuH);
    
    rect(thinX, thinY, strSelW, strSelH);
    textCode(thintxt, 16, thinX, thinY, strSelW, strSelH); 

    fill(Lgrey);
    rect(medX, medY, strSelW, strSelH);
    textCode(medtxt, 16, medX, medY, strSelW, strSelH);

    fill(white);
    rect(thickX, thickY, strSelW, strSelH);
    textCode(thicktxt, 16, thickX, thickY, strSelW, strSelH);
    
    
 stroke(reset); }
 
 if (strokeButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
       rect(sbmx, sbmy, sideMenuW , sideMenuH);
      fill(white);
      stroke(reset);
 }
 
} //===================================================================
void sbMP () {
  thinMP();
  medMP();
  thickMP();
  
  if (mouseX>sbx && mouseX<sbx+mbw && mouseY>sby && mouseY<sby+mbh) {
    if (strokeButtonON == false) {
      strokeButtonON = true;
      strokeButtonRESET = false;
    } else {
      strokeButtonON = false;
      strokeButtonRESET = true;
    }
}

}

 void thinMP() {
   if(strokeButtonON == true && mouseX>thinX && mouseX<thinX+strSelW && mouseY>thinY && mouseY<thinY+strSelH)
   drawStroke = 1;
   
 }
 
  void medMP() {
   if(strokeButtonON == true && mouseX>medX && mouseX<medX+strSelW && mouseY>medY && mouseY<medY+strSelH)
   drawStroke = 5;
   
 }
 
   void thickMP() {
   if(strokeButtonON == true && mouseX>thickX && mouseX<thickX+strSelW && mouseY>thickY && mouseY<thickY+strSelH)
   drawStroke = 9;
   
 }
