
Counting Files in a Directory
- does it work in the relative directory?
- relative to abstract to absolute?


Important Code
- See https://forum.processing.org/one/topic/counting-how-many-files-are-in-a-folder.html
- Accessed 20230118

import java.io.*;
import java.lang.*;

File file;
file = new File(dataPath(""));
String[] listPath = file.list();

println("the directory contains "+listPath.length+" elements.");
println(listPath);

//Alternate as Exported, similar to Android
//File path = new File("..\\..\\..\\..\\Musicxs");
//file = new File(dataPath("../../../../Musicxs/.mp3"));
//String Absolute = Path.getPath();
String Path = new File("").getAbsolutePath();
Path.concat("Path to the Folder");
System.out.println("This"+Path);
//this.getClass().getClassLoader().getResource("..\\Final-Project\\Musicxs");
File folder = new File("D:/Documents/GitHub/Final-Project/Musicxs" /*Absolute*/  );
//System.out.println(Path.getPath());
//System.out.println(Absolute);
//
//IF ELSEIF ELSE for various pathways
//
