void tpButDraw () {
  if(mouseX>=tpbx && mouseX<=tpbx+mbw && mouseY>=tpby && mouseY<=tpby+mbh) {
    noStroke();
    tpColor = blue;
    fill (tpColor);
    rect(tpbx, tpby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    tpColor = gray;
    fill (tpColor);
    rect(tpbx, tpby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(tptxt, 10, tpbx, tpby, mbw, mbh);
  
  
  
  if (templButtonON == true) {
  noStroke();
      rect(tpmx, tpmy, sideMenuW , sideMenuH);
      
  

      rect(exMandelaX, exY, exW, exH); 
      image(mandela, exMandelaX, exY, exW, exH);

      fill(Lgrey);
      rect(exFlowerX, exY, exW, exH); 
      image(flower, exFlowerX, exY, exW, exH);
      fill(white);

      rect(exDragonX, exY, exW, exH);
      image(dragon, exDragonX, exY, exW, exH);

      
      
 fill(white);     
 stroke(reset); 
 }
 
 if (templButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
      rect(tpmx, tpmy, sideMenuW , sideMenuH);
      fill(white);
      stroke(reset);
 }
 } 
 
  //===================================================================
void tpMP () {
  mandelaMP();
  flowerMP();
  dragonMP();

  if (mouseX>tpbx && mouseX<tpbx+mbw && mouseY>tpby && mouseY<tpby+mbh) {
    if (templButtonON == false) {
      templButtonON = true;
      templButtonRESET = false;
    } else {
      templButtonON = false;
      templButtonRESET = true;
    }
}

}

void mandelaMP () {
  if (templButtonON == true && mouseX>exMandelaX && mouseX<exMandelaX+exW && mouseY>exY && mouseY<exY+exH) {
   image(mandela, dsx, dsy, dsw, dsh);
  }
}
  
void flowerMP () {
  if (templButtonON == true && mouseX>exFlowerX && mouseX<exFlowerX+exW && mouseY>exY && mouseY<exY+exH) {
   image(flower, dsx, dsy, dsw, dsh);
  }
}
  
void dragonMP () {
 if (templButtonON == true && mouseX>exDragonX && mouseX<exDragonX+exW && mouseY>exY && mouseY<exY+exH) {
  image(dragon, dsx, dsy, dsw, dsh);
  }
}
  
  
