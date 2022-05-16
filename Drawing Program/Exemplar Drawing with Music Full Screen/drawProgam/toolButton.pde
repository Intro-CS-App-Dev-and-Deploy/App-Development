 //rect (tbx, tby, sbw, sbh);

void tbButDraw () {
  if(mouseX>=tbx && mouseX<=tbx+mbw && mouseY>=tby && mouseY<=tby+mbh) {
    noStroke();
    tbColor = blue;
    fill (tbColor);
    rect(tbx, tby, mbw, mbh);
    fill (white);
    stroke(reset);
   
    
  } else {
    noStroke();
    tbColor = gray;
    fill (tbColor);
    rect(tbx, tby, mbw, mbh);
    fill (white);
    stroke(reset);
  }
  
  textCode(tbtxt, 10, tbx, tby, mbw, mbh);
  
  
  
  if (toolButtonON == true) {
  noStroke();
      rect(tbmx, tbmy, sideMenuW , sideMenuH);
      
      rect(tlineX, tlineY, toSelW, toSelH); 
      fill(black);
      ellipse(exlineX, exlineY, exlineD, exlineD);
      
      fill(Lgrey);
      rect(tcircleX, tcircleY, toSelW, toSelH); 
      fill(black);
      ellipse(excircleX, excircleY, dd, dd);
      
      fill(white);
      rect(tsquareX, tsquareY, toSelW, toSelH); 
      fill(black);
      rect(exsquareX, exsquareY, dd, dd);
      
      fill(Lgrey);
      rect(ttriX, ttriY, toSelW, toSelH); 
      fill(black);
      triangle(extriX1, extriY1, extriX2, extriY2, extriX3, extriY3);
      
 fill(white);     
 stroke(reset); }
 
 if (toolButtonRESET == true) {
   noStroke();
   menuColor = gray;
   fill(menuColor);
      rect(tbmx, tbmy, sideMenuW , sideMenuH);
      fill(white);
      stroke(reset);
 }
 
 if (draw == true && isLine == true && mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    stroke(drawColor);
    strokeWeight(drawStroke);
    line(mouseX, mouseY, pmouseX, pmouseY);
    stroke(black);
    stroke(reset);
 }
 
  if (draw == true && isCircle == true && mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    noStroke();
    fill(drawColor);
    ellipse(mouseX, mouseY, dd, dd);
    fill(white);
    stroke(reset);
 }
 
   if (draw == true && isSquare == true && mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    noStroke();
    fill(drawColor);
    rect(mouseX, mouseY, dd, dd);
    fill(white);
    stroke(reset);
 }
 
   if (draw == true && isTri == true && mouseX>dsx && mouseX<dsx+dsw && mouseY>dsy && mouseY<dsy+dsh) {
    noStroke();
    fill(drawColor);
     triangle(mouseX-20, mouseY+20, mouseX, mouseY-20, mouseX+20, mouseY+20);
    fill(white);
    stroke(reset);
 }
 

 
} //===================================================================

void tbMP () {
  lineMP();
  circleMP();
  squareMP();
  triMP();
  
  if (mouseX>tbx && mouseX<tbx+mbw && mouseY>tby && mouseY<tby+mbh) {
    if (toolButtonON == false) {
      toolButtonON = true;
      toolButtonRESET = false;
    } else {
      toolButtonON = false;
      toolButtonRESET = true;
    }
}


}

void lineMP () {
  if(toolButtonON == true && isLine == false && mouseX>tlineX && mouseX<tlineX+toSelW && mouseY>tlineY && mouseY<tlineY+toSelH) {
    isLine = true;
    isCircle = false;
    isSquare = false;
    isTri = false;
}}

void circleMP () {
  if(toolButtonON == true && isCircle == false && mouseX>tcircleX && mouseX<tcircleX+toSelW && mouseY>tcircleY && mouseY<tcircleY+toSelH) {
    isLine = false;
    isCircle = true;
    isSquare = false;
    isTri = false;
}}

void squareMP () {
  if(toolButtonON == true && isSquare == false && mouseX>tsquareX && mouseX<tsquareX+toSelW && mouseY>tsquareY && mouseY<tsquareY+toSelH) {
    isLine = false;
    isCircle = false;
    isSquare = true;
    isTri = false;
}}

void triMP () {
  if(toolButtonON == true && isTri == false && mouseX>ttriX && mouseX<ttriX+toSelW && mouseY>ttriY && mouseY<ttriY+toSelH) {
    isLine = false;
    isCircle = false;
    isSquare = false;
    isTri = true;
}}
