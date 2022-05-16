

void backButDraw () {
  if(mouseX>=bbx && mouseX<=bbx+mbw && mouseY>=bby && mouseY<=bby+mbh) {
    noStroke();
    bbcolor = blue;
    fill (bbcolor);
    rect(bbx, bby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    bbcolor = gray;
    fill (bbcolor);
    rect(bbx, bby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(bbtxt, 10, bbx, bby, mbw, mbh);
  
  
  
  if (backButtonON == true) {
  noStroke();
      rect(bbmx, bbmy, sideMenuW , sideMenuH);
      
      fill(red);
      rect(redX, redYB, colorW, colorH);
      
      fill(orange);
      rect(orangeX, orangeYB, colorW, colorH);
      
      fill(yellow);
      rect(yellowX, yellowYB, colorW, colorH);
      
      fill(Lgreen);
      rect(LgreenX, LgreenYB, colorW, colorH);
      
      fill(Dgreen);
      rect(DgreenX, DgreenYB, colorW, colorH);
      
      fill(Dblue);
      rect(DblueX, DblueYB, colorW, colorH);
      
      fill(blue);
      rect(LblueX, LblueYB, colorW, colorH);
      
      fill(Lpurple);
      rect(LpurpleX, LpurpleYB, colorW, colorH);
      
      fill(white);
      rect(whiteX, whiteYB, colorW, colorH);
      
      fill(pink);
      rect(pinkX, pinkYB, colorW, colorH);
      
      fill(grey);
      rect(greyX, greyYB, colorW, colorH);
      
      fill(black);
      rect(blackX, blackYB, colorW, colorH);
      
      fill(white);
      rect(eraserX, randomYB, eraserW, eraserH); 
      textCode(backtxt, 14, eraserX, randomYB, eraserW, eraserH);
      
     
      
 fill(white);     
 stroke(reset); }
 
 if (backButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
      rect(bbmx, bbmy, sideMenuW , sideMenuH);
      fill(white);
      stroke(reset);
 }
 
 
 

 
} //===================================================================

void bbMP () {
redBackMP();
orangeBackMP();
yellowBackMP();
LgreenBackMP();
DgreenBackMP();
LblueBackMP();
DblueBackMP();
LpurpleBackMP();
pinkBackMP();
whiteBackMP();
greyBackMP();
blackBackMP();
randomBackMP();
 
  
  if (mouseX>bbx && mouseX<bbx+mbw && mouseY>bby && mouseY<bby+mbh) {
    if (backButtonON == false) {
      backButtonON = true;
      backButtonRESET = false;
    } else {
      backButtonON = false;
      backButtonRESET = true;
    }
  }
}

void redBackMP () {
  if (backButtonON == true && mouseX>redX && mouseX<redX+colorW && mouseY>redYB && mouseY<redYB+colorH) {
     BGcolor = red;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void orangeBackMP () {
  if (backButtonON == true && mouseX>orangeX && mouseX<orangeX+colorW && mouseY>orangeYB && mouseY<orangeYB+colorH) {
     BGcolor = orange;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void yellowBackMP () {
  if (backButtonON == true && mouseX>yellowX && mouseX<yellowX+colorW && mouseY>yellowYB && mouseY<yellowYB+colorH) {
     BGcolor = yellow;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void LgreenBackMP () {
  if (backButtonON == true && mouseX>LgreenX && mouseX<LgreenX+colorW && mouseY>LgreenYB && mouseY<LgreenYB+colorH) {
     BGcolor = Lgreen;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void DgreenBackMP () {
  if (backButtonON == true && mouseX>DgreenX && mouseX<DgreenX+colorW && mouseY>DgreenYB && mouseY<DgreenYB+colorH) {
     BGcolor = Dgreen;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void DblueBackMP () {
  if (backButtonON == true && mouseX>DblueX && mouseX<DblueX+colorW && mouseY>DblueYB && mouseY<DblueYB+colorH) {
     BGcolor = Dblue;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void LblueBackMP () {
  if (backButtonON == true && mouseX>LblueX && mouseX<LblueX+colorW && mouseY>LblueYB && mouseY<LblueYB+colorH) {
     BGcolor = blue;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
     fill(white);
  }
}

void LpurpleBackMP () {
  if (backButtonON == true && mouseX>LpurpleX && mouseX<LpurpleX+colorW && mouseY>LpurpleYB && mouseY<LpurpleYB+colorH) {
     BGcolor = Lpurple;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void whiteBackMP () {
  if (backButtonON == true && mouseX>whiteX && mouseX<whiteX+colorW && mouseY>whiteYB && mouseY<whiteYB+colorH) {
     BGcolor = white;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void pinkBackMP () {
  if (backButtonON == true && mouseX>pinkX && mouseX<pinkX+colorW && mouseY>pinkYB && mouseY<pinkYB+colorH) {
     BGcolor = pink;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void greyBackMP () {
  if (backButtonON == true && mouseX>greyX && mouseX<greyX+colorW && mouseY>greyYB && mouseY<greyYB+colorH) {
     BGcolor = grey;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void blackBackMP () {
  if (backButtonON == true && mouseX>blackX && mouseX<blackX+colorW && mouseY>blackYB && mouseY<blackYB+colorH) {
     BGcolor = black;
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}

void randomBackMP () {
  if (backButtonON == true && mouseX>eraserX && mouseX<eraserX+eraserW && mouseY>randomYB && mouseY<randomYB+eraserH) {
     BGcolor = color(random(255), random(255), random(255));
     fill(BGcolor);
     rect(dsx, dsy, dsw, dsh);
  }
}
