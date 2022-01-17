void setupFunctions() {
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("groove.mp3"); //able to pass absolute path, file name, and URL
} //End setupFunctions
