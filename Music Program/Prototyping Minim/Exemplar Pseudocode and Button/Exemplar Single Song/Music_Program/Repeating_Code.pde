void repeatingCode(AudioMetaData songMD) {
  //Functions cannot yet be passed as parameters
  //
  if(songMD.title() == null) {
    println( "Title:", songMD.title() );
  } else {
    println ("Title: ", "null");
  }
  //
  if(songMD.author() == null) {
    println( "Author: ", songMD.author() );
  } else {
    println ("Author:", "null");
  }
  //
  if(songMD.composer() == null) {
    println( "Composer: ", songMD.composer() );
  } else {
    println ("Composer:", "null");
  }
  //
  if(songMD.orchestra() == null) {
    println( "Orchestra: ", songMD.orchestra() );
  } else {
    println ("Orchestra:", "null");
  }
  //
  if(songMD.album() == null) {
    println( "Album: ", songMD.album() );
  } else {
    println ("Album:", "null");
  }
  //
  if(songMD.disc() == null) {
    println( "Disk: ", songMD.disc() );
  } else {
    println ("Disk:", "null");
  }
  //
  if(songMD.publisher() == null) {
    println( "Publisher: ", songMD.publisher() );
  } else {
    println ("Publisher:", "null");
  }
  //
  if(songMD.date() == null) {
    println( "Date Release:", songMD.date() );
  } else {
    println ("Date Release: ", "null");
  }
  //
  if(songMD.copyright() == null) {
    println( "Copyright:", songMD.copyright() );
  } else {
    println ("Copyright: ", "null");
  }
  //
  if(songMD.comment() == null) {
    println( "Comment:", songMD.comment() );
  } else {
    println ("Comment: ", "null");
  }
  //
  if(songMD.lyrics() == null) {
    println( "Lyrics:", songMD.lyrics() );
  } else {
    println ("Lyrics: ", "null");
  }
  //
  if(songMD.track() == null) {
    println( "Track:", songMD.track() );
  } else {
    println ("Track: ", "null");
  }
  //
  if(songMD.genre() == null) {
    println( "Genre:", songMD.genre() );
  } else {
    println ("Genre: ", "null");
  }
  //
  if(songMD.encoded() == null) {
    println( "Encoded:", songMD.encoded() );
  } else {
    println ("Encoded:", "null");
  }
}
