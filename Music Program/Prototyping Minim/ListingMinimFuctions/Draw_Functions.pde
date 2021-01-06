void drawFunctions() {
  song1.isPlaying(); //returns true or false, needed in IF Statements or other Boolean applications
  //
  song1.length(); // returns total length of song in milliseconds
  song1.position(); // returns current .isPlaying() position of song in milliseconds
  //
  song1.play(); //Parameter is milli-seconds from start of audio file to start playing
  song1.pause();
  song1.rewind();
  //
  //Functions recognized by IDE but not in Minim Library
  song1.stop(); //"Stop" doesn't exist in library, no real documentation or example in minim
} //End drawFunctions
