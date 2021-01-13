void musicSongs() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  song1 = minim.loadFile("../../FreeWare Music/MusicDownload/groove.mp3");
  println("Music Loaded");
}
