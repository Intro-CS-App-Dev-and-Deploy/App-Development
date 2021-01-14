//Global Variables
Minim minim;
AudioPlayer song1;

void setup1() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("../../../FreeWare Music/MusicDownload/groove.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press P to Play and Pause");
}//End setup1

void playKey() {
  if (key == 'p' || key == 'P') {//Play-Pause-Rewind Button
    if ( song1.isPlaying() ) {
      song1.pause();
      println("test");
    } else if ( song1.position() == song1.length() ) {
      song1.position();
      song1.rewind();
      song1.play();
      
    } else {
      song1.play();
      
      
    }
  }//End Play-Pause-Rewind Button
  if ( key=='m' || key=='M' ) {//Muted Button
    if ( song1.isMuted() ) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End Muted button
}//End playKey
