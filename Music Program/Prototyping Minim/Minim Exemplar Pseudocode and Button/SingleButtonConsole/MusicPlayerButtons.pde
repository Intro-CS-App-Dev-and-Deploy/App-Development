Boolean playButton = false;

void musicPlayerButtons() {
  //Power Button, See TAB: Power Button

  //Play-Pause
  if (mouseX>width*7/16 && mouseX<width*9/16 && mouseY>height*7/16 && mouseY<height*9/16) {
    if (playButton == true) {
      playButton = false;
    } else {
      playButton = true;
    }
    println(playButton);
  }
 
  
    //Next
    //Previous
    //Volume Up
    //Volume Down
    //Media
}
