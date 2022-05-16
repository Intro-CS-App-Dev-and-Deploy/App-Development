 //rect (cbx, cby, sbw, sbh);

void coButDraw () {
  if(mouseX>=cbx && mouseX<=cbx+mbw && mouseY>=cby && mouseY<=cby+mbh) {
    noStroke();
    cbColor = blue;
    fill (cbColor);
    rect(cbx, cby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    cbColor = gray;
    fill (cbColor);
    rect(cbx, cby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(cbtxt, 10, cbx, cby, mbw, mbh);
  
    if (colorButtonON == true) {
  noStroke();
      rect(cbmx, cbmy, sideMenuW , sideMenuH);
      
      fill(red);
      rect(redX, redY, colorW, colorH);
      
      fill(orange);
      rect(orangeX, orangeY, colorW, colorH);
      
      fill(yellow);
      rect(yellowX, yellowY, colorW, colorH);
      
      fill(Lgreen);
      rect(LgreenX, LgreenY, colorW, colorH);
      
      fill(Dgreen);
      rect(DgreenX, DgreenY, colorW, colorH);
      
      fill(Dblue);
      rect(DblueX, DblueY, colorW, colorH);
      
      fill(blue);
      rect(LblueX, LblueY, colorW, colorH);
      
      fill(Lpurple);
      rect(LpurpleX, LpurpleY, colorW, colorH);
      
      fill(white);
      rect(whiteX, whiteY, colorW, colorH);
      
      fill(pink);
      rect(pinkX, pinkY, colorW, colorH);
      
      fill(grey);
      rect(greyX, greyY, colorW, colorH);
      
      fill(black);
      rect(blackX, blackY, colorW, colorH);
      
      fill(white);
      rect(eraserX, eraserY, eraserW, eraserH); 
      textCode(erasertxt, 14, eraserX, eraserY, eraserW, eraserH);
      

      
      
 stroke(reset); }
 
 if (colorButtonRESET == true) {
   noStroke();
   menuColor = gray;
   
   fill(menuColor);
      rect(cbmx, cbmy, sideMenuW , sideMenuH);
      
      fill(white);
      stroke(reset);
 }
 
} //===================================================================
void cbMP () {
   redMP();
  orangeMP();
  yellowMP();
  LgreenMP();
  DgreenMP();
  LblueMP();
  DblueMP();
  LpurpleMP();
  whiteMP();
  pinkMP();
  greyMP();
  blackMP();
  eraserMP();
  
  if (mouseX>cbx && mouseX<cbx+mbw && mouseY>cby && mouseY<cby+mbh) {
    if (colorButtonON == false) {
      colorButtonON = true;
      colorButtonRESET = false;
    } else {
      colorButtonON = false;
      colorButtonRESET = true;
    }
}
}

void redMP () {
  if (colorButtonON == true && mouseX>redX && mouseX<redX+colorW && mouseY>redY && mouseY<redY+colorH)
     drawColor = red;
}

void orangeMP () {
  if (colorButtonON == true && mouseX>orangeX && mouseX<orangeX+colorW && mouseY>orangeY && mouseY<orangeY+colorH)
     drawColor = orange;
}

void yellowMP () {
  if (colorButtonON == true && mouseX>yellowX && mouseX<yellowX+colorW && mouseY>yellowY && mouseY<yellowY+colorH)
     drawColor = yellow;
}

void LgreenMP () {
  if (colorButtonON == true && mouseX>LgreenX && mouseX<LgreenX+colorW && mouseY>LgreenY && mouseY<LgreenY+colorH)
     drawColor = Lgreen;
}

void DgreenMP () {
  if (colorButtonON == true && mouseX>DgreenX && mouseX<DgreenX+colorW && mouseY>DgreenY && mouseY<DgreenY+colorH)
     drawColor = Dgreen;
}

void DblueMP () {
  if (colorButtonON == true && mouseX>DblueX && mouseX<DblueX+colorW && mouseY>DblueY && mouseY<DblueY+colorH)
     drawColor = Dblue;
}

void LblueMP () {
  if (colorButtonON == true && mouseX>LblueX && mouseX<LblueX+colorW && mouseY>LblueY && mouseY<LblueY+colorH)
     drawColor = blue;
}

void LpurpleMP () {
  if (colorButtonON == true && mouseX>LpurpleX && mouseX<LpurpleX+colorW && mouseY>LpurpleY && mouseY<LpurpleY+colorH)
     drawColor = Lpurple;
}

void whiteMP () {
  if (colorButtonON == true && mouseX>whiteX && mouseX<whiteX+colorW && mouseY>whiteY && mouseY<whiteY+colorH)
     drawColor = white;
}

void pinkMP () {
  if (colorButtonON == true && mouseX>pinkX && mouseX<pinkX+colorW && mouseY>pinkY && mouseY<pinkY+colorH)
     drawColor = pink;
}

void greyMP () {
  if (colorButtonON == true && mouseX>greyX && mouseX<greyX+colorW && mouseY>greyY && mouseY<greyY+colorH)
     drawColor = grey;
}

void blackMP () {
  if (colorButtonON == true && mouseX>blackX && mouseX<blackX+colorW && mouseY>blackY && mouseY<blackY+colorH)
     drawColor = black;
}

void eraserMP () {
  if (colorButtonON == true && mouseX>eraserX && mouseX<eraserX+eraserW && mouseY>eraserY && mouseY<eraserY+eraserH)
     drawColor = BGcolor;
}
