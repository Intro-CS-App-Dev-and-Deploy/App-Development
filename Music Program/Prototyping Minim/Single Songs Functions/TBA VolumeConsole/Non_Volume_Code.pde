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
  if (key == 'p' || key == 'P') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
}//End playKey
