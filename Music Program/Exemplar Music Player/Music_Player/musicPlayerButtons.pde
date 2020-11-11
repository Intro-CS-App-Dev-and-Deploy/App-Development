boolean playButton = false;

void  musicPlayerButtons() {
  //power button, see tab "Power button"
  //play-pause
  if (mouseX>207 && mouseX<296 &&   mouseY>267 && mouseY<329 ) {
    if (playButton == true) {
      playButton = false;
    } else{
      playButton = true;
    }
    println(playButton);
    
  }
  //next
  //previous
  //volume up
  //volumedown
}
