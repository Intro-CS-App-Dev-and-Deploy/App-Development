Boolean playButton = false;

void musicPlayerButtons() {
  //Power Button, See TAB: Power Button

  //Play-Pause
  if (mouseX>width*7/16 && mouseX<width*9/16 && mouseY>height*7/16 && mouseY<height*9/16) {
    //Origonal Code from Single Button
    /*
    if (playButton == true) {
     playButton = false;
     } else {
     playButton = true;
     }
     println(playButton);
     */

    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  //Next
  //Previous
  //Volume Up
  //Volume Down
  //Media
}
